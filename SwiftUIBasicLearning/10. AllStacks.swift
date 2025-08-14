//
//  10. Stacks.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 14.08.25.
//

import SwiftUI

struct _0__AllStacks: View {
    
    
    var body: some View {
        // Vstacks -> Vertical
        VStack {
            Rectangle().fill(Color.red)
            Rectangle().fill(Color.blue)
                .overlay(
                    Text("VStack")
                        .font(.system(size: 40))
                        .frame(height: .infinity))
            Rectangle().fill(Color.green)}
        
        // Hstacks -> Horizontal
        HStack {
            Rectangle().fill(Color.red)
            Rectangle().fill(Color.blue)
                .overlay(
                    Text("HStack")
                        .font(.system(size: 40))
                        .frame(width: 1000)
                        .rotationEffect(.degrees(90)))
            Rectangle().fill(Color.green)
        }
        
        // Zstacks -> zIndex (back to front)
        ZStack {
            Rectangle().fill(Color.red).frame(width: .infinity, height: .infinity)
            Rectangle().fill(Color.blue).frame(width: 300, height: 150)
            Rectangle().fill(Color.green).frame(width: 200, height: 75)
            Text("ZStack")
                .font(.system(size: 40))
                .frame(height: .infinity)
        }
    }
}

#Preview {
    _0__AllStacks()
}
