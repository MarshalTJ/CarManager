package com.carmanager.webapp.wechat.service;

import com.alibaba.fastjson.JSONObject;
import com.carmanager.webapp.wechat.bean.WeixinInfo;

public interface WeixinService {
	public WeixinInfo findWeixinInfoByAppid(String fappid,String fghid,Long fid,Long fshopid);
	
	public JSONObject getOpenidByCode(String code,String appid,String secret);

}
