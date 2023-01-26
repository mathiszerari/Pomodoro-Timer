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
            
            HStack {
                Text("Pomodoro Timer")
                    .font(.largeTitle)
                    .foregroundColor(toggle25 ? Color(.white) : skyBlue)
            }
            
            HStack(alignment: .center) {
                Text("25 / 15 Pomodoro session")
                
                Toggle (
                    isOn: $toggle25,
                    label: {
                    }
                )
                .toggleStyle(SwitchToggleStyle(tint: Color(.blue)))
            }
            .frame(width: 250, height: 50)
                
            HStack(alignment: .center) {
                Text("50 / 10 Pomodoro session")
                
                Toggle (
                    isOn: $toggle50,
                    label: {
                    }
                )
                .toggleStyle(SwitchToggleStyle(tint: Color(.blue)))
            }
            .frame(width: 250, height: 50)
            Spacer()
        }
        .padding()
    }
}

struct RedView_Previews: PreviewProvider {
    static var previews: some View {
        RedView()
            .frame(width: 275, height: 200)
        
    }
}
