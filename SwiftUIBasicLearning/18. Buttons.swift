//
//  18.1 Buttons.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 20.08.25.
//

import SwiftUI

struct _8_Buttons: View {
    
    // @State means the value could change
    @State var title: String = "This is a title"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            Button("Press me!") {
                self.title = "Button was pressed"
            }
            .accentColor(.red)
            
            Button {
                self.title = "Button #2 was pressed"
            } label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            }
            
            Button(action: {
                self.title = "Button #3 was pressed"
            }, label: {
                Circle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.white)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.system(size: 40))
                            .foregroundColor(Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)))
                        , alignment: .center)
            })
            
            Button {
                self.title = "Button #4 was pressed"
            } label: {
                Text("Finish" .uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .cornerRadius(20)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
            }



        }
    }
}

#Preview {
    _8_Buttons()
}
