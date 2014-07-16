data iowawine;
	set Work.Iawine;

winehead = 10*Wine/Popn;
ywine = log(winehead);
ctrlhead = 10*Winesum/Popsum;
ctrl = log(ctrlhead);

if (monthn le 210) then s1 = 0;
	else s1 = 1;

if monthn = 211 then p1 = 1;
	else p1 = 0;
if (monthn =209) then may85=1;
	else may85 = 0;
if (monthn =210) then jun85=1;
	else jun85 = 0;


date = intnx('month', '31dec1967'd, _n_);
	format date monyy.;

run;

proc arima data=iowawine;
	identify var=ywine(1,12) crosscorr = ( may85(1,12) jun85(1,12) p1(1,12) s1(1,12) ctrl(1,12)) nlag=24 noprint;
run;

	estimate  q=(1 2 3 4)(12) input=(s1 ctrl may85 jun85 / (1) p1) noconstant method=ml;
run;

	forecast out = residual lead = 0 id = date interval = month;
run;

data residual;
	set residual;
	square = residual * residual;
	run;

proc arima data = residual;
	identify var = residual;
run;

proc arima data = residual;
	identify var = square;
run;

quit;
