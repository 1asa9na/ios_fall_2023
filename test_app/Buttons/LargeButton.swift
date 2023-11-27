//
//  LargeButton.swift
//  test_app
//
//  Created by  User on 23.11.2023.
//

import SwiftUI

struct LargeButton: View {
    @State private var hovered: Bool = false
    let iconData: String
    let label: String
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            Image(iconData)
            .frame(width: 24, height: 24)
            .padding(24)
            .background(hovered ? Color.theme.AccentShadeColor.opacity(0.2) : Color.theme.ShadeColor)
            .cornerRadius(100)
            .simultaneousGesture(
                DragGesture(minimumDistance: 0)
                    .onChanged({_ in
                        hovered = true
                    })
                    .onEnded({_ in
                        hovered = false
                    })
            )
            Text(label)
              .font(Font.custom("Poppins", size: 15))
              .foregroundColor(Color.theme.MinorLabelColor)
        }
        .padding(0)
    }
}

struct LargeButton_Previews: PreviewProvider {
    static var previews: some View {
        LargeButton(iconData: "sun", label: "Covid 19")
    }
}
