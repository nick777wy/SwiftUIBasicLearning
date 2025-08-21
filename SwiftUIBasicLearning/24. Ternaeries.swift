//
//  24. Ternaeries.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 21.08.25.
//

import SwiftUI

struct _4__Ternaeries: View {
    
    @State var isStartingState: Bool = false
    @State var isStartingState2: Bool = false
    
    var body: some View {
        
        ZStack {
            Color.pink.ignoresSafeArea()
            
            VStack {
                
                // this is how we would normaly do it:
                Button {
                    isStartingState.toggle()
                } label: {
                    Text("Button: \(isStartingState.description)")
                        .foregroundColor(.black)
                        .bold()
                        .font(.title)
                }
                if isStartingState {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.green)
                        .frame(width: 200, height: 100)
                } else {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.blue)
                        .frame(width: 200, height: 100)
                }
                
                Spacer()
                
                
                // now we use here Ternary
                Button {
                    isStartingState2.toggle()
                } label: {
                    Text("Button Ternary used: \(isStartingState2.description)")
                        .foregroundColor(.black)
                        .bold()
                        .font(.title)
                }
                
                RoundedRectangle(cornerRadius: isStartingState2 ? 20 : 0)
                // Ternary
                // if "isStartingState2" is true, then ... else ...
                    .fill(isStartingState2 ? Color.black : Color.orange)
                    .frame(
                        width: isStartingState2 ? 350 : 200,
                        height: isStartingState2 ? 500 : 100
                    )
                
                
                Spacer()
            }
        }
    }
}

#Preview {
    _4__Ternaeries()
}
