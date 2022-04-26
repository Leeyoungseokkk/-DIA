package com.ezen.dia;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.ezen.dia.MemberDTO;
import com.ezen.dia.Service;
import com.ezen.dia.DiaDTO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	private SqlSession sqlSession;
	@RequestMapping(value="/index")
	public String di1()
	{
		return "dia_main";
	}
	@RequestMapping(value="/input")
	public String di2()
	{		
		return "dia_input";
	}
	@RequestMapping(value="/inputsave")
	public String di3(MultipartHttpServletRequest mul)
	{	
		String name=mul.getParameter("name");
		String title=mul.getParameter("title");
		int pirce = Integer.parseInt(mul.getParameter("price"));
		String content=mul.getParameter("content");		
		MultipartFile mf = mul.getFile("picture");
		String picture= mf.getOriginalFilename();
		Service dao = sqlSession.getMapper(Service.class);
		dao.insert(name,title,pirce,content,picture);
		return "redirect:list";
	}
	@RequestMapping(value="/list")
	public String di4(Model mo)
	{		
		Service dao = sqlSession.getMapper(Service.class);
		ArrayList<DiaDTO> list = dao.out();
		mo.addAttribute("list",list);
		return "dia_list";
	}
	@RequestMapping(value="/detail")
	public String di5(HttpServletRequest request, Model mo)
	{	
		int dnum=Integer.parseInt(request.getParameter("dnum"));
		Service dao = sqlSession.getMapper(Service.class);
		ArrayList<DiaDTO> list = dao.detail(dnum);
		readcnt(dnum);
		mo.addAttribute("list",list);
		return "dia_detail";
	}
	@RequestMapping(value="/detaild")
	public String di99(HttpServletRequest request, Model mo)
	{	
		int dnum=Integer.parseInt(request.getParameter("dnum"));
		Service dao = sqlSession.getMapper(Service.class);
		ArrayList<DiaDTO> list = dao.detaild(dnum);
		readcnt(dnum);
		mo.addAttribute("list",list);
		return "dia_detaild";
	}
	@RequestMapping(value="/delete")
	public String di6(HttpServletRequest request, Model mo)
	{	
		int dnum=Integer.parseInt(request.getParameter("dnum"));
		Service dao = sqlSession.getMapper(Service.class);
		dao.delete(dnum);		
		return "redirect:list";
	}
	public void readcnt(int dnum)
	{
		Service dao = sqlSession.getMapper(Service.class);
		dao.readcnt(dnum);
	}
	@RequestMapping(value="/modify")
	public String di7(HttpServletRequest request, Model mo)
	{	
		int dnum=Integer.parseInt(request.getParameter("dnum"));
		Service dao = sqlSession.getMapper(Service.class);
		ArrayList<DiaDTO> list = dao.modify(dnum);
		mo.addAttribute("list",list);
		return "dia_modify";
	}
	@RequestMapping(value="/modifya" ,method = RequestMethod.POST)
	public String di8(MultipartHttpServletRequest mul,Model mo)
	{	
			
		String name=mul.getParameter("name");
		String title=mul.getParameter("title");
		int pirce = Integer.parseInt(mul.getParameter("price"));
		String content=mul.getParameter("content");		
		MultipartFile mf = mul.getFile("picture");
		String picture= mf.getOriginalFilename();
		int dnum= Integer.parseInt(mul.getParameter("dnum"));
		Service dao = sqlSession.getMapper(Service.class);
		dao.modifya(name,title,pirce,content,picture,dnum);
	    
		return "redirect:list";
	}
	//
	@RequestMapping(value="/login")
	public String dia9()
	{
		return "login";
	}
	@RequestMapping(value="/loglog", method=RequestMethod.POST)
	public String di10(HttpServletRequest request, Model mo)
	{
		String id, pw;
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		
		Service dao = sqlSession.getMapper(Service.class);
		MemberDTO mdto = dao.login(id, pw);
		
		if(mdto != null)
		{
			HttpSession hs = request.getSession();
			hs.setAttribute("mdto", mdto);
			hs.setAttribute("logon", true);
			
			return "redirect:index";
		}
		else
		{
			mo.addAttribute("result", "loginfail");
			
			return "redirect:login";
		}
	}
	@RequestMapping(value="/logout")
	public String dia11(HttpServletRequest request)
	{
		HttpSession hs = request.getSession();
		hs.removeAttribute("mdto");
		hs.removeAttribute("logon");
		
		return "redirect:login";
	}
	
	@RequestMapping(value="/newmem")
	public String dia12()
	{
		return "newmember";
	}
	@RequestMapping(value="/newsave", method=RequestMethod.POST)
	public String ko14(HttpServletRequest request)
	{
		String id, pw, name, phon;
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		name = request.getParameter("name");
		phon = request.getParameter("phon");
		
		Service dao = sqlSession.getMapper(Service.class);
		dao.newmem(id, pw, name, phon);
		
		return "redirect:login";
	}
	@RequestMapping(value="/listt")
	public String ko3(Model mo)
	{
		Service dao = sqlSession.getMapper(Service.class);
		ArrayList<DiaDTO> lista = dao.lista();
		
		mo.addAttribute("lista", lista);
		
		return "listaa";
	}
}
