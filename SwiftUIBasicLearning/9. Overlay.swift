//
//  testing.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 14.08.25.
//

import SwiftUI

struct ___Overlay: View {
    var body: some View {
        Image(systemName: "airplane.departure")
            .foregroundColor(Color.white)
            .font(.system(size: 100))
            .background(
                Circle()
                    .fill(
                        AngularGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.4492097711, green: 0.2423260637, blue: 0.8632249186, alpha: 1)), Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)),]), center: .topLeading, angle: .degrees(180 + 45))
                    )
                    .frame(width: 200, height: 200)
                    .shadow(color: Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), radius: 30, y: 10)
            )
            .frame(width: 200, height: 200)
            .overlay(
                Circle()
                    .fill(Color.blue)
                    .frame(width: 70, height: 70)
                    .overlay(
                            Text("100")
                                .font(.system(size: 30))
                                .foregroundColor(Color.white)
                        , alignment: .center)
                    .shadow(color: Color.blue, radius: 20, y: 10)
                , alignment: .bottomTrailing
            )
    }
}

#Preview {
    ___Overlay()
}
