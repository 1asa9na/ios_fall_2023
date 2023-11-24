//
//  LargeButton.swift
//  test_app
//
//  Created by  User on 23.11.2023.
//

import SwiftUI

struct LargeButton: View {
    let iconData: String
    let label: String
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            Image(iconData)
            .frame(width: 24, height: 24)
            .padding(24)
            .background(hovered ? Color(red: 0.39, green: 0.71, blue: 1) : Color(red: 0.98, green: 0.98, blue: 0.98))
            .cornerRadius(100)
            Text(label)
              .font(Font.custom("Poppins", size: 15))
              .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
        }
        .padding(0)
    }
}

struct LargeButton_Previews: PreviewProvider {
    static var previews: some View {
        LargeButton(iconData: "sun", label: "Covid 19")
    }
}
