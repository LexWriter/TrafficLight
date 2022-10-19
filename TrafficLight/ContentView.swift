//
//  ContentView.swift
//  TrafficLight
//
//  Created by Алексей on 19.10.2022.
//

import SwiftUI


struct ContentView: View {
    
    @State var opacityRed = 0.1
    @State var opacityYellow = 0.1
    @State var opacityGreen = 0.1
    @State var textButton = "START"
    
    var body: some View {
        VStack {
            Circle()
                .frame(width: 150)
                .foregroundColor(.red)
                .opacity(opacityRed)
            Circle()
                .frame(width: 150)
                .foregroundColor(.yellow)
                .opacity(opacityYellow)
            Circle()
                .frame(width: 150)
                .foregroundColor(.green)
                .opacity(opacityGreen)
            Spacer()
            Button{
                textButton = "NEXT"
                changeOpacity()
            } label: {
                Text(textButton)
                    .font(.title)
                    .padding(30)
            }
            .frame(width: 150, height: 80)
                                .font(.system(size: 30, weight: .bold, design: .default))
                                .foregroundColor(.white)
                                .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 4))
                                .background(Color.blue).cornerRadius(15)
        }
    }
    func changeOpacity(){
        if opacityRed == 0.1 && opacityYellow == 0.1 && opacityGreen == 0.1 {
            opacityRed = 1
        } else if opacityRed == 1 && opacityGreen == 0.1{
            opacityYellow = 1
            opacityRed = 0.1
        } else if opacityYellow == 1 && opacityRed == 0.1 {
            opacityGreen = 1
            opacityYellow = 0.1
        } else if opacityYellow == 0.1 && opacityGreen == 1 {
            opacityGreen = 0.1
            opacityRed = 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
