package com.cognizant.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.swing.tree.RowMapper;
import javax.swing.tree.TreePath;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.cognizant.model.Student;

@Repository
public class StudentDaoImpl implements StudentDao {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public void insert(Student s) {
		String sql = "Insert into student(id,name,course) values(?,?,?)";

		int r = jdbcTemplate.update(sql,s.getId(),s.getName(),s.getCourse());
			
	}

	public void update(Student s) {
		
		String sql ="Update student set name = ?, course =? where id =?";
		
		int r = jdbcTemplate.update(sql,s.getName(),s.getCourse(),s.getId());
		
	}

	public void delete(int f)
	{
		String sql = "Delete from student where id =?";
		
		int r = jdbcTemplate.update(sql,f);
		
	}

	public List<Student> getAll() {
		// TODO Auto-generated method stub
		
		String sql ="Select * from student";
		
		List<Student> li = jdbcTemplate.query(sql, (rs,x) -> 
									new Student(rs.getInt("id"),rs.getString("name"),rs.getString("course")));
		return li;
	}

	public List<Student> findByCourse(String course) 
	{
		// TODO Auto-generated method stub
		String sql ="Select * from student where course =?";
		
		List<Student> li = jdbcTemplate.query(sql, new Object[] {course}, (rs,x) -> 
									new Student(rs.getInt("id"),rs.getString("name"),rs.getString("course")));
		return li;	
	}
	
	public List<Student> findByName(String name) 
	{
		String sql ="Select * from student where name =?";
		List<Student> li = jdbcTemplate.query(sql, new Object[] {name}, (rs,x) -> 
						new Student(rs.getInt("id"),rs.getString("name"),rs.getString("course")));
		return li;	
	}

}
