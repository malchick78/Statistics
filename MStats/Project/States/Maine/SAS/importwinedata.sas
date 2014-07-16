PROC IMPORT OUT= WORK.mewine 
            DATAFILE= "C:\WD\Teaching\Villar6\PROJECT\Maine\SAS\mainewine.txt" 
            DBMS=TAB REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;
