//
//  Student record ass#1.swift
//  103 Course
//

//

import Foundation

func manageStudentRecords() {
    // Array to store student names
    let students = ["Alice Johnson", "Bob Smith", "Carol Williams", "David Brown", "Emma Davis"]
    
    // Dictionary with predefined grades
    let studentGrades: [String: [Double]] = [
        "Alice Johnson": [85.0, 92.5, 78.0, 88.5, 91.0],
        "Bob Smith": [72.0, 68.5, 81.0, 75.5, 79.0],
        "Carol Williams": [95.0, 89.5, 92.0, 87.5, 90.0],
        "David Brown": [65.0, 71.5, 68.0, 74.5, 70.0],
        "Emma Davis": [88.0, 94.5, 86.0, 91.5, 89.0]
    ]
    
    // Print summary for each student
    print("STUDENT GRADE SUMMARY")
 
    
    for student in students {
        if let grades = studentGrades[student] {
            let average = grades.reduce(0, +) / Double(grades.count)
            let formattedAverage = String(format: "%.2f", average)
            
            print("Student \(student): Average grade = \(formattedAverage)")
        }
    }
}


