//
//  12. Spacing.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 18.08.25.
//

import SwiftUI

struct _2__Spacer: View {
    var body: some View {
        
        //Spacer()
        // Resize as big as possible
        // if you have more Spacers in for example "HStack" then all Spacers will be the same size -> like below
        
        HStack (spacing: 0) {
            
            // if you write nil in "minLength", you can also write nothing in the parameter because nil is default value
            // if you want "Spacer()" to have "0" as "minLength" write "minLength: 0"
            Spacer(minLength: nil)
                .frame(height: 10)
                .background(Color.orange)
            Rectangle()
                .frame(width: 50, height: 50)
            
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
        }
        
        .background(Color.yellow)
        .padding(.horizontal, 200)
        .background(Color.blue)
        
    }
}

#Preview {
    _2__Spacer()
}
