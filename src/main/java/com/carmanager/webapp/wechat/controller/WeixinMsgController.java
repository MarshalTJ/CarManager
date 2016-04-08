package com.carmanager.webapp.wechat.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.carmanager.webapp.wechat.util.XmlUtil;
import com.qq.weixin.mp.aes.WXBizMsgCrypt;

@RestController
@RequestMapping("/weixinmsg")
public class WeixinMsgController {
	/**
	 * 微信接入验证方法
	 */
	@RequestMapping(value ="/{appid}/msg", method = RequestMethod.GET)
	@ResponseBody
    public String checkWX(HttpServletRequest req,
            HttpServletResponse res,@PathVariable String appid){
		String sToken = "QDG6eK";
		String sCorpID = appid;
		String sEncodingAESKey = "jWmYm7qr5nMoAUwZRjGtBxmz3KA1tkAj3ykkR6q2B2C";
		// 解析出url上的参数值如下：
		String sVerifyMsgSig = req.getParameter("msg_signature");
		String sVerifyTimeStamp = req.getParameter("timestamp");
		String sVerifyNonce = req.getParameter("nonce");
		String sVerifyEchoStr = req.getParameter("echostr");
		String sEchoStr=""; //需要返回的明文
		try {
		    WXBizMsgCrypt wxcpt = new WXBizMsgCrypt(sToken, sEncodingAESKey, sCorpID);
		
		
			sEchoStr = wxcpt.VerifyURL(sVerifyMsgSig, sVerifyTimeStamp,
					sVerifyNonce, sVerifyEchoStr);
			System.out.println("verifyurl echostr: " + sEchoStr);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sEchoStr;
    }
	
	/**
	 * 微信推送事件处理方法
	 */
	@RequestMapping(value ="/{appid}/msg", method = RequestMethod.POST,produces = "text/html;charset=utf-8")
	@ResponseBody
	public String WeChat(HttpServletRequest req,
			HttpServletResponse res){
		XmlUtil xmlUtil = new XmlUtil();
		Map<String,String> msg=new HashMap<String, String>();
		try {
			InputStream in=req.getInputStream();
			
			msg=xmlUtil.reMsg(in);
		} catch (IOException e) {
			e.printStackTrace();
		}
		String FromUserName=msg.get("FromUserName");//openid
		String ToUserName=msg.get("ToUserName");
		
		
		if(msg.get("MsgType").equals("event")){
			//消息类型event
			if(msg.get("Event").equals("subscribe")){
				//关注
				/*if(u!=null){
					return xmlUtil.normalMsg(FromUserName, ToUserName, u.getName()+",welcome!");
				}else{
					return xmlUtil.normalMsg(FromUserName, ToUserName, "welcome!");
				}*/
				
			}else if(msg.get("Event").equals("unsubscribe")){
				//取消关注
			}else if(msg.get("Event").equals("LOCATION")){
				//上报地理位置事件
			}else if(msg.get("Event").equals("CLICK")){
				//点击click菜单事件
			}else if(msg.get("Event").equals("VIEW")){
				//点击VIEW菜单事件
			}else if(msg.get("Event").equals("SCAN")){
				//扫描带参数二维码事件    推送点餐 服务图文
				
			}else if(msg.get("Event").equals("scancode_waitmsg")){
				//扫描二维码
			
			}else{
				//其它事件
			}
			return "";
		}else if(msg.get("MsgType").equals("text")){
			//普通文本消息Content
			return "";
		}else if(msg.get("MsgType").equals("image")){
			//普通图片消息
			return "";
		}else if(msg.get("MsgType").equals("voice")){
			//普通语言消息
			return "";
		}else if(msg.get("MsgType").equals("video")){
			//普通视频消息
			return "";
		}else if(msg.get("MsgType").equals("shortvideo")){
			//普通小视频消息
			return "";
		}else if(msg.get("MsgType").equals("location")){
			//位置消息
			return "";
		}else if(msg.get("MsgType").equals("link")){
			//链接消息
			return "";
		}else{
			return "";
		}
		
		
	
		
	}

}
