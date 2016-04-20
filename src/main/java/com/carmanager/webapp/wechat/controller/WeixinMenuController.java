package com.carmanager.webapp.wechat.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


@RestController
public class WeixinMenuController {
	private static String basepath="http://xxx.com/ckkmenu/";
	

	/**
	 * 
	 * @param menuid
	 * wybx  我要报销
	 * bxcx  报销查询
	 * wysp  审批
	 * wyzf  支付
	 * @param req
	 * @param res
	 * @return
	 */
	@RequestMapping(value ="/menu/{appid}/{menuid}/redirect", method = RequestMethod.GET)
    public void qyhMenu(@PathVariable String appid,@PathVariable String menuid,HttpServletRequest req,
            HttpServletResponse res){
		String url="https://open.weixin.qq.com/connect/oauth2/authorize?appid=APPID&redirect_uri=REDIRECT_URI&response_type=code&scope=snsapi_base&state=STATE#wechat_redirect";
		
		String menutest_url=basepath+"menutest";
		
		
		String repalce_url="";
		switch (menuid) {
		case "menutest":
			repalce_url=menutest_url;
			break;

		default:
			break;
		}
		url=url.replace("APPID", appid).replace("REDIRECT_URI", repalce_url).replace("STATE", appid);
		try {
			System.out.println(url);
			res.sendRedirect(url);
			return;
		} catch (IOException e) {
			e.printStackTrace();
		}
		return;
    }
	@RequestMapping(value ="/ckkmenu/menutest", method = RequestMethod.GET)
	public ModelAndView menutest(HttpServletRequest req,
            HttpServletResponse res){
		
		return null;
	}

}
