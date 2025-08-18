//
//  10. StacksUsed.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 14.08.25.
//

import SwiftUI

struct _0_2_HStack: View {
    var body: some View {
        
        // if spacing is not given then nil is alway the standard spacing
        // when you don't want to have spaces between the objects you have to set spacing to 0
        // HStack has "alignment, spacing, content"
        // but in alignment you don't have ".leading", ".trailing" as an option
        // it is Horizontal
        
        HStack(alignment: .top, spacing: nil, content: {
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
            Rectangle()
                .fill(Color.blue)
                .frame(width: 150, height: 150)
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
        })
    }
}

#Preview {
    _0_2_HStack()
}
