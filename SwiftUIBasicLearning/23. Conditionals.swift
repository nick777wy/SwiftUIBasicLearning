//
//  23. Conditionals.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 21.08.25.
//

import SwiftUI

struct _3__Conditionals: View {
    
    // we can also use conditions in the UI
    // if you aren't used to conditions yet, i would recommend you to look at my other projekt "SwiftEinstieg"
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            Button("is loading: \(isLoading.description)".uppercased()) {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            }
            
            Button("Circle Button \(showCircle.description)") {
                // ".toggle()" is a method which is available on any Boolean
                showCircle.toggle()
            }
            
            Button("Rectangle Button: \(showRectangle.description)") {
                showRectangle.toggle()
            }
            
            if showCircle {
                Circle()
                    .frame(width: 100, height: 100)
            }
            
            if showRectangle {
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            if showCircle && showRectangle {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 200, height: 100)
            }
            
            Spacer()
        }
    }
}

#Preview {
    _3__Conditionals()
}
