//
//  26. AnimationTimings.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 21.08.25.
//

import SwiftUI

struct _6__AnimationTimings: View {
    
    
    // First of all: this page is not about the code, it is more about the methods you could use on "animation()" like linear, easeIn,...
    // the only thing that is intresting for you is here the line 65 with duration, so you know how you can change the duration of animations
    
    // and there are way more opptions which you don't see at the screen right now so if you want to see them, then play a bit with the functions and discover new options you didn't know before
    
    
    
    @State var isAnimating: Bool = false
    @State var timing: CGFloat  = 0.5
    var backgroundColor: Color = .pink
    
    var body: some View {
        
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack (spacing: 20) {
                Button {
                    isAnimating.toggle()
                } label: {
                    Text("Button" .uppercased())
                        .foregroundColor(.white)
                        .bold()
                        .font(.title)
                        .padding()
                        .background(
                            Capsule()
                                .fill(.black)
                                .stroke(Color.white, lineWidth: 5)
                        )
                }
                .position(x: UIScreen.main.bounds.width / 2, y: 100)
                .frame(maxWidth: .infinity, maxHeight: 200)
                
                
                
                ScrollView(.vertical, showsIndicators: true) {
                    
                    VStack (spacing: 20) {
                        
                        
                        Text("duration:")
                            .foregroundColor(.white)
                            .bold()
                            .font(.title)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(.black)
                                    .stroke(.white, lineWidth: 5)
                                    .frame(width: isAnimating ? 350 : 150)
                                // here you can use duration if you want it to have a specific time to animate
                                    .animation(.linear(duration: timing) , value: isAnimating)
                            )
                            .frame(maxWidth: .infinity)
                            .padding(.top)
                        
                        AnimationCreater(
                            title: "linear",
                            isAnimating: $isAnimating,
                            timing: $timing
                        ) {.linear(duration: $0)}
                        
                        AnimationCreater(
                            title: "ease in out",
                            isAnimating: $isAnimating,
                            timing: $timing
                        ) {.easeInOut(duration: $0)}
                        
                        AnimationCreater(
                            title: "ease in",
                            isAnimating: $isAnimating,
                            timing: $timing
                        ) {.easeIn(duration: $0)}
                        
                        AnimationCreater(
                            title: "ease out",
                            isAnimating: $isAnimating,
                            timing: $timing
                        ) {.easeOut(duration: $0)}
                        
                        AnimationCreater(
                            title: "bouncy",
                            isAnimating: $isAnimating,
                            timing: $timing
                        ) {.bouncy(duration: $0, extraBounce: 0)}
                        
                        AnimationCreater(
                            title: "spring",
                            isAnimating: $isAnimating,
                            timing: $timing
                        ) {.spring(duration: $0)}
                        
                        AnimationCreater(
                            title: "interactive spring",
                            isAnimating: $isAnimating,
                            timing: $timing,
                            animationBuilder: {.interactiveSpring(duration: $0)},
                            startWidth: 240,
                            endWidth: 400)
                        
                        AnimationCreater(
                            title: "interpolating spring",
                            isAnimating: $isAnimating,
                            timing: $timing,
                            animationBuilder: {.interpolatingSpring(duration: $0)},
                            startWidth: 270,
                            endWidth: 400
                            )
                            
                        
                        AnimationCreater(
                            title: "smooth",
                            isAnimating: $isAnimating,
                            timing: $timing
                        ) {.smooth(duration: $0)}
                        
                        AnimationCreater(
                            title: "snappy",
                            isAnimating: $isAnimating,
                            timing: $timing
                        ) {.snappy(duration: $0)}
                        
                        AnimationCreater(
                            title: "timing curve 1",
                            isAnimating: $isAnimating,
                            timing: $timing,
                            animationBuilder: {.timingCurve(.circularEaseInOut, duration: $0)},
                            startWidth: 200,
                            endWidth: 400
                        )
                        
                        AnimationCreater(
                            title: "timing curve 2",
                            isAnimating: $isAnimating,
                            timing: $timing,
                            animationBuilder: {.timingCurve(.circularEaseIn, duration: $0)},
                            startWidth: 200,
                            endWidth: 400
                        )
                        
                        AnimationCreater(
                            title: "timing curve 3",
                            isAnimating: $isAnimating,
                            timing: $timing,
                            animationBuilder: {.timingCurve(.circularEaseOut, duration: $0)},
                            startWidth: 200,
                            endWidth: 400
                        )
                        
                        AnimationCreater(
                            title: "timing curve 4",
                            isAnimating: $isAnimating,
                            timing: $timing,
                            animationBuilder: {.timingCurve(.linear, duration: $0)},
                            startWidth: 200,
                            endWidth: 400
                        )
                    }
                }
            }
        }
    }
}

struct AnimationCreater: View {
    
    var title: String
    @Binding var isAnimating: Bool
    @Binding var timing: CGFloat
//    var animation: Animation
    var animationBuilder: (Double) -> Animation
    var startWidth: CGFloat?
    var endWidth: CGFloat?

    
    var body: some View {
        Text(title.capitalized)
            .foregroundColor(.white)
            .bold()
            .font(.title)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(.black)
                    .stroke(.white, lineWidth: 5)
                    .frame(width: isAnimating ? endWidth ?? 350 : startWidth ?? 150)
                    .animation(animationBuilder(timing), value: isAnimating)
                    
            )
            .frame(maxWidth: .infinity)
            .padding(.top)
    }
}

#Preview {
    _6__AnimationTimings()
}
