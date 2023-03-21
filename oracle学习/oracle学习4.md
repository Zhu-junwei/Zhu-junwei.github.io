# 系统配置

查看系统的密码规则
```sql
SELECT * FROM DBA_PROFILES WHERE RESOURCE_NAME = 'PASSWORD_VERIFY_FUNCTION';
```

查询用户使用的密码规则
```sql
SELECT PROFILE,USERNAME FROM DBA_USERS WHERE username='用户名';
```

修改用户的PROFILE
```sql
ALTER USER 用户名 PROFILE DEFAULT;
```

查看系统版本
```sql
SELECT * FROM v$version;
```

# 备份与恢复

备份某张表，如`QUOTE_VALUE`表

```sql
expdp SYSTEM/calypso DIRECTORY=DB_DUMP DUMPFILE=${MAIN_SCHEMA}_QUOTE_VALUE_`(date +%Y%m%d%H%M%S)`.dmp SCHEMAS=${MAIN_SCHEMA} INCLUDE=TABLE:"IN('QUOTE_VALUE')" LOGFILE=${MAIN_SCHEMA}_QUOTE_VALUE_`(date +%Y%m%d%H%M%S)`_export.log LOGTIME=ALL
```

