//
//  10. HStack.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 14.08.25.
//

import SwiftUI

struct _0_1_VStack: View {
    var body: some View {
        
        // if spacing is not given then nil is alway the standard spacing
        // when you don't want to have spaces between the objects you have to set spacing to 0
        // VStack has "alignment, spacing, content"
        // in alignment you have all options
        // it is Vertical
        
        VStack(alignment: .leading, spacing: 0, content: {
            Rectangle()
                .fill(Color.red)
                .frame(width: 200)
            Rectangle()
                .fill(Color.blue)
                .frame(width: 150)
            Rectangle()
                .fill(Color.green)
                .frame(width: 100)
        })
    }
}

#Preview {
    _0_1_VStack()
}
