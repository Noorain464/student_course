package com.example.student_course.service;

import com.example.student_course.model.Student;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class StudentService {
    private final Map<Long, Student> students = new HashMap<>();
    private long nextId = 1;

    public List<Student> getAllStudents() { return new ArrayList<>(students.values()); }
    public Student save(Student student) {
        if (student.getId() == null) student.setId(nextId++);
        students.put(student.getId(), student);
        return student;
    }
    public Optional<Student> getById(Long id) { return Optional.ofNullable(students.get(id)); }
}
