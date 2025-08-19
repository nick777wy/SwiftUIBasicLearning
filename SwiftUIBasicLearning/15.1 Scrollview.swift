//
//  Scrollview.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 19.08.25.
//

import SwiftUI

struct _5_1Scrollview: View {
    var body: some View {
        
        // first one you can choose the axis like horizontal or vertical
        // on showIndicators you can choose if you want to have the bar at the side when scrolling or not
        
        ScrollView (.horizontal, showsIndicators: true, content: {
            HStack(spacing: nil) {
                ForEach(0..<100) { index in
                    Rectangle().fill(Color.red).frame(width: 50, height: 500)
                }
            }
        })
    }
}

#Preview {
    _5_1Scrollview()
}
