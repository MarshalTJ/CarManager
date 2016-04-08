package com.carmanager.webapp.security.dao;

import com.carmanager.webapp.security.bean.SecurityUser;

public interface SecurityUserDao {
	SecurityUser findByUsername(String fusername);

}
