//
//  Actions.swift
//  test_app
//
//  Created by  User on 23.11.2023.
//

import SwiftUI

struct Actions: View {
    var body: some View {
        HStack(alignment: .top, spacing: 13) {
            LargeButton(iconData: "sun", label: "Covid 19")
            LargeButton(iconData: "profile-add", label: "Doctor")
            LargeButton(iconData: "link", label: "Medicine")
            LargeButton(iconData: "hospital", label: "Hospital")
        }
        .padding(0)
    }
}

struct Actions_Previews: PreviewProvider {
    static var previews: some View {
        Actions()
    }
}
