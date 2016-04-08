package com.carmanager.webapp.security.service;

import com.carmanager.webapp.security.bean.SecurityUser;

public interface SecurityUserService {
	public SecurityUser findByUsername(String fusername);

}
