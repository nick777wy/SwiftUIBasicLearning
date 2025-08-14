//
//  5. Icons.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 14.08.25.
//

import SwiftUI

struct ___Icons: View {
    var body: some View {
        
        // I would recommend to use the app: SF-Symbols from apple-developer for all your Icons
        Image(systemName: "bell.slash.circle")
            .resizable()
            .renderingMode(.original)
            .font(.largeTitle)
            .symbolEffect(.wiggle.byLayer, options: .nonRepeating)
//            .renderingMode(.original)
        // you have to add ".resizeable()" if you are using ".aspectRatio()" or ".scaledToFill()" etc
        
//            .resizable()
//            .aspectRatio(contentMode: .fill)
//            .aspectRatio(contentMode: .fill)
//            .scaledToFill()
//            .font(.caption)
//            .font(.system(size: 200))
//            .foregroundColor(Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)))
            .frame(width: 300, height: 300)
//         ".clipped() means it don't get over the frame
//            .clipped()
    }
}

#Preview {
    ___Icons()
}
