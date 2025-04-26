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
            GradientStyles.backgroundGradient
                    .ignoresSafeArea()
            
            if currentUserSignedIN {
                Text("Profile View")
            } else {
                OnboardingView()
            }

        }
    }
}

#Preview {
    IntroView()
}
