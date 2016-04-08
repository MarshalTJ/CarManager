package com.carmanager.webapp.wechat.bean;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class WeixinInfo implements Serializable{

	/**
	 * 微信信息表
	 */
	private static final long serialVersionUID = 1L;
	
	private Long fid;
	
	private String fname;//公众号名称
	
	private String fappid;//
	
	private String fappsecret;
	
	private String ftoken;//加解密token
	
	private String fencodingaeskey;//消息加解密key
	
	private String fghid;//公众号原始id
	
	private String fcertpath;  //证书路径
	
	private String fcertkey;//支付API密码
	
	private Long fcompanyid;//对应企业id
	

}
