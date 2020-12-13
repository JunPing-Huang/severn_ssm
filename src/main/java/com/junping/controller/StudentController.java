package com.junping.controller;

import com.junping.domain.Student;
import com.junping.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping(value = "/student")
public class StudentController {

    @Autowired
    private StudentService studentService;
    @RequestMapping(value = "/addStudent.do")
    public ModelAndView addStudent(Student student){
        System.out.println(student);

    ModelAndView mv = new ModelAndView();
    int result = studentService.addStudent(student);
        System.out.println("result" + result);

    String tips = "注册失败";

    if (result > 0 ){
        tips = "注册 【" +student.getName() +" 】学生成功";
    }

    mv.addObject("tips",tips);
    mv.setViewName("result");

        return mv;
    }

    @RequestMapping(value = "/queryStudent.do")
    @ResponseBody
    public List<Student> queryStudent(){

        return studentService.findStudent();
    }
}
