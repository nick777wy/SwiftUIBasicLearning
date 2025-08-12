//
//  2. Shapes.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 12.08.25.
//

import SwiftUI

struct ___Shapes: View {
    var body: some View {
        
        // you can create new Forms and etc by clicking the "+" in the upper right corner
        
//        Circle()
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: 10)
        
//                            .fill(Color.blue)
//                            .stroke(Color.orange, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
            .trim(from: 0.2, to: 1.0)
            .stroke(Color.purple, lineWidth: 50)
            .frame(width: 300, height: 200)        
    }
}

#Preview {
    ___Shapes()
}
