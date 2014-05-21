package com.gtafe.util;

import org.apache.ibatis.executor.resultset.ResultSetHandler;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.plugin.*;

import java.util.Properties;

/**
 * Desc:
 * User: weiguili(li5220008@gmail.com)
 * Date: 5/21/14
 * Time: 2:18 PM
 */
@Intercepts(@Signature(
        method="handleResultSets",
        type=ResultSetHandler.class,
        args={MappedStatement.class}))
public class TrimPlugin implements Interceptor {
    public Object intercept(Invocation invocation) throws Throwable {


        return invocation.proceed();
    }
    public Object plugin(Object target) {
        return Plugin.wrap(target, this);
    }
    public void setProperties(Properties properties) {
        String isTrim = properties.getProperty("isTrim");
        System.out.println(isTrim);
    }
}
