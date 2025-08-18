//
//  13. Initializer.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 18.08.25.
//

import SwiftUI

struct _3_1Initializer: View {
    
    // I would recommend you if you don't understand this to look at the other Swift-Project: "SwiftEinstiegVorlage" on my Git and look for the page: "9. Structs"
    
    // if you write this as Atribute then swift creates automatically an init for us
    let backgroundColor: Color
    let count: Int
    let title: String
    
    // this is the init what swift creates for us
    init(count: Int, title: String) {
        self.count = count
        self.title = title
        
        if title == "Apples" {
            self.backgroundColor = .red
        } else {
            self.backgroundColor = .green
        }
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    _3_1Initializer(count: 5, title: "Apples")
}
