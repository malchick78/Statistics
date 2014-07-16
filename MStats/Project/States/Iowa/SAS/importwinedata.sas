PROC IMPORT OUT= WORK.Iawine 
            DATAFILE= "C:\WD\Teaching\Villar6\PROJECT\Iowa\SAS\Iowawine.txt" 
            DBMS=TAB REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;
