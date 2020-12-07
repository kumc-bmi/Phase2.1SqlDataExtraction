ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD';
set linesize 32000
set pagesize 0  -- No header rows
set trimspool on -- remove trailing blanks
set feedback off
set markup csv on
spool P2PATIENTCLINICALCOURSE.csv
set colsep ','
select SITEID ,PATIENT_NUM ,DAYS_SINCE_ADMISSION ,CALENDAR_DATE ,IN_HOSPITAL ,SEVERE ,DECEASED  from P2PATIENTCLINICALCOURSE;
spool off;
exit;
