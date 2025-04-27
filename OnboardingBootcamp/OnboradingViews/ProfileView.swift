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
    
    let profileGradient = LinearGradient(
        gradient: Gradient(colors: [
            Color(hue: 0.7, saturation: 0.6, brightness: 0.9), // 紫がかった青
            Color(hue: 0.7, saturation: 0.9, brightness: 1.0)  // 明るい紫がかった青
        ]),
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text(currentUserName ?? "Your name here")
            Text("This user is \(currentUserAge ?? 0) years old.")
            Text("Their gender is \(currentUserGender ?? "unknown")")
            
            Text("SIGN OUT")
                .foregroundStyle(.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(profileGradient)
                .cornerRadius(10)
                .onTapGesture {
                    signOut()
                }
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
    
    func signOut() {
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        withAnimation(.spring()) {
            currentUserSignedIN = false
        }
    }
}

#Preview {
    ProfileView()
}
