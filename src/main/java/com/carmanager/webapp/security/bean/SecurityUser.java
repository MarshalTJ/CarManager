package com.carmanager.webapp.security.bean;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class SecurityUser implements Serializable{

	/**
	 * 企业用户表  对应t_security_users
	 */
	private static final long serialVersionUID = 1L;
	
	private Long fid;
	private String fusername;
	private String fpassword;
	private String fenabled;
	private Long fcompanyid;//对应企业表主键
	
	

}
