package com.kingdee.carmanager.framework.utils;

import com.jolbox.bonecp.BoneCPDataSource;
import org.apache.log4j.Logger;


import javax.sql.DataSource;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

/**
 * 默认使用classpath下的jdbc.properties
 * Created by Administrator on 2016/3/31.
 */
public class JdbcUtils {
    private static Logger logger = Logger.getLogger(JdbcUtils.class.getSimpleName());
    private static BoneCPDataSource ds;
    //使用ThreadLocal存储当前线程中的Connection对象 解决多线程之间的冲突
    private static ThreadLocal<Connection> localThread = new ThreadLocal<Connection>();

    static {
        Properties properties = new Properties();
        InputStream inputStream = Object.class.getResourceAsStream("/jdbc.properties");
        try {
            properties.load(inputStream);
            String driverClass = properties.getProperty("driver");
            String url = properties.getProperty("url");
            String username = properties.getProperty("username");
            String password = properties.getProperty("password");
            String initialSize = properties.getProperty("initialSize");
            String maxActive = properties.getProperty("maxActive");
            String maxIdle = properties.getProperty("maxIdle");
            String minIdle = properties.getProperty("minIdle");
            String maxWait = properties.getProperty("maxWait");
            ds = new BoneCPDataSource();
            ds.setDriverClass(driverClass);
            ds.setJdbcUrl(url);
            ds.setUsername(username);
            ds.setPassword(password);
            ds.setIdleMaxAgeInSeconds(Long.parseLong(maxIdle));

        } catch (IOException e) {
            logger.error("can't find jdbc.properties in classpath");
        }
    }

    public static DataSource getDataSource() {
        return ds;
    }

    public static Connection getConnection() throws SQLException {
        Connection conn = localThread.get();
        if (conn == null) {
            conn = getDataSource().getConnection();
            localThread.set(conn);
        }
        return conn;
    }

    /**
     * 只是把连接还给数据库而已
     *
     * @throws SQLException
     */
    public static void close() {
        try {
            Connection conn = localThread.get();
            if (conn != null) {
                conn.close();
                localThread.remove();
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    /**  以下是事物的一些操作**/

    public static void beginTrasaction() {
        try {
            Connection conn = localThread.get();
            if (conn == null) {
                conn = getDataSource().getConnection();
                localThread.set(conn);
            }
            conn.setAutoCommit(false);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static void rollback(){
        try {
            Connection conn = localThread.get();
            if (conn != null) {
                conn.rollback();
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    public static void commit(){
        try {
            Connection conn = localThread.get();
            if (conn != null) {
                conn.commit();
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
