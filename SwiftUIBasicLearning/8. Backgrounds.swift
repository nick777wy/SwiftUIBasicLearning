//
//  8. BackgroundsAndOverlay.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 14.08.25.
//

import SwiftUI

struct ___BackgroundsAndOverlay: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .frame(width: 400, height: 400)
            .background(
                Circle()
                    .fill(
                        RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius:1, endRadius: 120)
                    )
                    .frame(width: 200, height: 200)
            )
            .background(
                Circle()
                    .fill(
                        AngularGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .topLeading, angle: .degrees(180))
                        
                    )
                    .frame(width: 220, height: 220)
            )
            .background(
                RadialGradient(
                    gradient: Gradient(colors: [Color("CustomColor"), Color.white]),
                    center: .center,
                    startRadius: 100,
                    endRadius: 200
                )
            )
            
        
    }
}

#Preview {
    ___BackgroundsAndOverlay()
}
