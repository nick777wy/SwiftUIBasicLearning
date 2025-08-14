//
//  6. Images.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 14.08.25.
//

import SwiftUI

struct ___Images: View {
    var body: some View {
        // first of all add your image to the Assets package
        // then you can type in the exact name of you image in:
        Image("ChatGPTimage")
//            .renderingMode(.template)
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFill()
            .frame(width: 300, height: 300)
            .clipped()
//            .cornerRadius(150)
            .clipShape(
//                Circle()
                RoundedRectangle(cornerRadius: 20)
//                Ellipse()
            )
    }
}

#Preview {
    ___Images()
}
