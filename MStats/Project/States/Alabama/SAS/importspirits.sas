PROC IMPORT OUT= WORK.ALspir 
            DATAFILE= "C:\WD\Teaching\Villar6\PROJECT\Alabama\SAS\Alabsp
ir.txt" 
            DBMS=TAB REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;
