//
//  29. SheetsAnimationsTrasnitionsAndMoreCombined.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 22.08.25.
//

import SwiftUI

// there are multiple possible options to add a new Screen
// in the following you will see 3 simple options to do it

struct _9__SheetsAnimationsTrasnitionsAndMoreCombined: View {
    
    @State var showSheetPage: Bool = false
    @State var showTransitionPage: Bool = false
    @State var showAnimationPage: Bool = false
    
    var backgroundColor: Color = Color(.systemBackground)
    
    var body: some View {
        
        ZStack {
            
            backgroundColor.ignoresSafeArea()
            
            VStack (spacing: 100) {
                
                
                
                // FIRST ONE is simply just a sheet
                Button {
                    showSheetPage.toggle()
                } label: {
                    Text("Show Sheet")
                        .font(.headline)
                        .padding()
                        .background(
                            Capsule()
                                .stroke(Color.blue, lineWidth: 2)
                        )
                }
                
                
                
                // SECOND ONE is a Transition
                Button {
                    showTransitionPage.toggle()
                } label: {
                    Text("Show Transition Page")
                        .font(.headline)
                        .padding()
                        .background(
                            Capsule()
                                .stroke(Color.blue, lineWidth: 2)
                        )
                }
                
                
                
                // THIRD ONE is a animation
                Button {
//                    withAnimation(.smooth) {
                    showAnimationPage.toggle()
//                    }
                } label: {
                    Text("Show Animation Page")
                        .font(.headline)
                        .padding()
                        .background(
                            Capsule()
                                .stroke(Color.blue, lineWidth: 2)
                        )
                }
            }
            
            
            // FIRST ONE:
            .sheet(isPresented: $showSheetPage) {
                SheetPage()
                    .presentationBackground(Color(.systemBackground))
            }
            
            
            // SECOND ONE:
            ZStack {
                if showTransitionPage {
                    TransitionPage(showPage: $showTransitionPage)
                        .transition(.move(edge: .bottom))
                        .padding(.top, 100)
                }
            }
            .animation(.smooth, value: showTransitionPage)
            .zIndex(2.0)
            
            // THIRD ONE:
            AnimationPage(showPage: $showAnimationPage)
                .offset(y: showAnimationPage ? 100 : UIScreen.main.bounds.height)
                .animation(.smooth, value: showAnimationPage)
            
        }
    }
}

#Preview {
    _9__SheetsAnimationsTrasnitionsAndMoreCombined()
}

// FIRST ONE:
struct SheetPage: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack (alignment: .topTrailing) {
            Color(uiColor: .systemBackground)
            Button {
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


// SECOND ONE:
struct TransitionPage: View {
    
    @Binding var showPage: Bool
    
    var body: some View {
        ZStack (alignment: .topTrailing) {
            Color(#colorLiteral(red: 0.1097864136, green: 0.1097805575, blue: 0.1177120879, alpha: 1)).ignoresSafeArea()
            Button {
                showPage.toggle()
            } label: {
                Text("finish".capitalized)
                    .font(.system(size: 24))
                    .bold()
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


// THIRD ONE:
struct AnimationPage: View {
    
    @Binding var showPage: Bool
    
    var body: some View {
        
        ZStack (alignment: .topTrailing) {
            Color(#colorLiteral(red: 0.1097864136, green: 0.1097805575, blue: 0.1177120879, alpha: 1)).ignoresSafeArea()
            Button {
                showPage.toggle()
            } label: {
                Text("finish".capitalized)
                    .font(.system(size: 24))
                    .bold()
            }
            .padding()
        }
    }
}
