//
//  11. Padding.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 18.08.25.
//

import SwiftUI

struct _1__PaddingAndSpacer: View {
    var body: some View {
        
        // Use padding like this:
        //.padding(.selectedSides, parameter: Int)
        
        // Top part
        Text("Hello, World!, this is some more text")
            .background(Color.yellow)
            .padding()
        //            .padding(.all, 10)
            .padding(.leading, 40)
            .padding(.top, 20)
            .background(Color.blue)
        
        
        
        // Bottom Part
        VStack () {
            
            Text("Hello World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity ,alignment: .center)
                .padding(.vertical, 30)
                .padding(.horizontal, 10)
                .background(
                    AngularGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3176470697, green: 0.07450980693, blue: 0.02745098062, alpha: 1)), Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)), Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)),]), center: .topLeading, angle: .degrees(180 + 45))
                        .cornerRadius(35)
                )
                .padding(.top, 10)
                .padding(.horizontal, 10)
            
            Text("This  is the descrioption of what we will do on this screen. It is multiple lines and we will aling it to the leading edge")
                .padding(.all, 20)
                .background(
                    AngularGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3176470697, green: 0.07450980693, blue: 0.02745098062, alpha: 1)), Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)), Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)),]), center: .bottomTrailing, angle: .degrees(45))
                        .cornerRadius(35)
                )
                .cornerRadius(35)
                .padding(.bottom, 10)
                .padding(.horizontal, 10)
        }
        .background(
            Color.white
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.5), radius: 50, x: 10, y: 20)
        )
        .padding(.top, 70)
        .padding(.all, 10)
        .padding(.horizontal, 10)
    }
}

#Preview {
    _1__PaddingAndSpacer()
}
