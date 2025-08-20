//
//  17.2 SafeAreasExample.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 20.08.25.
//

import SwiftUI

struct _7_2_SafeAreasExample: View {
    var body: some View {
        
        ZStack {
            Rectangle()
                .fill(Color.red)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Text("Here is a Title")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    ScrollView(.vertical, showsIndicators: true) {
                        ForEach(0..<100) { index in
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white)
                                .frame(width: .infinity, height: 150)
                                .shadow(color: Color.black.opacity(0.5), radius: 20, x: 10, y: 10)
                                .padding(20)
                                .ignoresSafeArea()
                        }
                    }
                }
            }
        }
    }
    
}

#Preview {
    _7_2_SafeAreasExample()
}
