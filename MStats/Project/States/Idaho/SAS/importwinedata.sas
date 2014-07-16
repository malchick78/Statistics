PROC IMPORT OUT= WORK.Idwine 
            DATAFILE= "C:\WD\Teaching\Villar6\PROJECT\Idaho\SAS\Idahwine.txt" 
            DBMS=TAB REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;
