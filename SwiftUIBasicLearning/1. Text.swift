//
//  1. Text.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 12.08.25.
//

import SwiftUI

struct ___Text: View {
    var body: some View {
        Text("This is a welcome Text for you to get started with SwiftUI."
            .capitalized
//            .uppercased()
//            .lowercased()
        )
        
        // the order you add the modifier does matter!
        
        // ".font(.body)" and other like this will change size automatically with the system settings from the device
        
//            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
//            .underline()
//            .italic()
//            .strikethrough()
//            .underline(true, color: Color.red)
//            .strikethrough(true, color: Color.green)
//            .font(.system(
//                size: 24,
//                weight: .semibold,
//                design: .monospaced))
        
            // Space between letters
            .kerning(10)
            
            // Space between lines
            .baselineOffset(50.0)
        
            // where the line starts (center, leading=left,...)
            .multilineTextAlignment(.leading)
        
            // Color for the Text
            .foregroundColor(.red)
        
            // you can change the frame
            .frame(width: 200, height: 100, alignment: .leading)
            
            
    }
}

#Preview {
    ___Text()
}
