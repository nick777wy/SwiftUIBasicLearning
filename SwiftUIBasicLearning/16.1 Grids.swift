//
//  Grids.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 19.08.25.
//

import SwiftUI

struct _6_1Grids: View {
    
    // GridItem simple: a datapoint which tells the grid how big the items have to be
    let column: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.fixed(70), spacing: nil, alignment: nil),
        GridItem(.fixed(20), spacing: nil, alignment: nil),
        GridItem(.fixed(70), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
    ]
    
    let column2: [GridItem] = [
        GridItem(.adaptive(minimum: 30, maximum: 100)),
        GridItem(.adaptive(minimum: 1, maximum: 100)),
        GridItem(.adaptive(minimum: 30, maximum: 100)),
    ]
    
    var body: some View {
        VStack {
            // we the column sets the width in this case
            LazyVGrid(columns: column) {
                ForEach (0..<20) { index in
                    Rectangle().frame(height: 50)
                }
            }
            LazyVGrid(columns: column2) {
                ForEach (0..<50) { index in
                    Rectangle().frame(height: 50)
                }
            }
        }
    }
}

#Preview {
    _6_1Grids()
}
