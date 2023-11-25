//
//  Contacts.swift
//  test_app
//
//  Created by  User on 23.11.2023.
//

import SwiftUI

struct Contacts: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Near Doctor")
              .font(
                Font.custom("Poppins", size: 16)
                    .weight(.semibold)
              )
              .foregroundColor(Color(red: 0.05, green: 0.11, blue: 0.2))
            VStack(alignment: .leading, spacing: 12) {
                ContactCard(person: Person(name: "Dr. Joseph Brostito", pfpAsset: "photo2", deputy: "Dental Specialist"))
                ContactCard(person: Person(name: "Dr. Imran Syahir", pfpAsset: "photo", deputy: "General Doctor"))
            }
            .padding(0)
        }
        .padding(0)
        .frame(maxWidth: .infinity, alignment: .topLeading)
    }
}

struct Contacts_Previews: PreviewProvider {
    static var previews: some View {
        Contacts()
    }
}
