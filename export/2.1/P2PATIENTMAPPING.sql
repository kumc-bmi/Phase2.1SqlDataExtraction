ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD';
set linesize 32000
set pagesize 0  -- No header rows
set trimspool on -- remove trailing blanks
set feedback off
set markup csv on
spool P2PATIENTMAPPING.csv
set colsep ','
select SITEID ,PATIENT_NUM ,STUDY_NUM  from P2PATIENTMAPPING;
spool off;
exit;
