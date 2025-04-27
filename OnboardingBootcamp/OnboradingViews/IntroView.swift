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
                ProfileView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            } else {
                OnboardingView()
                    .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
            }
            
        }
    }
}

#Preview {
    IntroView()
}
