package com.carmanager.webapp.wechat.interceptor;

import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.alibaba.fastjson.JSONObject;
import com.carmanager.webapp.common.Constant;
import com.carmanager.webapp.customer.bean.Customer;
import com.carmanager.webapp.customer.service.CustomerService;
import com.carmanager.webapp.shop.bean.Shop;
import com.carmanager.webapp.shop.service.ShopService;
import com.carmanager.webapp.wechat.bean.WeixinInfo;
import com.carmanager.webapp.wechat.service.WeixinService;

public class WeixinInterceptor extends HandlerInterceptorAdapter{
	@Autowired
	private WeixinService weixinService;
	@Autowired
	private CustomerService customerService;
	@Autowired
	private ShopService shopService;

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		super.afterCompletion(request, response, handler, ex);
	}

	@Override
	public void afterConcurrentHandlingStarted(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		super.afterConcurrentHandlingStarted(request, response, handler);
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		super.postHandle(request, response, handler, modelAndView);
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		Logger log = Logger.getLogger("weixin");
        log.setLevel(Level.INFO); 
		String code=request.getParameter("code");
		String appid=request.getParameter("state");
		log.info("code/"+code+"---appid/"+appid);
		String errmsg="code or appid null";
		if(code !=null && appid != null){
			WeixinInfo weixininfo = weixinService.findWeixinInfoByAppid(appid, null, null, null);
			errmsg="weixininfo null";
			if(weixininfo != null){
				Shop findShopById = shopService.findShopById(weixininfo.getFshopid());
				errmsg="shop null";
				if(findShopById != null){
					request.getSession().setAttribute(Constant.SESSION_WECHAT_SHOP, findShopById);
				JSONObject openidByCode = weixinService.getOpenidByCode(code, appid, weixininfo.getFappsecret());
				errmsg="oath2 openid null";
				if(openidByCode != null){
					String openid = openidByCode.getString("openid");
					
					Customer findCustomerByOpenid = customerService.findCustomerByOpenid(openid);
					if(findCustomerByOpenid!=null){
						//找到用户
						request.getSession().setAttribute(Constant.SESSION_WECHAT_CUSTOMER, findCustomerByOpenid);
					}else{
						//未找到用户
						request.getSession().setAttribute(Constant.SESSION_WECHAT_FUNS, openidByCode);
					}
					
					return true;
				}
				
				}
			}
		}
		
		log.info(errmsg);
		String path = request.getContextPath();
		String basePath = request.getScheme()+"://"+request.getServerName()+path+"/";
		response.sendRedirect(basePath+"jsp/wechat/error/loginerror.jsp");
		return false;
	}

}
