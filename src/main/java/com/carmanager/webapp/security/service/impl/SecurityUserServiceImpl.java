package com.carmanager.webapp.security.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.carmanager.webapp.security.bean.SecurityUser;
import com.carmanager.webapp.security.dao.SecurityUserDao;
import com.carmanager.webapp.security.service.SecurityUserService;
@Service
public class SecurityUserServiceImpl implements SecurityUserService{
	@Autowired
	private SecurityUserDao securityUserDao;

	@Override
	public SecurityUser findByUsername(String fusername) {
		return securityUserDao.findByUsername(fusername);
	}

}
