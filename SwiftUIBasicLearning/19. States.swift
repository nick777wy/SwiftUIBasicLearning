//
//  State.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 20.08.25.
//

import SwiftUI

struct _9_States: View {
    
    func check(color1: Color, color2: Color) -> Bool {
        return color1 == color2
    }
    
    //    State says that the var could change it value
    @State var
    buttonColor:
    Color = Color.blue
    @State var backgroundcolor: Color = Color.green
    @State var count: Int = 0
    @State var sizeOfCount: Int = 0
    @State var defaultColor: Color = Color(#colorLiteral(red: 0.2039257288, green: 0.7803449035, blue: 0.3490108252, alpha: 1))
    
    
    var body: some View {
        ZStack {
            backgroundcolor
                .ignoresSafeArea()
            
            VStack (spacing: 20) {
                Text("Title")
                    .font(.title)
                Button {
                    count = 0
                } label: {
                    Text("count : \(count)")
                        .font(.headline)
                        .underline()
                        .padding(10)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(buttonColor)
                        )
                }
                
                HStack (spacing: 20) {
                    Button {
                        backgroundcolor = .blue
                        count += 1
                        if(check(color1: backgroundcolor, color2: buttonColor)) {
                            buttonColor = defaultColor}
                    } label: {
                        Text("blue" .uppercased())
                            .font(.title)
                            .padding()
                            .background(
                                Capsule()
                                    .fill(buttonColor)
                                    .frame(width: 150)
                            )
                            .padding()
                    }
                    
                    
                    Button {
                        backgroundcolor = .purple
                        count += 1
                        if(check(color1: backgroundcolor, color2: buttonColor)) {
                            buttonColor = defaultColor}
                    } label: {
                        Text("purple" .uppercased())
                            .font(.title)
                            .padding()
                            .background(
                                Capsule()
                                    .fill(buttonColor)
                                    .frame(width: 150)
                            )
                            .padding()
                    }
                }
                Button {
                    backgroundcolor = defaultColor
                    count += 1
                    if(check(color1: backgroundcolor, color2: buttonColor)) {
                        buttonColor = Color.blue}
                } label: {
                    Text("default" .uppercased())
                        .font(.title)
                        .padding()
                        .background(
                            Capsule()
                                .fill(buttonColor)
                                .frame(width: 400)
                        )
                }
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    _9_States()
}
