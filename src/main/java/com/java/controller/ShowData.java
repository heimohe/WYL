package com.java.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.service.IshowFlight;


@Controller
public class ShowData {

	@Autowired
	private IshowFlight ishowFlight;
	
	/**
	 * 获取航班信息
	 * @param param
	 * @return
	 */
	@RequestMapping(value = "/rowdata", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
	@ResponseBody
	public Map<String, Object> getTactics(@RequestParam Map<String, Object> param) {
		Map<String, Object> result = new HashMap<String, Object>();
		
		System.out.println("controller");
		try {
//			return ishowFlight.showData();
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("hello", "world");
			System.out.println(map.toString());
			return map;
		} catch (Exception e) {
			
		}
		return result;
	}
}
