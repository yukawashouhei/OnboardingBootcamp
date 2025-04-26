//
//  OnboardingView.swift
//  OnboardingBootcamp
//
//  Created by 湯川昇平 on 2025/04/26.
//

import SwiftUI

struct OnboardingView: View {
    
    /* Onboarding States:
     0 - Welcome screen
     1 - Add name
     2 - Add age
     3 - Add gender
     */
    
    @State var onboardingState: Int = 3
    
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    
    var body: some View {
        ZStack {
            // content
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection
                case 1:
                    addNameSection
                case 2:
                    addAgeSection
                case 3:
                    addGenderSection
                default:
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundStyle(Color.green)
                }
            }
            //buttons
            VStack {
                Spacer()
                bottomButton
            }
            .padding(30)
        }
        .background(Color.purple)
    }
    
    
}

#Preview {
    OnboardingView()
}

// Mark: COMPONENTS

extension OnboardingView {
    
    private var bottomButton: some View {
        Text("Sign in")
            .font(.headline)
            .foregroundStyle(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)
            .onTapGesture {
                
            }
    }
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200,height: 200)
                .foregroundColor(.white)
            Text("find your match.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                    , alignment: .bottom
                )
            Text("This is the #1 app for finding your match online! In this tutorial wea re practicing using Appstorage and other SwiftUI techniques.")
                .fontWeight(.medium)
                .foregroundStyle(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    
    private var addNameSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's your name")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            TextField("Your name here...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(10)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            Slider(value: $age, in: 18...100, step: 1)
                .tint(.white)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            Menu {
                Picker("Options", selection: $gender) {
                    Text("Male").tag("Male")
                    Text("Female").tag("Female")
                    Text("Non-Binary").tag("Non-Binary")
                }
            } label: {
                
                HStack {
                    
                    Text(gender.isEmpty ? "Select a gender" : gender)
                    
                }
                .font(.headline)            // フォント
                .foregroundStyle(.purple)   // 文字色
                .frame(height: 55)            // 高さ
                .frame(maxWidth: .infinity) // 最大幅
                .padding(.horizontal)      // 左右のパディング (テキストが長くなった時用)
                .background(Color.white)    // 背景色
                .cornerRadius(10)           // 角丸
            }
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
}
