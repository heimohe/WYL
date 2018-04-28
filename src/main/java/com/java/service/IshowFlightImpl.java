package com.java.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONObject;
import com.java.dao.Row;
import com.java.dao.page_info;


@Service
public class IshowFlightImpl implements IshowFlight {

	@Override
	public Map<String, Object> showData() {
		
		Map<String, Object> data = new HashMap<String, Object>();
		
		Map<String, Object> data1 = new HashMap<String, Object>();
		
		//返回分页信息
		page_info pi = new page_info(1,2,3,4);
		
		ArrayList<Row> rows = new ArrayList<Row>();
		//返回row数据
		for(int i=0;i<3;i++){
			Row row = new Row("helo","wo",1,i,"fas","fsadf","fasdf","fasd","fasdf",2);
			rows.add(row);

		}
		
		data1.put("page_info", pi);
		data1.put("rows", rows);
		data.put("data", data1);
		
		data.put("msg", "success");
		data.put("status", 1);
		
        JSONObject json = new JSONObject(data);
		
        return json;
	}
	

}
