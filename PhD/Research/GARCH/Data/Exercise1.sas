/* MATH5845 Time Series Analysis - Exercise 1 for Week 3 SAS Laboratory */
/****************************************************************/ 
 /*          S A S   S A M P L E   L I B R A R Y                 */ 
 /*                                                              */ 
 /*    NAME: arigs.sas                                           */ 
 /*   TITLE: Examples for PROC ARIMA: Getting Started            */ 
 /* PRODUCT: ETS                                                 */ 
 /*  SYSTEM: ALL                                                 */ 
 /*    KEYS: arima modelling                                     */ 
 /*   PROCS: ARIMA                                               */ 
 /*    DATA:                                                     */ 
 /*                                                              */ 
 /* SUPPORT:                                                     */ 
 /*     REF: SAS/ETS V8 User's GUIDE: PROC ARIMA CHAPTER         */ 
 /*    MISC:                                                     */ 
 /*                                                              */ 
 /****************************************************************/ 
 
 
 /* Examples from the Getting Started Section of the ARIMA procedure */ 
 

/* Modified by William Dunsmuir, August 2004 for MATH5845 Time Series Analysis */
symbol1 v=none height=1 c=black; 
symbol2 v=none height=1 c=black; 
symbol3 v=none height=1 c=black; 
symbol4 v=none height=1 c=black; 
/* Generates a random walk  */
 
data simrw; 
   Y = 0; 
   al = 0; 
   do i = 1 to 100; 
      a = rannor(12345);
      Y = Y + a; 
      date = intnx( 'month', '1jan88'd, i-1 ); 
      format date monyy.; 
      output; 
   end; 
run; 
 
proc gplot data=simrw; 
   symbol1 v=dot i=join; 
   plot Y * i = 1; 
run; 

proc arima data=simrw; 
   identify var=Y nlag=20; 
   run; 

/* ACF etc for lag =1 differenced data */ 
   identify var=Y(1) nlag=20; 
   run; 
quit; 
/* simulate ar(1) with phi=0.75 */
data simar1 ; 
   X = 100; 
   Xl = 0;  
   do i = 1 to 100; 
      Z = rannor(12345); 
      X = .75 * Xl + Z; 
      
      Xl = X; 
        
      date = intnx( 'month', '1jan88'd, i-1 ); 
      format date monyy.; 
      output; 
   end; 
run; 
 
proc gplot data=simar1; 
   symbol1 v=dot i=join; 
   plot X * i = 1; 
run; 

proc arima data=simar1; 
   identify var=X nlag=20; 
   run; 
quit; 

/* Generates an integrated ARIMA(1,1,1) process with drift c=1 called "sales" */
 
data simsales; 
   sales = 100; 
   Xl = 0; Z1 = 0; 
   do i = 1 to 100; 
      Z = rannor(12345); 
      X = .75 * Xl  + Z + .5 * Z1; 
      Zl = Z; 
      Xl = X;  
      sales = sales +1+ X; 
      date = intnx( 'month', '1jan88'd, i-1 ); 
      format date monyy.; 
      output; 
   end; 
run; 

proc gplot data=simsales; 
   symbol1 v=dot i=join; 
   plot sales * i = 1; 
run; 

proc arima data=simsales; 
   identify var=sales nlag=20; 
   run; 
   identify var=sales(1) nlag=20; 
   run; 
quit; 


