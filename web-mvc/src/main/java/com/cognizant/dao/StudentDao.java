package com.cognizant.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.cognizant.model.Student;

@Repository
public interface StudentDao {

	public void insert(Student s);
	public void update(Student s);
	public void delete(int f);
	public List<Student> getAll();
	public List<Student> findByCourse(String course);
	public List<Student> findByName(String name);
}
