set -x

sqlplus $USER_NAME/$USER_PASSWORD@$ORACLE_SID @P2PATIENTCLINICALCOURSE.sql
sqlplus $USER_NAME/$USER_PASSWORD@$ORACLE_SID @P2PATIENTMAPPING.sql
sqlplus $USER_NAME/$USER_PASSWORD@$ORACLE_SID @P2PATIENTOBSERVATIONS.sql
sqlplus $USER_NAME/$USER_PASSWORD@$ORACLE_SID @P2PATIENTSUMMARY.sql

exit 0

sed -i 1i"SITEID ,PATIENT_NUM ,DAYS_SINCE_ADMISSION ,CALENDAR_DATE ,IN_HOSPITAL ,SEVERE ,DECEASED" LocalPatientCLinicalCourse.csv
sed -i 1i"SITEID ,PATIENT_NUM ,STUDY_NUM" LocalPatientMapping.csv
sed -i 1i"SITEID ,PATIENT_NUM ,DAYS_SINCE_ADMISSION , CONCEPT_TYPE ,CONCEPT_CODE ,VALUE" LocalPatientObservations.csv
sed -i 1i"SITEID ,PATIENT_NUM ,ADMISSION_DATE ,DAYS_SINCE_ADMISSION ,LAST_DISCHARGE_DATE ,STILL_IN_HOSPITAL ,SEVERE_DATE ,SEVERE ,DEATH_DATE ,DECEASED ,SEX ,AGE_GROUP ,RACE ,RACE_COLLECTED" \
    LocalPatientSummary.csv
