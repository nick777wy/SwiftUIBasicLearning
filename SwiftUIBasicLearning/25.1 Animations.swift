//
//  25. Animations.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 21.08.25.
//

import SwiftUI

// with "withAnimation()" you can now animate basic animations like changing color or size or position or completely different things. Have fun and try a lot out.
// below you can see how you could use it

struct _5_1_Animations: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        
        VStack {
            Button("Button") {
                //                withAnimation(.bouncy) {
                // you can also add a delay, but when you add delay you need Animation before it then the condition and then the delay.
                // without delay you could also just write: "withAnimation(.default)"
                withAnimation(
                    Animation
                        .default
                        .delay(0.0)
                    // autoreverses means it will animate back or just jump back.
                    // best you test it out yourself to see it, so set it to false
                        .repeatCount(3, autoreverses: true)
                ) {
                    isAnimated.toggle()
                }
            }
            Spacer()
            // if the cornerRadius is exactly the half of the width and height, you get a Circle
            RoundedRectangle(cornerRadius: isAnimated ? 100 : 0)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 200 : 100,
                    height: isAnimated ? 200 : 100
                )
            // offset is the position changing on which axis and how much
                .rotationEffect(.degrees(isAnimated ? 360 : 0))
                .offset(
                    y: isAnimated ? 300 : 0,
                )
            Spacer()
        }
    }
}

#Preview {
    _5_1_Animations()
}
