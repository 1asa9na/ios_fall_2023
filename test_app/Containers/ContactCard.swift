//
//  ContactCard.swift
//  test_app
//
//  Created by  User on 23.11.2023.
//

import SwiftUI

struct ContactCard: View {
    let person: Person
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack(alignment: .top) {
              // Space Between
                CardMajorLabel(person: person, subLabelColor: Color.theme.MinorLabelColor, labelColor: Color.theme.MajorLabelColor)
              Spacer()
              // Alternative Views and Spacers
                CardMinorLabel(iconData: "location", label: "1.2 KM", fontColor: Color.theme.MinorLabelColor)
            }
            .padding(0)
            .frame(width: 295, alignment: .center)
            Image("separator")
            .frame(maxWidth: .infinity, minHeight: 0, maxHeight: 0)
            .overlay(
              Rectangle()
                .stroke(Color(red: 0.96, green: 0.96, blue: 0.96), lineWidth: 1)
            )
            HStack(alignment: .center, spacing: 12) {
                CardMinorLabel(iconData: "yellow-clock", label: "4,8 (120 Reviews)", fontColor: Color.theme.AttentionColor)
                CardMinorLabel(iconData: "blue-clock", label: "Open at 17.00", fontColor: Color.theme.AccentColor)
            }
            .padding(0)
            .frame(maxWidth: .infinity, alignment: .topLeading)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 20)
        .background(.white)
        .cornerRadius(12)
        .shadow(color: Color(red: 0.35, green: 0.46, blue: 0.65).opacity(0.04), radius: 10, x: 2, y: 12)
    }
}

struct ContactCard_Previews: PreviewProvider {
    static var previews: some View {
        ContactCard(person: Person(name: "Dr. Joseph Brostito", pfpAsset: "photo2", deputy: "Dental Specialist"))
    }
}
