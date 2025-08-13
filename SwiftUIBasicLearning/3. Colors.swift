//
//  3. Colors.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 12.08.25.
//

import SwiftUI

struct ___Colors: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                Color.primary
                
                // Use "rgb" color then write before the rgb "(" "#colorLiteral" then you have a picker like the one below
//                Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))
                
                // UIColor are all colors that are in the apple UI used
//                Color(UIColor.systemRed)
                
                // you can also add custom colors:
                // you go to Asssets-folder
                // click on the "+" on the left bottom corner
                // then on "Color Set"
                // you can now edit it when you click on it, then fold out the right Inspectors and click on the edit symbol
                // then you can use them like this:
                Color("CustomColor")
            )
            // with frame you can edit the size and alignment            .frame(width: 300, height: 200)
            .frame(width: 300, height: 200)
        
            // how to add a shadow
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: -20, y: 20)
    }
}

#Preview {
    ___Colors()
}
