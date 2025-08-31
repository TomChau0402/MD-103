//
//  Student Record ass2.swift
//  103 Course
//

import SwiftUI

struct ContentView: View {
    @State private var students: [Student] = [
        Student(name: "Alice", grades: [85.0, 90.0, 78.0]),
        Student(name: "Bob", grades: [92.0, 88.0, 95.0]),
        
    ]
    
    @State private var sortAscending = true
    @State private var showingAddStudent = false
    
    var courseAverage: Double {
        guard !students.isEmpty else { return 0.0 }
        let total = students.reduce(0.0) { $0 + $1.averageGrade }
        return total / Double(students.count)
    }
    
    var sortedStudents: [Student] {
        students.sorted {
            sortAscending ? $0.averageGrade < $1.averageGrade : $0.averageGrade > $1.averageGrade
        }
    }
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                // Header with course average
                VStack {
                    Text("Course Average: \(courseAverage, specifier: "%.2f")")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                }
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                
                // Sort button
                HStack {
                    Spacer()
                    Button(action: {
                        sortAscending.toggle()
                    }) {
                        HStack {
                            Image(systemName: sortAscending ? "arrow.up" : "arrow.down")
                            Text(sortAscending ? "Ascending" : "Descending")
                        }
                        .padding(8)
                        .background(Color.blue.opacity(0.1))
                        .cornerRadius(8)
                    }
                    .padding(.trailing)
                }
                .padding(.vertical, 8)
                .background(Color.gray.opacity(0.1))
                
                // Student list
                List {
                    ForEach(sortedStudents) { student in
                        StudentRow(student: student) { updatedGrades in
                            if let index = students.firstIndex(where: { $0.id == student.id }) {
                                students[index].grades = updatedGrades
                            }
                        }
                    }
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("Student Grades")
            .navigationBarItems(trailing: Button(action: {
                showingAddStudent = true
            }) {
                Image(systemName: "plus")
            })
            .sheet(isPresented: $showingAddStudent) {
                AddStudentView(students: $students)
            }
        }
    }
}

#Preview struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
