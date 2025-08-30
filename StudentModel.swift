//
//  StudentModel.swift
//  103 Course
//

import Foundation

struct StudentRecord: Identifiable {
    let id = UUID()
    var name: String
    var grades: [Double]
    var averageGrade: Double {
        guard !grades.isEmpty else { return 0.0 }
        return grades.reduce(0, +) / Double(grades.count)
    }
    
    init(name: String, grades: [Double]) {
        self.name = name
        self.grades = grades
    }
}
