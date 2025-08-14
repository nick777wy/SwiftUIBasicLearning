//
//  4. Gradients.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 13.08.25.
//

import SwiftUI

struct ___Gradients: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.red
//            LinearGradient(
//                gradient: Gradient(colors:  [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1))]),
//                startPoint: .topLeading,
//                endPoint: .bottom)
                
//                RadialGradient(
//                    gradient: Gradient(colors: [Color.black, Color.white]),
//                    center: .topLeading,
//                    startRadius: 1,
//                    endRadius: 500
                
                AngularGradient(
                    gradient: Gradient(colors: [Color.red, Color.blue]),
                    center: .topLeading,
                    angle: .degrees(180 + 45))
            )
                
            .frame(width: 400, height: 600)
    }
}

#Preview {
    ___Gradients()
}
