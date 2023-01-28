//
//  ContentView.swift
//  Pomodoro Timer
//
//  Created by Mathis Zerari on 26/01/2023.
//

import SwiftUI

struct RedView: View {
    let skyBlue = Color(red: 0.4627, green: 0.8392, blue: 1.0)
    @State private var fetching = false
    // @AppStorage("redType") var redType: RedSwitch = .twentyfive
    @State var toggle25 = false
    @State var toggle50 = false
    
    var body: some View {
        VStack {
            
//            HStack {
//                Text("Pomodoro Timer")
//                    .font(.largeTitle)
//                    .foregroundColor(toggle25 ? Color(.white) : skyBlue)
//            }
            
            VStack() {
                Text("25 / 5")
                
                Toggle (
                    isOn: $toggle25,
                    label: {
                    }
                )
                .toggleStyle(SwitchToggleStyle(tint: Color(.blue)))
            }
            .frame(width: 75, height: 50)
            .offset(x: -50, y: 0.0)
                
            VStack() {
                Text("50 / 10")
                
                Toggle (
                    isOn: $toggle50,
                    label: {
                    }
                )
                .toggleStyle(SwitchToggleStyle(tint: Color(.blue)))
            }
            .frame(width: 75, height: 50)
            .offset(x:40, y: -57.5)
            // Spacer()
        }
        .padding()
    }
}

struct RedView_Previews: PreviewProvider {
    static var previews: some View {
        RedView()
            .frame(width: 225, height: 150)
        
    }
}
