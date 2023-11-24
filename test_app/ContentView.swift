//
//  ContentView.swift
//  test_app
//
//  Created by  User on 30.01.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Tabs = .home
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack() {
            TabView(selection: $selectedTab) {
                ForEach(Tabs.allCases, id: \.rawValue) { tab in
                    switch selectedTab {
                    case .home:
                        MainTabView()
                            .tag(tab)
                    case .tabs:
                        EmptyTabView()
                            .tag(tab)
                    case .chats:
                        EmptyTabView()
                            .tag(tab)
                    case .me:
                        EmptyTabView()
                            .tag(tab)
                    }
                }
            }
            VStack() {
                Spacer()
                NavTabBar(selectedTab: $selectedTab)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
