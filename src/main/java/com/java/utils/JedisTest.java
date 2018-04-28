package com.java.utils;

import redis.clients.jedis.Jedis;

public class JedisTest {

	private static String KEY_PREFIX = "WUYUNLONG";
	
	public static void main(String[] args) {
		setObject("university", "nanjing", 6);
	    
	}
	
	public static String setObject(String key, String value, int cacheSeconds) {
		key = KEY_PREFIX+key;
		String result = null;
		Jedis jedis = null;
		try {
			jedis = getResource();
			result = jedis.set(key, value);
			String resultvalue = jedis.get(key);
			System.out.println(resultvalue);
			if (cacheSeconds != 0) {
				jedis.expire(key, cacheSeconds);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		
		}
		return result;
	}

	private static Jedis getResource() {
		//����redis��������192.168.0.100:6379
//		Jedis jedis = new Jedis("120.79.56.226", 6379);
		Jedis jedis = new Jedis("118.25.105.196", 6379);
		//Ȩ����֤
	    jedis.auth("wuyunlong");  
	    System.out.println("连接redis成功" + jedis.ping()); 
	   
	    return jedis;
	}

}
