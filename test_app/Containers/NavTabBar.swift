//
//  NavTabBar.swift
//  test_app
//
//  Created by  User on 24.11.2023.
//

import SwiftUI

enum Tabs: String, CaseIterable {
    case home
    case tabs
    case chats
    case me
}

struct NavTabBar: View {
    
    @Binding var selectedTab: Tabs
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            ForEach(Tabs.allCases, id: \.rawValue) { tab in
                if selectedTab == tab {
                    HStack() {
                        Image("\(tab.rawValue)-selected")
                            .frame(width: 24, height: 24)
                        Text(tab.rawValue.capitalized)
                            .foregroundColor(Color(red: 0.39, green: 0.71, blue: 1))
                            .fixedSize()
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(12)
                    .background(Color(red: 0.39, green: 0.71, blue: 1).opacity(0.1))
                    .cornerRadius(12)
                } else {
                    Image("\(tab.rawValue)-normal")
                        .padding(12)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .onTapGesture {
                            selectedTab = tab
                        }
                }
            }
        }
        .padding(.horizontal, 24)
        .padding(.vertical, 16)
        .frame(width: 375, alignment: .center)
        .background(.white)
        .font(
        Font.custom("Nunito", size: 14)
        .weight(.bold)
        )
    }
}

struct NavTabBar_Previews: PreviewProvider {
    static var previews: some View {
        NavTabBar(selectedTab: .constant(.home))
    }
}
