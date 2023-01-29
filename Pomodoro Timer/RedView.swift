//
//  ContentView.swift
//  Pomodoro Timer
//
//  Created by Mathis Zerari on 26/01/2023.
//

import SwiftUI

struct RedView: View {
    let skyBlue = Color(red: 0.4627, green: 0.8392, blue: 1.0)
    let radius = 10
    @State private var fetching = false
    // @AppStorage("redType") var redType: RedSwitch = .twentyfive
    @State var toggle25 = false
    @State var toggle50 = false
    
    var body: some View {
        HStack {
        
            VStack() {
                Circle()
                    .fill(toggle25 ? Color(.blue) : skyBlue)
                    .frame(width: 100, height: 100)
                    .overlay(Text("25 / 5")
                        .foregroundColor(.white))
                Circle()
                    // permet d'indiquer à quel point est remplit la barre
                    .trim(from: 0, to: 0.5)
                    .stroke(Color.blue, lineWidth: CGFloat(radius))
                    .frame(width: 90, height: 90)
                    .rotationEffect(.degrees(-90))
                    .offset(x: 0, y: -103.0)
            }
            .offset(x: -5, y: 50.0)
            .frame(width: 100, height: 100)
                
            VStack() {
                Circle()
                    .fill(toggle25 ? Color(.blue) : skyBlue)
                    .frame(width: 100, height: 100)
                    .overlay(Text("50 / 10")
                        .foregroundColor(.white))
            }
            .offset(x: 5, y: 2.5)
            .frame(width: 100, height: 100)
        }
        .padding()
    }
}

struct RedView_Previews: PreviewProvider {
    static var previews: some View {
        RedView()
            .frame(width: 250, height: 150)
    }
}
