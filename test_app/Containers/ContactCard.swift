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
        VStack(alignment: .center, spacing: 20) {
            HStack(alignment: .center) {
              // Space Between
                HStack(alignment: .top, spacing: 10) {
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
                          .foregroundColor(Color(red: 0.05, green: 0.11, blue: 0.2))
                        Text(person.deputy)
                          .font(Font.custom("Poppins", size: 14))
                          .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
                    }
                    .padding(0)
                }
                .padding(0)
              Spacer()
              // Alternative Views and Spacers
                HStack(alignment: .center, spacing: 8) {
                    Image("location")
                    .frame(width: 16, height: 16)
                    Text("1.2 KM")
                      .font(Font.custom("Poppins", size: 14))
                      .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
                }
                .padding(0)
            }
            .padding(0)
            .frame(width: 295, alignment: .center)
            Image("separator")
            .frame(maxWidth: .infinity, minHeight: 0, maxHeight: 0)
            .overlay(
              Rectangle()
                .stroke(Color(red: 0.96, green: 0.96, blue: 0.96), lineWidth: 1)
            )
            HStack(alignment: .top, spacing: 12) {
                HStack(alignment: .center, spacing: 6) {
                    Image("yellow-clock")
                    .frame(width: 20, height: 20)
                    Text("4,8 (120 Reviews)")
                      .font(Font.custom("Poppins", size: 12))
                      .foregroundColor(Color(red: 1, green: 0.69, blue: 0.32))
                }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .center)
                HStack(alignment: .center, spacing: 6) {
                    Image("blue-clock")
                    .frame(width: 20, height: 20)
                    Text("Open at 17.00")
                      .font(Font.custom("Poppins", size: 12))
                      .foregroundColor(Color(red: 0.28, green: 0.58, blue: 1))
                }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .leading)
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
