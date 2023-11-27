//
//  PersonCard.swift
//  test_app
//
//  Created by  User on 23.11.2023.
//

import SwiftUI

struct PersonCard: View {
    @State private var isActive = false
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            HStack(alignment: .center) {
                CardMajorLabel(person: Person(name: "Dr. Imran Syahir", pfpAsset: "photo", deputy: "General Doctor"), subLabelColor: Color.theme.AccentMinorLabelColor, labelColor: Color.theme.AccentMajorLabelColor)
                  // Space Between
                  Spacer()
                    Image("arrow-right")
                        .background(Color.white.opacity(self.isActive ? 0.5 : 0), in: Circle())
                    .frame(width: 24, height: 24)
            }
            .padding(0)
            .frame(maxWidth: .infinity, alignment: .center)
            Image("separator")
            .frame(maxWidth: .infinity, minHeight: 0, maxHeight: 0)
            .overlay(
              Rectangle()
                .stroke(.white.opacity(0.15), lineWidth: 1)
            )
            HStack(alignment: .top) {
                CardMinorLabel(iconData: "calendar", label: "Sunday, 12 June", fontColor: Color.theme.AccentMajorLabelColor)
                Spacer()
                CardMinorLabel(iconData: "clock", label: "11:00 - 12:00 AM", fontColor: Color.theme.AccentMajorLabelColor)
            }
            .frame(maxWidth: .infinity, alignment: .topLeading)
        }
        .padding(20)
        .frame(alignment: .top)
        .background(Color(red: 0.28, green: 0.58, blue: 1))

        .cornerRadius(12)
    }
}

struct PersonCard_Previews: PreviewProvider {
    static var previews: some View {
        PersonCard()
    }
}
