//
//  ScrollViewExamples.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 19.08.25.
//

import SwiftUI

struct _5_2ScrollViewExamples: View {
    var body: some View {
        ScrollView {
            
            // LazyVStack creates objects that are in the LazyStack only when they are needed.
            // simple: it creates here only rectangles when they are on screen so you have a better performance
            
            LazyVStack {
                ForEach(0..<100) { index in
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach (0..<20) { index in
                                    RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.black)
                                    .frame(width: 250, height: 200)
                                    .shadow(color: Color.gray, radius: 10, x: 3, y: 3)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    _5_2ScrollViewExamples()
}
