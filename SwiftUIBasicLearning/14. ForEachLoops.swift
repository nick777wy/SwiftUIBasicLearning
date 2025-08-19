//
//  ForEach.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 19.08.25.
//

import SwiftUI

struct _4ForEachLoops: View {
    var body: some View {
        
        // ein normaler ForLoop ist nicht in der UI möglich, daher müssen wir einen ForEachLoop nehmen
        // a normal For Loop is not possible in the UI. Thats why we heve to use a ForEach Loop
        
        let data: [String] = ["Apple", "Banana", "Orange", "Pineapple"]
        
        VStack {
            // NOT POSSIBLE AND INCORRECT
//            for dataItem in data {
//                Text("\(dataItem) : \(dataItem)")
//            }
            
            // possible and the only way to do a for Loop
            ForEach(0..<10) { index in
                Text("hi : \(index.description)")
            }
            
            ForEach(0..<10) { index in
                HStack {
                    Circle().frame(width: 15)
                    Text("index is:").kerning(0)
                    Text("\(index)").bold()
                }
            }
            
            ForEach(data.indices) { index in
                Text("\(data[index]) : \(index)")
            }
            
        }
    }
}

#Preview {
    _4ForEachLoops()
}
