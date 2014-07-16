data idahwine;
	set Work.Idwine;

winehead = 10*Wine/Popn;
ywine = log(winehead);
ctrlhead = 10*Winesum/Popsum;
ctrl = log(ctrlhead);

if (monthn le 41) then s1 = 0;
	else s1 = 1;

if monthn = 42 then p1 = 1;
	else p1 = 0;

date = intnx('month', '31dec1967'd, _n_);
	format date monyy.;

run;

proc arima data=idahwine;
	identify var=ywine(12) crosscorr = (p1(12) s1(12) ctrl(12)) nlag=24 noprint;
run;

	estimate q=(12) input=(s1 ctrl / (1) p1) noconstant method=ml;
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
