data alabwine;
	set Work.Alwine;

winehead = 10*Wine/Popn;
ywine = log(winehead);
ctrlhead = 10*Winesum/Popsum;
ctrl = log(ctrlhead);

if (monthn le 69) then s1 = 0;
	else s1 = 1;

if monthn = 70 then p1 = 1;
	else p1 = 0;

if (monthn le 153) then s2 = 0;
	else s2 = 1;

if monthn = 154 then p2 = 1;
	else p2 = 0;

date = intnx('month', '31dec1967'd, _n_);
	format date monyy.;

run;

proc arima data=alabwine;
	identify var=ywine(1,12) crosscorr = (p1(1,12) p2(1,12) s1(1,12) s2(1,12) ctrl(1,12)) nlag=24 noprint;
run;

/* William's best model but needs a filtered pulse for GARCH */
	estimate q=(1) (12) input=(    /(1) p1 s1 p2  s2 ctrl) noconstant method=ml;
run;
/*Darin's original model */

	estimate q=(1,2,3,4,5) (12) input=(    /(1) p1 s1 /(1) p2  s2 ctrl) method=ml;
run;

/* William's second best but simple model*/
	estimate q=(1) (12) input=(    (1,2) p1 s1  p2  s2 ctrl) noconstant method=ml;
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





