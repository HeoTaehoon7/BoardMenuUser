package com.board.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.board.domain.BoardVo;
import com.board.mapper.BoardMapper;
import com.board.menus.domain.MenuVo;
import com.board.menus.mapper.MenuMapper;

@Controller
@RequestMapping("/Board")
public class BoardController {
	
	@Autowired
	private  MenuMapper   menuMapper;
	
	@Autowired
	private  BoardMapper  boardMapper;
	
	//  /Board/List
	@RequestMapping("/List")
	public  ModelAndView  list(MenuVo menuVo) {
		
		// 메뉴 조회
		List<MenuVo>   menuList  = menuMapper.getMenuList();
		
		// 목록 조회
		List<BoardVo>  boardList = boardMapper.getBoardList( menuVo );
		
		ModelAndView  mv       = new ModelAndView();
		mv.addObject( "menuList",   menuList   );
		mv.addObject( "boardList",  boardList  );
		mv.setViewName("board/list");
		
		return  mv;
	}
	
	//  /Board/WriteForm
	@RequestMapping("/WriteForm/{menu_id}")
	public  ModelAndView   writeForm(
			@PathVariable("menu_id") String menu_id) {
		// @PathVariable("menu_id") 안쓰면 오류발생
		// Name for argument of type [java.lang.String] not specified ...
		
		// 메뉴 조회
		List<MenuVo>   menuList  = menuMapper.getMenuList();
		
		ModelAndView    mv    = new ModelAndView();	
		mv.addObject("menuList",   menuList   );
		mv.addObject("menu_id", menu_id);
		mv.setViewName("board/write");
		return  mv;
		
	}
	
	//  /Board/Write
	@RequestMapping("/Write")
	public  ModelAndView  write( BoardVo  boardVo ) {
		
		System.out.println(  boardVo );
		// 저장
		boardMapper.insertBoard( boardVo );		
		String   menu_id = boardVo.getMenu_id();
		
		// 데이터를 가지고 이동한다
		ModelAndView   mv   =  new  ModelAndView();
		mv.setViewName("redirect:/Board/List?menu_id=" + menu_id );
		return   mv;
	}
	
	//  /Board/View
	@RequestMapping("/View")
	public  ModelAndView  view( BoardVo  boardVo ) {		
		
		// 메뉴 조회
		List<MenuVo>   menuList  = menuMapper.getMenuList();
				
		// 조회
		BoardVo        vo        = boardMapper.getBoard( boardVo );		
		
		// 데이터를 가지고 이동한다
		ModelAndView    mv    = new ModelAndView();	
		mv.addObject("menuList",   menuList   );		
		mv.addObject("vo", vo);
		mv.setViewName("board/view");
		return   mv;
	}
	
	//  /Board/UpdateForm
	@RequestMapping("/UpdateForm")
	public  ModelAndView   updateForm(BoardVo boardVo) {
		
		// 메뉴 조회
		List<MenuVo>   menuList  = menuMapper.getMenuList();
		
		// 조회
		BoardVo        vo        = boardMapper.getBoard( boardVo );	
		
		// 데이터를 가지고 이동한다
		ModelAndView   mv   =  new  ModelAndView();
		mv.addObject("menuList",   menuList   );		
		mv.addObject("vo",         vo         );
		mv.setViewName("board/update");
		return   mv;
		
	}
	
	//  /Board/Write
	@RequestMapping("/Update")
	public  ModelAndView  update( BoardVo  boardVo ) {		
		// 저장
		boardMapper.updateBoard( boardVo );		
		
		String   menu_id = boardVo.getMenu_id();
		
		// 데이터를 가지고 이동한다
		ModelAndView   mv   =  new  ModelAndView();
		mv.setViewName("redirect:/Board/List?menu_id=" + menu_id);
		return   mv;
	}
	
	//  /Board/Delete
	@RequestMapping("/Delete")
	public  ModelAndView  delete( BoardVo  boardVo ) {		
		// 저장
		boardMapper.deleteBoard( boardVo );		
		
		String   menu_id = boardVo.getMenu_id();
		
		// 데이터를 가지고 이동한다
		ModelAndView   mv   =  new  ModelAndView();
		mv.setViewName("redirect:/Board/List?menu_id=" + menu_id);
		return   mv;
	}
	
	
}
