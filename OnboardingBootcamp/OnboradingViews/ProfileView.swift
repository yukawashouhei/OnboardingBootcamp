//
//  ProfileView.swift
//  OnboardingBootcamp
//
//  Created by 湯川昇平 on 2025/04/26.
//

import SwiftUI

struct ProfileView: View {
    
    // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIN: Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text(currentUserName ?? "Your name here")
            Text("This user is \(currentUserAge ?? 0) years old.")
            Text("Their gender is \(currentUserGender ?? "unknown")")
        }
        .font(.title)
        .foregroundStyle(
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(hue: 0.7, saturation: 0.6, brightness: 0.9),
                    Color(hue: 0.7, saturation: 0.9, brightness: 1.0)
                ]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
        .padding()
        .padding(.vertical, 40)
        .background(Color.white)
        .shadow(radius: 10)
    }
}

#Preview {
    ProfileView()
}
