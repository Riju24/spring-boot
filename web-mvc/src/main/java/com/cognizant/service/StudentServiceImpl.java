package com.cognizant.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cognizant.dao.StudentDaoImpl;
import com.cognizant.model.Student;

@Service
public class StudentServiceImpl implements StudentService{
	@Autowired
	StudentDaoImpl studentDaoImpl;
	
	public void setStudentDaoImpl(StudentDaoImpl studentDaoImpl)
	{
		this.studentDaoImpl = studentDaoImpl;
	}
	public void insert(int id, String name, String course)
	{
		
		Student st = new Student(id,name,course);
		
		studentDaoImpl.insert(st);
	}
	
	public void update(int id, String name, String course)
	{
		Student e = new Student(id,name,course);
		
		studentDaoImpl.update(e);
	}
	
	
	public void delete(int id)
	{
		studentDaoImpl.delete(id);
		
	}
	
	public List<Student> getAll()
	{
		
		List<Student> list = studentDaoImpl.getAll();
		return list;
	}
	@Override
	public List<Student> discourse(String course) {
		
		List<Student> li = studentDaoImpl.findByCourse(course);
		return li;
	}
	@Override
	public List<Student> disName(String name) {
		
		List<Student> li = studentDaoImpl.findByName(name);
		return li;	}
	
	
	
}
