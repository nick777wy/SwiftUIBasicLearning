//
//  12. SpacingExamples.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 18.08.25.
//

import SwiftUI

struct _2__SpacingExamples: View {
    var body: some View {
        HStack (spacing: 0) {
            Image(systemName: "xmark")
            Spacer()
            Image(systemName: "gear")
        }
    }
}

#Preview {
    _2__SpacingExamples()
}
