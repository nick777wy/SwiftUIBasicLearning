//
//  25.2 Animations.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 21.08.25.
//

import SwiftUI

struct _5_2_Animations: View {
    
    @State var isAnimated: Bool = false
    @State var xaxis: CGFloat = 100
    
    var body: some View {
        
        VStack {
            Button("Button") {
                isAnimated.toggle()
//                xaxis = 1000
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 100 : 0)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
//                    width: xaxis,
                    width: isAnimated ? 200 : 100,
                    height: isAnimated ? 200 : 100
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
            
            // you also can write the same with ".animation(animation: , value:)" but there are some slight differences:
            // you have a "value:" as second parameter"
            // The old ".animation()" without value: is deprecated. Always use the new variant with "value: " instead, since it is more precise and future-proof
            
            // How "value: " works:
            // in "value: " you write a var or something.
            // when the var you have written in there, changes it's value, then the animation will start. ONLY THEN
            
            // the deprecated method without "value: " will start animating if anything in the whole View will change
                .animation(
                    Animation
                        .default
                    // if you want it to move Forever, you can use ".repeatForever() instead of ".repeatCount()"
                        .repeatForever(autoreverses: true),
                    value: isAnimated
                )
            Spacer()
        }
    }
}

#Preview {
    _5_2_Animations()
}
