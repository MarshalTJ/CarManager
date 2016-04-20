package com.carmanager.webapp.wechat.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONObject;
import com.carmanager.webapp.wechat.bean.WeixinInfo;
import com.carmanager.webapp.wechat.dao.WeixinDao;
import com.carmanager.webapp.wechat.service.WeixinService;
import com.carmanager.webapp.wechat.util.WeixinUtil;
import com.google.common.collect.Maps;
@Service
public class WeixinServiceImpl implements WeixinService {
	@Autowired
	private WeixinDao weixinDao;
	@Autowired
	private WeixinUtil weixinUtil;

	@Override
	public WeixinInfo findWeixinInfoByAppid(String fappid,String fghid,Long fid,Long fshopid) {
		Map<String,Object> paraMap = Maps.newHashMap();
		paraMap.put("fappid", fappid);
		paraMap.put("fghid", fghid);
		paraMap.put("fid", fid);
		paraMap.put("fshopid", fshopid);
		return weixinDao.findWeixinInfoByAppid(paraMap);
	}

	@Override
	public JSONObject getOpenidByCode(String code, String appid, String secret) {
		  return weixinUtil.getOpenid(code, appid, secret);
	}
	

}
