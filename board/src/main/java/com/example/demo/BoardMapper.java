package com.example.demo;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface BoardMapper {
	
	@Insert("insert into board(name,title,content,pwd,writeday) values(#{name},#{title},#{content},#{pwd},now())")
	public void write_ok(BoardVO vo);
	
	@Select("select * from board order by id desc")
	public ArrayList<BoardVO> list();
	
	@Update("update board set readnum=readnum+1 where id=#{param1}")
	public void readnum(String id);
	
	@Select("select * from board where id=#{param1}")
	public BoardVO content(String id);
	
}
