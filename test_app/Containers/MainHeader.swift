import SwiftUI

struct MainHeader : View {
    var body: some View {
        HStack(alignment: .center) {
            VStack(alignment: .leading, spacing: 6) {
                Text("Hello,")
                    .font(Font.custom("Poppins", size: 16))
                    .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
                Text("Hi James")
                    .font(
                        Font.custom("Poppins", size: 20)
                            .weight(.bold)
                    )
                    .foregroundColor(Color(red: 0.05, green: 0.11, blue: 0.2)
                    )
            }
            Spacer()
            Image("Frame")
                .frame(width: 56, height: 56)
        }
    }
}
