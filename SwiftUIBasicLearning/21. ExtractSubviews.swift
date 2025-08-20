//
//  ExtractSubviews.swift
//  SwiftUIBasicLearning
//
//  Created by Nick Wysmyk on 20.08.25.
//

import SwiftUI

// You can extract any code you have in the "body: some View" just by right clicking it and go to "Extract Subview"
// The you will automatically get a completely new struct from View

struct _1_ExtractSubviews: View {
    var body: some View {
        ZStack {
            Text("edifosöjf")
            BackgroundColor()
            myItems()
        }
    }
}

#Preview {
    _1_ExtractSubviews()
}





struct BackgroundColor: View {
    var body: some View {
        Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)).ignoresSafeArea()
    }
}

struct myItem: View {
    var count: Int
    var title: String
    var color: Color
    var body: some View {
        VStack {
            Text("\(count)").underline()
            Text(title).bold()
        }
        .font(.title)
        .foregroundColor(.black)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(color)
        )
    }
}

struct myItems: View {
    var body: some View {
        HStack {
            myItem(count: 27, title: "Bananas", color: .yellow)
            myItem(count: 27, title: "Apples", color: .red)
            myItem(count: 27, title: "Oranges", color: .orange)
        }
    }
}

