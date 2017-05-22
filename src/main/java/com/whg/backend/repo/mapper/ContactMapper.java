package com.whg.backend.repo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import com.whg.backend.bo.Contact;

public interface ContactMapper {

	@Select("SELECT * FROM contact WHERE id=#{id}")
	@ResultMap("com.whg.backend.repo.mapper.ContactMapper.ContactResult")
	Contact selectById(long id);

	@Insert("INSERT INTO contact(name, email, address, telephone) VALUES (#{name}, #{email}, #{address}, #{telephone})")
	@Options(useGeneratedKeys=true, keyProperty="id")
	int insert(Contact contact);
	
	int update(Contact contact);
	
	@Select("SELECT * FROM contact")
	@ResultMap("com.whg.backend.repo.mapper.ContactMapper.ContactResult")
	List<Contact> selectAll();
	
	@Select("SELECT MAX(id) from contact")
	int selectMaxId();
}
