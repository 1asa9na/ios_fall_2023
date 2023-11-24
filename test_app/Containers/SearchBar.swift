//
//  SearchBar.swift
//  test_app
//
//  Created by  User on 23.11.2023.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            Image("search-normal")
            .frame(width: 24, height: 24)
            Text("Search doctor or health issue")
              .font(Font.custom("Poppins", size: 15))
              .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
        }
        .padding(16)
        .frame(width: 327, alignment: .leading)
        .background(Color(red: 0.98, green: 0.98, blue: 0.98))
        .cornerRadius(12)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
