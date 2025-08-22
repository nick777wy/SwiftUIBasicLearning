//
//  28. Sheets.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 22.08.25.
//

import SwiftUI

// sheet is basically a transistion from screen1 to screen2

struct _8__Sheets: View {
    
    var backgroundColor: Color = Color(.systemBackground)
    @State var showSheet: Bool = false
    @State var showFullScreen: Bool = false
    
    var body: some View {
        
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack (spacing: 100) {
                Button {
                    showSheet.toggle()
                } label: {
                    Text("sheet".uppercased())
                        .foregroundColor(backgroundColor)
                        .font(.headline)
                        .padding()
                        .background(
                            Color(.secondaryLabel).cornerRadius(20)
                        )}
                
                Button {
                    showFullScreen.toggle()
                } label: {
                    Text("fullScreen".uppercased())
                        .foregroundColor(backgroundColor)
                        .font(.headline)
                        .padding()
                        .background(
                            Color(.secondaryLabel).cornerRadius(20)
                        )}
            }
            
            .fullScreenCover(isPresented: $showFullScreen, content: {
                SecondScreen()
            })
            
            .sheet(isPresented: $showSheet) {
                // don't add any logics in here, because you can run very easy in errors (no if/else and other conditionals)
                SecondScreen()
                // here you can change the height modes
                    .presentationDetents([.medium, .large])
            }
        }
    }
}

struct SecondScreen: View {
    
    // the Annotation @Environment() is basically
    
    // 1. oppertunity (OLD)
//    @Environment(\.presentationMode) var presentationMode
    
    
    // 2. oppertunity (NEW)
    @Environment(\.dismiss) var dismiss
    
    var backgroundColor: Color = Color(.systemBackground)
    
    var body: some View {
        ZStack (alignment: .topTrailing) {
            
            backgroundColor.ignoresSafeArea()
            
            Button {
                
                // 1. oppertunity (OLD)
//                presentationMode.wrappedValue.dismiss()
                
                
                // 2. oppertunity (NEW)
                // dismiss.callAsFunction()
                dismiss()
                
            } label: {
                Text("finish".capitalized)
                    .font(.system(size: 24))
                    .bold()
            }
            .padding()
        }
    }
}

#Preview {
    _8__Sheets()
}

