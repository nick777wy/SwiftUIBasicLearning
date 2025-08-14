//
//  9. Overlay.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 14.08.25.
//

import SwiftUI

struct ___Overlay: View {
    var body: some View {
        Circle()
            .fill(Color.pink)
            .frame(width: 100, height: 100)
            .overlay(
                Text("1")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
            )
            .background(
                Circle()
                    .fill(Color.purple)
                    .frame(width: 120, height: 120)
            )
    }
}

#Preview {
    ___Overlay()
}
