//
//  Binding.swift
//  103 Course
//

//
import SwiftUI
struct SwitchView: View {
    @State private var switchStatus = false
    
    var body: some View {
        VStack {
            Text(switchStatus ? "Switch is On" : "Switch is Off")
            
            ToggleView(status: $switchStatus)
        }
        
    }
}
//Chid View
struct ToggleView: View {
    @Binding var status: Bool
    
    var body: some View {
        Toggle("Switch", isOn: $status)
            .padding()
    
    }
}

#Preview {
    SwitchView()
}
