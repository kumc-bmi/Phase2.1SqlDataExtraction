ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD';
set linesize 32000
set pagesize 0  -- No header rows
set trimspool on -- remove trailing blanks
set feedback off
set markup csv on
spool P2PATIENTSUMMARY.csv
set colsep ','
select SITEID ,PATIENT_NUM ,ADMISSION_DATE ,DAYS_SINCE_ADMISSION ,LAST_DISCHARGE_DATE ,STILL_IN_HOSPITAL ,SEVERE_DATE ,SEVERE ,DEATH_DATE ,DECEASED ,SEX ,AGE_GROUP ,RACE ,RACE_COLLECTED  from P2PATIENTSUMMARY;
spool off;
exit;
