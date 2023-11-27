//
//  MainTabView.swift
//  test_app
//
//  Created by  User on 24.11.2023.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        ScrollView() {
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading, spacing: 24) {
                    VStack(alignment: .leading, spacing: 20) {
                        MainHeader()
                        PersonCard()
                    }
                    .padding(0)
                    SearchBar()
                }
                .padding(0)
                Actions()
                Contacts()
            }
            .padding(24)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
