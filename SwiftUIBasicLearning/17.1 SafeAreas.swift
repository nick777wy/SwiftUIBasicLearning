//
//  17.1 SafeAreas.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 19.08.25.
//

import SwiftUI

// if you want to fill the complete screen or screen beyond the safe areas, you can use "edgesIgnoringSafeArea()"(OLD) or ".ignoresSafeArea()"(NEW) to ignore them

// WARNING: "Text()" is with .frame(maxWidth: .infinity, maxHeight: .infinity) already ignoring the safeAreas, but when you use Rectangle,Circle,... you need IgnoreSafeArea()

struct _7_1_SafeAreas: View {
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            
            VStack {
                Text("Hello, World!")
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.red)
            // um die SafeArea teilweise einhalten zu können mit dem VStack, könnte man ein padding() hinzufügen um sie wiederherstellen zu können
            .padding(.vertical)
        }
    }
}

#Preview {
    _7_1_SafeAreas()
}
