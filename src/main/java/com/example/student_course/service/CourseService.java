package com.example.student_course.service;


import com.example.student_course.model.Course;
import com.example.student_course.repository.CourseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CourseService {
    @Autowired
    private CourseRepository courseRepo;

    public List<Course> getAllCourses() { return courseRepo.findAll(); }
}