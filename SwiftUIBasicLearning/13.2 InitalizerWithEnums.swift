//
//  13. InitalizerWithEnums.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 18.08.25.
//

import SwiftUI

struct _3_2InitalizerWithEnums: View {
    // I would recommend you if you don't understand this to look at the other Swift-Project: "SwiftEinstiegVorlage" on my Git and look for the page: "9. Structs"
    
    // if you write this as Atribute then swift creates automatically an init for us
    let backgroundColor: Color
    let count: Int
    let fruit: Fruit
    
    // this is the init what swift creates for us
    init(fruit: Fruit, count: Int) {
        self.fruit = fruit
        self.count = count
        
        if fruit == .apple {
            self.backgroundColor = .red
        } else if fruit == .banana {
            self.backgroundColor = .yellow
        } else if fruit == .orange {
            self.backgroundColor = .orange
        } else if fruit == .pear {
            self.backgroundColor = .pink
        } else if fruit == .grape {
            self.backgroundColor = .purple
        } else {
            self.backgroundColor = .green
        }
        
    }
    
    enum Fruit {
        case apple
        case banana
        case orange
        case pear
        case grape
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text("\(fruit)")
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    VStack {
    _3_2InitalizerWithEnums(fruit: .banana, count: 27)
    _3_2InitalizerWithEnums(fruit: .grape, count: 27)
    _3_2InitalizerWithEnums(fruit: .apple, count: 27)
    }
}
