//
//  27. Transitions.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 22.08.25.
//

import SwiftUI

// Important things you should know about SwiftUI transitions:

// Transitions only work in combination with animations.
// A transition is triggered only when a view is inserted or removed.

// In this example, the transition is controlled by the `if` statement:
// if `showButton` is true: the view is created inside the if-block,
// if it is false: the view is removed and is triggering the removal transition.

// BE CAREFUL:
// when using a ZStack (like here):
// If the if-statement were not inside the VStack, the removal transition might not work correctly.
// You can try it:
// - Comment out line 70 and uncomment line 57
// - Then you’ll see that the removal transition doesn’t play.
//
// Why does this happen?
// When the view inside the if-statement is added, it appears in the foreground as expected because of the ZStack. But on removal, SwiftUI immediately removes the view from the hierarchy before the transition finishes.
// It’s not really “put in the background”, it’s just removed quickly.

// You can observe this further:
// - Uncomment line 34 and run
// - The insertion works perfectly, and the removal works too, but sometimes it may appear behind other views if the layout shifts.

// Tip: This behavior depends on layout and view hierarchy.
// In simple cases like this, it works without zIndex, but in more complex stacks, you might need `.zIndex()` to keep the removed view in the foreground during its transition.

struct _7__Transitions: View {
    
    @State var showButton = false
    var backgroundColor: Color = Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
    
    var body: some View {
        
        ZStack (alignment: .bottom) {
            //
            backgroundColor.ignoresSafeArea()
//                .frame(width: 100)
            
            VStack () {
                Button("Button") {
                    withAnimation(.smooth) {
                        showButton.toggle()
                    }
                }
                
                Spacer()
//            }
                
                if showButton {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(
                            height: UIScreen.main.bounds.height * 0.5)
//                        .transition(.opacity.combined(with: .scale))
//                        .transition(.move(edge: .leading))
//                        .transition(.slide)
                        .transition(.asymmetric(
                            insertion: .scale,
                            removal: .move(edge: .bottom)))
                    
                }
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    _7__Transitions()
}
