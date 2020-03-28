package com.cognizant.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.cognizant.model.Student;

@Service
public interface StudentService {

	public void insert(int id, String name, String course);
	public void update(int id, String name, String course);
	public void delete(int id);
	public List<Student> getAll();
	public List<Student> discourse(String course);
	public List<Student> disName(String course);

}
