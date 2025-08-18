//
//  10. Excamples.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 14.08.25.
//

import SwiftUI

struct _0_4_StackExamples: View {
    var body: some View {
        VStack (alignment: .center, spacing: 100, content: {
            VStack(alignment: .center, spacing: 20) {
                Text("5")
                    .font(.largeTitle)
                    .underline()
                Text("Items in your cart")
                    .font(.caption)
                    .foregroundColor(Color.gray)
            }
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                Text("1")
                    .font(.title)
                    .foregroundColor(Color.white)
            }
            Text("1")
                .font(.title)
                .foregroundColor(Color.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
            
        })
    }
}

#Preview {
    _0_4_StackExamples()
}
