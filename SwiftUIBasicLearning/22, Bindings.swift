//
//  22, Bindings.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 21.08.25.
//

import SwiftUI

// If we have a Variable that is required in two or more structs, we now need bindings.
// in this example we see we have in the "_2__Bindings" a var named "backgroundColor" but in the second one "ButtonView" we don't have one, but we have a Button which should change the backgroundColor of "_2__Bindings"
// How could we do resolve this problem? -> see code below

struct _2__Bindings: View {
    
    // here we have a familiar @State var backgroundColor
    // but we also have a other struct "ButtonView"
    @State var backgroundColor: Color = .green
    @State var title = "Hello Bindings!"
    
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            VStack{
                Text(title)
                    .bold()
                    .font(.largeTitle)
                    .padding(.vertical, 60)
                
                // when we have to give a parameter with @Binding, we always need an "$" before the var, to say swift that this is a binding.
                ButtonView(backgroundColor: $backgroundColor, title: $title)
                Spacer()
            }
            
        }
    }
}

struct ButtonView: View {
    
    // here we need a var in the initializer, so we have to create one.
    // now you maybe think "why don't we use @State instead @Binding?"
    // you can try it out but this won't work even if there isn't a Error
    // Because: State just gives ButtonView the color, but it will only change in ButtonView and not also in _2__Bindings. So we have to use @Binding to change both vars at the same time.
    
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = .blue
    @Binding var title: String
    
    var body: some View {
        Button {
            backgroundColor = .pink
            buttonColor = .orange
            title = "Button was pressen".uppercased()
        } label: {
            Text("button".uppercased())
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}

#Preview {
    _2__Bindings()
}
