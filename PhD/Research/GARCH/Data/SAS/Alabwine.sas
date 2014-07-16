data alabwine;
	set Work.Alwine;

winehead = Wine/Popn;
ywine = log(winehead);
ctrlhead = Winesum/Popsum;
ctrl = log(ctrlhead);

if (monthn le 72) then s1 = 0;
	else s1 = 1;

if (monthn le 153) then s2 = 0;
	else s2 = 1;

if monthn = 154 then p2 = 1;
	else p2 = 0;

date = intnx('month', '31dec1967'd, _n_);
	format date monyy.;

run;

proc arima data=alabwine;
	identify var=ywine(1,12) crosscorr = (p2(1,12) s1(1,12) s2(1,12) ctrl(1,12)) nlag=24 noprint;
run;

	estimate q=(1)(12) input=(s1 s2 ctrl / p2) noconstant method=ml;
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





