package com.board.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class BoardVo {
	private int     idx;
	private String  menu_id;
	private String  title;
	private String  cont;
	private String  writer;
	private String  regdate;
	private int     readcount;
}
