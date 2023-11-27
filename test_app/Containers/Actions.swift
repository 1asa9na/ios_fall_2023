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
            Spacer()
            LargeButton(iconData: "sun", label: "Covid 19")
            Spacer()
            LargeButton(iconData: "profile-add", label: "Doctor")
            Spacer()
            LargeButton(iconData: "link", label: "Medicine")
            Spacer()
            LargeButton(iconData: "hospital", label: "Hospital")
            Spacer()
        }
    }
}

struct Actions_Previews: PreviewProvider {
    static var previews: some View {
        Actions()
    }
}
