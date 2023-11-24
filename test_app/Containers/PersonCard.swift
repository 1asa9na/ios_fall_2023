//
//  PersonCard.swift
//  test_app
//
//  Created by  User on 23.11.2023.
//

import SwiftUI

struct PersonCard: View {
    @State private var isActive = false
    var person: Person
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            HStack(alignment: .center) {
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
                                      .frame(width: 58.439998626708984, height: 73.08000183105469)
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
                          .foregroundColor(.white)
                        Text(person.deputy)
                          .font(Font.custom("Poppins", size: 14))
                          .foregroundColor(Color(red: 0.8, green: 0.88, blue: 1))
                    }
                      .padding(0)
                  // Space Between
                  Spacer()
                    Image("arrow-right")
                        .background(Color.white.opacity(self.isActive ? 0.5 : 0), in: Circle())
                    .frame(width: 24, height: 24)
                }
                .padding(0)
            }
            .padding(0)
            .frame(maxWidth: .infinity, alignment: .center)
            Image("separator")
            .frame(maxWidth: .infinity, minHeight: 0, maxHeight: 0)
            .overlay(
              Rectangle()
                .stroke(.white.opacity(0.15), lineWidth: 1)
            )
            HStack(alignment: .top, spacing: 12) {
                HStack(alignment: .center, spacing: 8) {
                    Image("calendar-2")
                    .frame(width: 16, height: 16)
                    Text("Sunday, 12 June")
                      .font(Font.custom("Poppins", size: 12))
                      .foregroundColor(.white)
                }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .leading)
                HStack(alignment: .center, spacing: 8) {
                    Image("clock")
                    .frame(width: 16, height: 16)
                    Text("11:00 - 12:00 AM")
                      .font(Font.custom("Poppins", size: 12))
                      .foregroundColor(.white)
                }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(0)
            .frame(maxWidth: .infinity, alignment: .topLeading)
        }
        .padding(20)
        .frame(width: 327, alignment: .top)
        .background(Color(red: 0.28, green: 0.58, blue: 1))

        .cornerRadius(12)
    }
}

struct PersonCard_Previews: PreviewProvider {
    static var previews: some View {
        PersonCard(person: Person(name: "Dr. Imran Syahir", pfpAsset: "photo", deputy: "General Doctor"))
    }
}
