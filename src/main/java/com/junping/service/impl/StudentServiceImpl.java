package com.junping.service.impl;

import com.junping.dao.StudentDao;
import com.junping.domain.Student;
import com.junping.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {

    //  引用类型自动注入 @Autowired @Resource

    @Autowired
    private StudentDao studentDao;

    @Override
    public int addStudent(Student student) {
        int result = studentDao.insertStudent(student);
        return result;
    }

    @Override
    public List<Student> findStudent() {

        return studentDao.selectStudents();
    }
}
