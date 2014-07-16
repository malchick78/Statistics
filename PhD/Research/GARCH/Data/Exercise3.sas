/* MATH5845 Time Series Analysis - Exercise 3 for Week 3 SAS Laboratory */

/* PREPARE TITLES TO IDENTIFY YOUR WORK*/
title1 'Analysis of Alcohol Sales in IOWA';
title2 'MATH5845 Time Series Analysis, 2003:S1 by Albert Einstein #30303030';

/* READ DATA IN FROM A FILE - YOU WILL NEED TO CHANGE THE 'infile' location */

   data Alcohol;
   	  infile "C:\WD\Teaching\MATH5845TSA\SASIntroWeek3\Iowa.txt";
      input STATENAM $ YEAR MONTH POP21 BEER SPIR WINE @;

/* CALCULATE CONSUMPTION PER 100,000 people 21 years and over */
BEERHEAD=10*BEER/POP21;
SPIRHEAD=10*SPIR/POP21;
WINEHEAD=10*WINE/POP21;

/* Creat date variable */
date = intnx( 'month', '31dec1967'd, _n_ );
format date monyy.;

symbol1 i=join  v=dot;

/* plot time series of selected variable */
   proc gplot data=Alcohol;
      plot BEERHEAD * date = 1 /haxis= '1jan68'd to '1jan99'd by year;
 ;
   run;
 
   data Alcohol;
      set Alcohol;
      BEERdf12 = dif12( BEERHEAD );
   run;

/* plot Lag 12 differences of Beer data */

   proc gplot data=Alcohol;
      plot BEERdf12 * date = 1 /haxis= '1jan68'd to '1jan99'd by year;
   run;

/* Autocorrelation function of seasonally differenced data */

proc arima data=Alcohol;
     identify var=BEERHEAD(12) nlag=36 ;
     run;

