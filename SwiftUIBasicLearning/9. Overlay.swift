//
//  9. Overlay.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 14.08.25.
//

import SwiftUI

struct ___Overlay: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [ Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: Color("CustomColor"), radius: 10, x: 0.0, y: 10)
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(Color.white)
                            )
                            .shadow(color: Color("CustomColor"), radius: 10, x: 5, y: 5)
                        , alignment: .bottomTrailing)
            )
    }
}

#Preview {
    ___Overlay()
}
