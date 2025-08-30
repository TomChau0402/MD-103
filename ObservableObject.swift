//
//  ObservableObject.swift
//  103 Course
//
//  Created by Amy Vu on 8/30/25.
//

import SwiftUI

class UserModel: ObservableObject {
    @Published var name: String = "Tom"
    @Published var age: Int = 33
}
struct MainView: View {
    @StateObject var userModel: UserModel = UserModel()
    @StateObject var userModelTwo = UserModel()
    var body: some View {
       // ProfileView(user: userModel)
        
        
        
    }
}
#Preview {
}
