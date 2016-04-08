package com.carmanager.webapp.wechat.util;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;


@SuppressWarnings("unused")
public class XmlUtil {

	public  Map<String,String> reMsg(InputStream in){
		SAXReader sax=new SAXReader();
		Map<String,String> mapMsg=new HashMap<String,String>();
		
		try {
			Document document=sax.read(in);
			Element root=document.getRootElement();
			getSonElement(root,mapMsg);
		} catch (DocumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return mapMsg;
	}
	
	 //递归算法 判断是否还有下个子节点
	public  void getSonElement(Element ele,Map<String,String>resultMap) {
		List sons = ele.elements();
		if (0 != sons.size()) {
			for (Iterator i = ele.elementIterator(); i.hasNext();) {
				Element son = (Element) i.next();
				String name=son.getName();
			    String text=son.getText();
				System.out.println(name+"/"+text);
				resultMap.put(name, text);
				getSonElement(son, resultMap);
			}
		}

	}
	
	public  Map<String,String> readMsg(String xml){
		Map<String,String> mapMsg=new HashMap<String,String>();
		try {
			Document document= DocumentHelper.parseText(xml); // 将字符串转为XML
			Element root=document.getRootElement();
			getSonElement(root,mapMsg);
			return mapMsg;
		} catch (DocumentException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	

	
}
