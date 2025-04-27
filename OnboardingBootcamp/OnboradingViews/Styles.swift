//
//  Styles.swift
//  OnboardingBootcamp
//
//   on 2025/04/26.
//

import SwiftUI

struct GradientStyles {
    static let backgroundGradient = RadialGradient(
        gradient: Gradient(colors: [
            Color(hue: 0.7, saturation: 0.6, brightness: 0.9),
            Color(hue: 0.7, saturation: 0.9, brightness: 1.0)
        ]),
        center: .topLeading,
        startRadius: 5,
        endRadius: UIScreen.main.bounds.height // 必要に応じて調整
    )
}
