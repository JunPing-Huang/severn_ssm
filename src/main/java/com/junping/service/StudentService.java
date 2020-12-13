package com.junping.service;

import com.junping.domain.Student;

import java.util.List;

public interface StudentService {

    int addStudent(Student student);

    List<Student> findStudent();

}
