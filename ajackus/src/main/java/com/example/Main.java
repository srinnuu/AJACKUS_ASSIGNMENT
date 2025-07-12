package com.example;

import static spark.Spark.*;
import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;

import java.util.*;

// ...existing code...

public class Main {
    public static void main(String[] args) {
        // Initialize the application and set up the server to serve the employee directory
        System.out.println("Employee Directory Application is starting...");

        // Set static file location for CSS/JS
        staticFiles.location("/static");

        // Route for dashboard
        get("/dashboard", (req, res) -> {
            Map<String, Object> model = new HashMap<>();
            model.put("employees", getMockEmployees());
            return new ModelAndView(model, "dashboard.ftl");
        }, new FreeMarkerEngine());
    }

    // Mock employee data
    private static List<Map<String, String>> getMockEmployees() {
        List<Map<String, String>> employees = new ArrayList<>();
        employees.add(createEmployee("E001", "Alice", "Smith", "alice.smith@example.com", "Engineering", "Developer"));
        employees.add(createEmployee("E002", "Bob", "Johnson", "bob.johnson@example.com", "HR", "Manager"));
        employees.add(createEmployee("E003", "Carol", "Williams", "carol.williams@example.com", "Finance", "Analyst"));
        return employees;
    }

    private static Map<String, String> createEmployee(String id, String first, String last, String email, String dept, String role) {
        Map<String, String> emp = new HashMap<>();
        emp.put("id", id);
        emp.put("firstName", first);
        emp.put("lastName", last);
        emp.put("email", email);
        emp.put("department", dept);
        emp.put("role", role);
        return emp;
    }
}