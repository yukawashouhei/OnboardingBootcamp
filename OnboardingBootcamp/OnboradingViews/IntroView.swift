//
//  IntroView.swift
//  OnboardingBootcamp
//
//  Created by 湯川昇平 on 2025/04/23.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIN: Bool = false
    
    var body: some View {
        ZStack {
            //background
            RadialGradient(
                gradient: Gradient(colors: [
                    Color(hue: 0.7, saturation: 0.6, brightness: 0.9),
                    Color(hue: 0.7, saturation: 0.9, brightness: 1.0)
                ]),
                center: .topLeading,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height)
            .ignoresSafeArea()
            
            if currentUserSignedIN {
                Text("Profile View")
            } else {
                Text("Onboarding View")
            }

        }
    }
}

#Preview {
    IntroView()
}
