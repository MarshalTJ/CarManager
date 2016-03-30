package com.kingdee.carmanager.framework.utils;

import junit.framework.TestCase;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.ScalarHandler;

public class JdbcUtilsTest extends TestCase {

    public void testGetDataSource() throws Exception {
        QueryRunner qr = new QueryRunner(JdbcUtils.getDataSource());
        String sql = "select count(1) from t_demo_user";
        int count = ((Long)qr.query(sql, new ScalarHandler(1))).intValue();
        System.out.println(count);
    }

    public void testGetConnection() throws Exception {

    }

    public void testClose() throws Exception {

    }

    public void testBeginTrasaction() throws Exception {

    }

    public void testRollback() throws Exception {

    }

    public void testCommit() throws Exception {

    }
}