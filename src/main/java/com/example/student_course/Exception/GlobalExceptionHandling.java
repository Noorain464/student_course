package com.example.student_course.Exception;

import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GlobalExceptionHandling {
    @ExceptionHandler(DataIntegrityViolationException.class)
    public String handleConstraintViolation(Exception e, Model model) {
        model.addAttribute("error", "Data integrity error: " + e.getMessage());
        return "error";
    }
}