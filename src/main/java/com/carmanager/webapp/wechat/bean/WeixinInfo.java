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
	 * 寰俊淇℃伅琛�
	 */
	private static final long serialVersionUID = 1L;
	
	private Long fid;
	
	private String fname;//鍏紬鍙峰悕绉�
	
	private String fappid;//
	
	private String fappsecret;
	
	private String ftoken;//鍔犺В瀵唗oken
	
	private String fencodingaeskey;//娑堟伅鍔犺В瀵唊ey
	
	private String fghid;//鍏紬鍙峰師濮媔d
	
	private String fcertpath;  //璇佷功璺緞
	
	private String fcertkey;//鏀粯API瀵嗙爜
	
	private Long fshopid;//瀵瑰簲浼佷笟id
	

}
