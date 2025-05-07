package com.example.student_course.controller;

import com.example.student_course.model.Student;
import com.example.student_course.service.CourseService;
import com.example.student_course.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class StudentController {
    @Autowired
    private StudentService studentService;
    @Autowired private CourseService courseService;

    @GetMapping("/students")
    public String getAllStudents(Model model) {
        model.addAttribute("students", studentService.getAllStudents());
        return "student-list";
    }

    @GetMapping("/students/add")
    public String showForm(Model model) {
        model.addAttribute("student", new Student());
        model.addAttribute("courses", courseService.getAllCourses());
        return "student-form";
    }

    @PostMapping("/students/save")
    public String save(@ModelAttribute Student student) {
        studentService.save(student);
        return "redirect:/students";
    }

    @GetMapping("/students/edit/{id}")
    public String edit(@PathVariable Long id, Model model) {
        Student student = studentService.getById(id).orElseThrow();
        model.addAttribute("student", student);
        model.addAttribute("courses", courseService.getAllCourses());
        return "student-form";
    }
}
