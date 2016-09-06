package com.algoo.app.zipcode.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/zipcode")
public class ZipcodeController {

	private static final Logger logger
	=LoggerFactory.getLogger(ZipcodeController.class);
	
	@RequestMapping("/zipcode.ag")
	public void zipcode(){
		logger.info("우편번호 보여주기");
		
	}
		

	  @RequestMapping(value="/getAddrApi.ag")
	    public void getAddrApi(HttpServletRequest req, ModelMap model, HttpServletResponse response) throws Exception {
			// 요청변수 설정
	    	String currentPage = req.getParameter("currentPage");
			String countPerPage = req.getParameter("countPerPage");
			String confmKey = req.getParameter("confmKey");
			String keyword = req.getParameter("keyword");
			
			logger.info("ajax-요청 처리, currentPage={},keyword={}",
					currentPage,keyword);
					
			// OPEN API 호출 URL 정보 설정
			String apiUrl = "http://www.juso.go.kr/addrlink/addrLinkApi.do?currentPage="+currentPage+"&countPerPage="+countPerPage+"&keyword="+URLEncoder.encode(keyword,"UTF-8")+"&confmKey="+confmKey;
			URL url = new URL(apiUrl);
	    	BufferedReader br = new BufferedReader(new InputStreamReader(url.openStream(),"UTF-8"));
	    	StringBuffer sb = new StringBuffer();
	    	String tempStr = null;

	    	while(true){
	    		tempStr = br.readLine();
	    		if(tempStr == null) break;
	    		sb.append(tempStr);								// 응답결과 XML 저장
	    	}
	    	br.close();
	    	response.setCharacterEncoding("UTF-8");
			response.setContentType("text/xml");
			response.getWriter().write(sb.toString());			// 응답결과 반환
	    }
	
	
}
