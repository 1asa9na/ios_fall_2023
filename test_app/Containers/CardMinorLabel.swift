//
//  CardMinorLabel.swift
//  test_app
//
//  Created by  User on 27.11.2023.
//

import SwiftUI

struct CardMinorLabel: View {
    var iconData: String
    var label: String
    var fontColor: Color
    var body: some View {
        HStack(alignment: .center, spacing: 8) {
            Image(iconData)
            .frame(width: 16, height: 16)
            Text(label)
              .font(Font.custom("Poppins", size: 12))
              .foregroundColor(fontColor)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct CardMinorLabel_Previews: PreviewProvider {
    static var previews: some View {
        CardMinorLabel(iconData: "yellow-clock", label: "example", fontColor: Color.theme.AttentionColor)
    }
}
