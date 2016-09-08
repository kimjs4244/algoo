package com.algoo.app.rec.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.algoo.app.common.PaginationInfo;
import com.algoo.app.company.model.CompanyService;
import com.algoo.app.company.model.CompanyVO;
import com.algoo.app.faq.model.FaqVO;
import com.algoo.app.rec.model.RecSeachVO;
import com.algoo.app.rec.model.RecService;
import com.algoo.app.rec.model.RecVO;
import com.algoo.app.service.model.ServiceService;
import com.algoo.app.service.model.ServiceVO;

@Controller
@RequestMapping("/rec")
public class RecController {

	public static final Logger logger
		=LoggerFactory.getLogger(RecController.class);
	
	@Autowired
	private RecService recService;
	@Autowired
	private CompanyService companyService;
	@Autowired
	private ServiceService serviceService;
	
	
	@RequestMapping("/recDetail.ag")
	public String recDetail(@RequestParam int recCode,
			Model model){
		//채용화면 보여주기
		//1
		logger.info("채용 화면 보여주기 recCode={}",recCode);
		//2
		RecVO recVo
		=recService.selectRecByCode(recCode);
		logger.info("상세보기조회결과 recCode={}",recVo);
		//회사정보 불러오기
		CompanyVO compVo
		=recService.selectCompanyByCode(recVo.getCompCode());
		logger.info("compVo={}",compVo);
		//서비스정보 불러오기
		ServiceVO serviceVo
		=recService.selectServiceByCode(recVo.getServiceCode());
		logger.info("serviceVo",serviceVo);
		
		//3
		model.addAttribute("recVo", recVo);
		model.addAttribute("compVo", compVo);
		model.addAttribute("serviceVo", serviceVo);
		return "rec/recDetail";
	}
	
	@RequestMapping(value="/recWrite.ag",
			method=RequestMethod.GET)
	public String recWrite_get(
			Model model){
		//채용공고 입력창 보여주기
		//1
		logger.info("채용공고 입력창 보여주기");
		//테스트용 회사코드 2
		int compCode=2;
		//2
		CompanyVO compVo
		=companyService.selectCompanyByCode(compCode);
		logger.info("compVo={}",compVo);
		//3
		model.addAttribute("compVo", compVo);
		
		
		
		return "rec/recWrite";
	}
	
	@RequestMapping(value="/recWrite.ag",
			method=RequestMethod.POST)
	public String recWrite_post(
			@ModelAttribute CompanyVO compVo,
			@ModelAttribute RecVO recVo,
			@ModelAttribute ServiceVO serviceVo,
			Model model
			){
		//채용공고 입력처리하기
		//1
		logger.info("채용공고 처리하기,파라미터"
				+ "compVo={},recVo={},serviceVo={}"
				+ compVo,recVo,serviceVo);
		//2
		
		int res 
		=serviceService.insertSevice(serviceVo);
		logger.info("서비스등록 결과,res={}",res);
		
		serviceVo
		=serviceService.selectByNew();
		logger.info("서비스 조회하기결과,파라미터"
				+ "serviceVo={}"
				+ serviceVo);
		
		recVo.setServiceCode(serviceVo.getServiceCode());
		logger.info("채용정보등록결과,res={}",res);
		
		res
		=recService.intsertRec(recVo);
		//3
		model.addAttribute("compVo", compVo);
		model.addAttribute("recVo", recVo);
		model.addAttribute("serviceVo", serviceVo);
		
		
		return "rec/recDetail";		
	}
	
	@RequestMapping("/recList.ag")
	public String recList(
			@ModelAttribute RecSeachVO searchVo,
			Model model){
		//1
		logger.info("채용 정보 보여주기");
		//2

		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(10);
		pagingInfo.setRecordCountPerPage(20);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setBlockSize(pagingInfo.getBlockSize());
		searchVo.setRecordCountPerPage(pagingInfo.getRecordCountPerPage());
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
				
		List<RecVO> alist = recService.selectAllRec(searchVo);
		logger.info("FAQ 목록 조회 결과 alist.size()={}", alist.size());
		
		int totalRecord=recService.selectTotalCount(searchVo);
		pagingInfo.setTotalRecord(totalRecord);
		//3				
		model.addAttribute("alist", alist);
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "rec/recList";
	}
	
	@RequestMapping("/updateCount.ag")
	public String updateCount(
			@RequestParam(defaultValue="0") int recCode,
			Model model){
		
		logger.info("FAQ 조회수 증가, 파라미터 recCode = {}", recCode);
		
		if(recCode==0){
			model.addAttribute("msg", "잘못된 url입니다");
			model.addAttribute("url", "/faq/faqList.ag");
			
			return "common/message";
		}
		
		int cnt=recService.updateReadCount(recCode);
		logger.info("FAQ 조회수 증가 결과, cnt = {}", cnt);

		return "redirect:/rec/recDetail.ag?recCode="+recCode;
	}
	
	
	/*@RequestMapping("/getSubwayStation.ag")
	public void getKwrdFndSubwaySttnList(
			HttpServletRequest request,
			HttpServletResponse response,
			Model model){
		
		getKwrdFndSubwaySttnList(subwayStationName)
		
	}*/
}
