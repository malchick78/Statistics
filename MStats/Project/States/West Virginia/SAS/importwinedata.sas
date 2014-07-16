PROC IMPORT OUT= WORK.WVwine 
            DATAFILE= "C:\WD\Teaching\Villar6\PROJECT\West Virginia\SAS\Westwine.txt" 
            DBMS=TAB REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;
