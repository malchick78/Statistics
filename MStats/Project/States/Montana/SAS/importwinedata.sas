PROC IMPORT OUT= WORK.Mtwine 
            DATAFILE= "C:\WD\Teaching\Villar6\PROJECT\Montana\SAS\Montwine.txt" 
            DBMS=TAB REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;
