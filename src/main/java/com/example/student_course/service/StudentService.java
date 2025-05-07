package com.example.student_course.service;

import com.example.student_course.model.Student;
import com.example.student_course.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class StudentService {
    @Autowired
    private StudentRepository studentRepo;

    public List<Student> getAllStudents() { return studentRepo.findAll(); }
    public Student save(Student student) { return studentRepo.save(student); }
    public Optional<Student> getById(Long id) { return studentRepo.findById(id); }
}
