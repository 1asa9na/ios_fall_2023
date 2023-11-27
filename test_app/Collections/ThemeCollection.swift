import SwiftUI

extension Color {
    static let theme = BlueTheme()
}

final class BlueTheme: Theme {
    var AccentColor: Color = Color("AccentColor")
    var AccentMajorLabelColor: Color = Color("AccentMajorLabelColor")
    var AccentMinorLabelColor: Color = Color("AccentMinorLabelColor")
    var AccentShadeColor: Color = Color("AccentShadeColor")
    var MajorLabelColor: Color = Color("MajorLabelColor")
    var MinorLabelColor: Color = Color("MinorLabelColor")
    var ShadeColor: Color = Color("ShadeColor")
    var AttentionColor: Color = Color("AttentionColor")
}
