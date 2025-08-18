//
//  10. ZStack.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 14.08.25.
//

import SwiftUI

struct _0__ZStack: View {
    var body: some View {
        
        // ZStack doesn't has spacing because it is layerd
        // HStack has "alignment, spacing, content"
        // in alignment you have all options
        // it is in the zIndex (back to front)
        
        ZStack(alignment: .topLeading, content: {
            Rectangle().fill(Color.red).frame(width: 300, height: 300)
            Rectangle().fill(Color.blue).frame(width: 200, height: 200)
            Rectangle().fill(Color.green).frame(width: 100, height: 100)
        })
    }
}

#Preview {
    _0__ZStack()
}
 
