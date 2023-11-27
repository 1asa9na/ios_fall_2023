//
//  CardMajorLabel.swift
//  test_app
//
//  Created by  User on 27.11.2023.
//

import SwiftUI

struct CardMajorLabel: View {
    var person: Person
    var subLabelColor: Color
    var labelColor: Color
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            ZStack {
                Image("background")
                    .frame(width: 48, height: 48)
                    .background(.white)
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 48, height: 48)
                        .background(Color(red: 0.77, green: 0.77, blue: 0.77))
                        .cornerRadius(1000)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 48, height: 48)
                        .background(
                            Image(person.pfpAsset)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                        )
                }
                .frame(width: 48, height: 48)
            }
            .frame(width: 48, height: 48)
            .clipShape(Circle())
            VStack(alignment: .leading, spacing: 8) {
                Text(person.name)
                    .font(
                        Font.custom("Poppins", size: 16)
                            .weight(.bold)
                    )
                    .foregroundColor(labelColor)
                    .fixedSize()
                Text(person.deputy)
                    .font(Font.custom("Poppins", size: 14))
                    .foregroundColor(subLabelColor)
                    .fixedSize()
            }
            .padding(0)
        }
    }
}

struct CardMajorLabel_Previews: PreviewProvider {
    static var previews: some View {
        CardMajorLabel(person: Person(name: "Dr. Imran Syahir", pfpAsset: "photo", deputy: "General Doctor"), subLabelColor: Color.theme.MinorLabelColor, labelColor: Color.theme.MajorLabelColor)
    }
}
