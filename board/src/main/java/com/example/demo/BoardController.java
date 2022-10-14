package com.example.demo;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {

	@Autowired
	private BoardMapper mapper;
	
	@RequestMapping("/")
	public String home() {
		return "redirect:list";
	}
	
	@RequestMapping("write")
	public String write() {
		return "write";
	}
	
	@RequestMapping("write_ok")
	public String write_ok(BoardVO vo) {
		mapper.write_ok(vo);
		return "redirect:list";
	}
	
	@RequestMapping("list")
	public String list(Model model) {
		model.addAttribute("list", mapper.list());
		return "list";
	}
	
	@RequestMapping("readnum")
	public String readnum(HttpServletRequest req) {
		String id = req.getParameter("id");
		mapper.readnum(id);
		return "redirect:content?id=" + id;
	}
	
	@RequestMapping("content")
	public String content(HttpServletRequest req, Model model) {
		String id = req.getParameter("id");
		BoardVO vo = mapper.content(id);
		vo.setContent(vo.getContent().replace("\r\n", "<br>"));
		model.addAttribute("view", vo);
		return "content";
	}
	
}
