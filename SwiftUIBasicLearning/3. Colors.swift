//
//  3. Colors.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 12.08.25.
//

import SwiftUI

struct ___Colors: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                Color.primary
                Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    ___Colors()
}
