package com.board;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.board.menus.domain.MenuVo;
import com.board.menus.mapper.MenuMapper;

@SpringBootTest
class Board4ApplicationTests {

	@Autowired
	private  MenuMapper   menuMapper;
	
	@Test
	void contextLoads() {
	}
	
	@Test
	void testMenuList() {
		
		List<MenuVo> menuList = menuMapper.getMenuList();
		System.out.println( menuList );
		
	}

}
