package com.carmanager.webapp.wechat.util;

import org.springframework.stereotype.Component;

import com.alibaba.fastjson.JSONObject;
import com.carmanager.webapp.common.HttpUtil;

@Component
public class WeixinUtil {
	
	 /**
	  * 获取token
	  * @param appid
	  * @param secret
	  * @return
	  */
     public String getAccessToken(String appid,String secret){
		
		     String url="https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid="+appid+"&secret="+secret;
		     JSONObject json=HttpUtil.httpsRequest(url, "GET", null);
		     if(json!=null&&json.containsKey("access_token")){
	             String access_token=json.getString("access_token");
	        	 return access_token;
	         }else{
	        	 return null;
	         }
		
	}
     
     
     public String getAccessTokenJSApi(String appid,String secret){
 		String access_token1 =  this.getAccessToken(appid, secret);
 			//获取jsapi ticket 接口
 			String card_jsapi_url = "https://api.weixin.qq.com/cgi-bin/ticket/getticket?access_token=ACCESS_TOKEN&type=jsapi ";
 			String requestUrl = card_jsapi_url.replace("ACCESS_TOKEN",access_token1 );
 			// 发起GET请求获取ticket {"errcode":0,"ticket":"sM4AOVdWfPE4DxkXGEs8VBY0EURx6bJCZfscSNh_kh6slTp206gcDsg-X4IlVXZ70LkGMAxmvab20PNLoqSmhA","errmsg":"ok","expires_in":7200}
 			JSONObject jsonObject = HttpUtil.httpsRequest(requestUrl, "GET", null);

 			if (null != jsonObject) {
 				int errorCode = jsonObject.getInteger("errcode");
 				String errorMsg = jsonObject.getString("errmsg");
 				if (0 == errorCode) {
 					String ticket = jsonObject.getString("ticket");
 					return ticket;
 				} else {
 					 return null;
 				}
 			}else{
 				return null;
 			}
 		
 	}
     
     /**
   	 * 微信接口根据code获取openid
   	 * @param code
   	 * @param appid
   	 * @param secret
   	 * @return
   	 * { "access_token":"ACCESS_TOKEN",    
         "expires_in":7200,    
         "refresh_token":"REFRESH_TOKEN",    
          "openid":"OPENID",    
          "scope":"SCOPE" }
   	 */
   	public JSONObject getOpenid(String code,String appid,String secret){
 			String url="https://api.weixin.qq.com/sns/oauth2/access_token?appid="+appid+"&secret="+secret+"&code="+code+"&grant_type=authorization_code";
 	  		JSONObject jsonObject=HttpUtil.httpsRequest(url, "POST", null);
 	  		if(jsonObject!=null){
 	  			System.out.println(jsonObject);
 	  			if(jsonObject.containsKey("openid")&&jsonObject.containsKey("access_token")){
 	  				return jsonObject;
 	  			}
 	  		}
 	  		return null;
   	}
   	
   	/**
	 * 根据openid ACCESS_TOKEN 获取用户信息
	 * @param openid
	 * @param ACCESS_TOKEN
	 * @param flag false 获取用户基本信息(UnionID机制)   true 网页授权获取用户基本信息
	 * {"subscribe": 1,   UnionID机制
	 *  "subscribe_time": 1382694957,  UnionID机制
	 *  "language": "zh_CN",  UnionID机制
	 *   "remark": "",   UnionID机制
	 *    "groupid": 0   UnionID机制
	 *    
	 * "openid":" OPENID",  
       " nickname": NICKNAME,   
       "sex":"1",  
       "province":"PROVINCE"   
       "city":"CITY",   
       "country":"COUNTRY",    
       "headimgurl":    "http://wx.qlogo.cn/mmopen/g3MonUZtNHkdmzicIlibx6iaFqAc56vxLSUfpb6n5WKSYVY0ChQKkiaJSgQ1dZuTOgvLLrhJbERQQ4eMsv84eavHiaiceqxibJxCfHe/46",  
       "privilege":[ "PRIVILEGE1" "PRIVILEGE2"     ],    
        "unionid": "o6_bmasdasdsad6_2sgVt7hMZOPfL" 
        } 
	 * @return
	 */
	@SuppressWarnings("static-access")
	public JSONObject getUserInfo(String openid,String ACCESS_TOKEN,boolean flag){
		String url="https://api.weixin.qq.com/cgi-bin/user/info?access_token="+ACCESS_TOKEN+"&openid="+openid+"&lang=zh_CN";
		if(flag){
			url="https://api.weixin.qq.com/sns/userinfo?access_token="+ACCESS_TOKEN+"&openid="+openid+"&lang=zh_CN";
		}
		   
			JSONObject json=HttpUtil.httpsRequest(url, "GET", null);
	         if(json!=null&&json.containsKey("openid")){
	        	return json;
	         }else{
	         return null; 
	         }
	         
	}
	
	public boolean sendCustomMsg(String access_token,String openid,String jsonbody){
		String url="https://api.weixin.qq.com/cgi-bin/message/custom/send?access_token="+access_token;
		jsonbody=jsonbody.replace("OPENID", openid);
		JSONObject json=HttpUtil.httpsRequest(url, "POST", jsonbody);
		if(json.containsKey("errcode")&&json.getInteger("errcode")==0){
				return true;
		}
		return false;
	}

}
