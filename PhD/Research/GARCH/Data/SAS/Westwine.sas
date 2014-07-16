data westwine;
	set Work.Wvwine;

winehead = Wine/Popn;
ywine = log(winehead);
ctrlhead = Winesum/Popsum;
ctrl = log(ctrlhead);

if (monthn le 162) then s1 = 0;
	else s1 = 1;

if monthn = 163 then p1 = 1;
	else p1 = 0;

date = intnx('month', '31dec1967'd, _n_);
	format date monyy.;

run;

proc arima data=westwine;
	identify var=ywine(1,12) crosscorr = (p1(1,12) s1(1,12) ctrl(1,12)) nlag=24 noprint;
run;

	estimate q=(1,2,3)(12) input=(1$s1 ctrl p1 1$ / (1) p1) noconstant method=ml;
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
