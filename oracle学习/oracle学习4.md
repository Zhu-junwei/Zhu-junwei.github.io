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