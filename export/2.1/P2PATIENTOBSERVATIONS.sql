ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD';
set linesize 32000
set pagesize 0  -- No header rows
set trimspool on -- remove trailing blanks
set feedback off
set markup csv on
spool P2PATIENTOBSERVATIONS.csv
set colsep ','
select SITEID ,PATIENT_NUM ,DAYS_SINCE_ADMISSION , CONCEPT_TYPE ,CONCEPT_CODE ,VALUE  from P2PATIENTOBSERVATIONS;
spool off;
exit;
