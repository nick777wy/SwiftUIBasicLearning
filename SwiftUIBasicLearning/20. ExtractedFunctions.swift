//
//  20. ExtractedFunctions.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 20.08.25.
//

import SwiftUI

struct _0__ExtractedFunctions: View {
    
    @State var backgroundColor: Color = .pink
    
    var body: some View {
        ZStack {
            // background
            backgroundColor.ignoresSafeArea()
            
            // content
            contentLayer
        }
    }
    func buttonPressed() {
        guard backgroundColor == .pink else {
            backgroundColor = .pink
            return
        }
        backgroundColor = .yellow
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
                .bold()
                .padding()
            Button {
                buttonPressed()
            } label: {
                Text("press me".uppercased())
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(.black)
                    )
            }
        }
    }
}












#Preview {
    _0__ExtractedFunctions()
}
