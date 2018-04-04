package com.thinkgem.jeesite.common.config;

import java.util.Map;

import org.springframework.util.Assert;

import com.google.common.collect.Maps;
import com.thinkgem.jeesite.common.utils.PropertiesLoader;

/**
 * 全局配置类
 * @author Thinkgem
 *
 */
public class Global {
	/**
	 * 保存全局属性的值
	 */
	private static Map<String,String> map = Maps.newHashMap();
	/**
	 * 属性文件加载对象
	 */
	private static PropertiesLoader propertiesLoader = new PropertiesLoader("jeesite.properties");
	/**
	 * 获取配置
	 */
	public static String getConfig(String key){
		String value = map.get(key);
		if(value ==  null){
			value = propertiesLoader.getProperty(key);
			map.put(key, value);
		}
		return value;
	}

	/**
	 * 获取管理端根路径
	 */
	public static String getAdminPath(){
		return getConfig("adminPath");
	}
	/**
	 * 获取前端根路径
	 */
	public static String getFrontPath(){
		return getConfig("frontPath");
	}
	/**
	 * 获取URL后缀
	 */
	public static String getUrlSuffix(){
		return getConfig("urlSuffix");
	}
	/**
	 * 判断是否是演示模式，演示模式下不能修改用户、角色、密码、菜单、授权
	 */
	public static Boolean isDemoMode(){
		String dm = getConfig("demoMode");;
		return "true".endsWith(dm) || "1".equals(dm);
	}
	/**
	 * 获取CKFinder上传文件的根目录
	 */
	
	public static String getCkBaseDir(){
		String dir = getConfig("userfiles.basedir");
		Assert.hasText(dir,"配置文件里没有配置userfiles.basedir属性");
		if(!dir.endsWith("/")){
			dir += "/";
		}
		return dir;
	}

}
