package com.example.student_course.service;

import com.example.student_course.model.Course;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class CourseService {
    private final Map<Long, Course> courses = new HashMap<>();
    private long nextId = 1;

    public List<Course> getAllCourses() { return new ArrayList<>(courses.values()); }
    public Course save(Course course) {
        if (course.getId() == null) course.setId(nextId++);
        courses.put(course.getId(), course);
        return course;
    }
    public Optional<Course> getById(Long id) { return Optional.ofNullable(courses.get(id)); }
}