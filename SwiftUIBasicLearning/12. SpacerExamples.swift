//
//  12. SpacingExamples.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 18.08.25.
//

import SwiftUI

struct _2__SpacerExamples: View {
    var body: some View {
        HStack (spacing: 0) {
            Image(systemName: "xmark")
                .padding(.all, 5)
            Spacer()
            Image(systemName: "gear")
                .padding(.all, 5)
        }
        .font(.title)
//        .background(Color.yellow)
        .padding(.horizontal, 10)
//        .background(Color.blue)
        Spacer()
        
        Rectangle()
            .frame(height: 55)
    }
}

#Preview {
    _2__SpacerExamples()
}
