//
//  16.2 GridsExamples.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 19.08.25.
//

import SwiftUI

let columns: [GridItem] = [
    GridItem(.flexible(), spacing: 6, alignment: nil),
    GridItem(.flexible(), spacing: 6, alignment: nil),
    GridItem(.flexible(), spacing: 6, alignment: nil),
]

struct _6_2_GridsExamples: View {
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(Color.orange)
                .frame(height: 200)
            
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 6,
                      // with pinnedViews you can pinn the current header or footer
                      pinnedViews: [.sectionHeaders],
                      content: {
                Section(header:
                            Text("Section 1")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.blue)
                    .padding()
                ) {
                    ForEach(0..<21) { index in
                        Rectangle()
                            .frame(height: 150)
                    }
                }
                
                Section(header:
                            Text("Section 2")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.red)
                    .padding()
                ) {
                    ForEach(0..<21) { index in
                        Rectangle()
                            .fill(Color.green)
                            .frame(height: 150)
                    }
                }
            })
        }
        
    }
}

#Preview {
    _6_2_GridsExamples()
}
