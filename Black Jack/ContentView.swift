//
//  ContentView.swift
//  Black Jack
//
//  Created by Boone, Hanna - Student on 4/3/24.
//

import SwiftUI

struct LoginView: View {
    @State var name: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                Text("Welcome to BlackJack!")
                    .font(.largeTitle)
                
                Text("Please login or signup")
                    .font(.title2)
                
                Spacer()
                
                TextField("Name", text: $name)
                    .frame(width: 600)
                    .padding()
                    .textFieldStyle(.roundedBorder)
                
                Button {
                    // network code and switch to playing screen
                } label: {
                    Text("Login")
                        .bold()
                        .frame(width: 600, height: 30)
                }
                .buttonStyle(.borderedProminent)
                
                Spacer()
                
                NavigationLink("Sign up") {
                    SignUpView()
                }
                
                Spacer()
            }
        }
    }
}

struct SignUpView: View {
    @State var name: String = ""
    @State var isCardView: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Welcome to BlackJack!")
                .font(.largeTitle)
            
            Text("Please login or signup")
                .font(.title2)
            
            Spacer()
            
            TextField("Name", text: $name)
                .frame(width: 600)
                .padding()
                .textFieldStyle(.roundedBorder)
            
            Button {
                isCardView = true
            } label: {
                Text("Sign up")
                    .bold()
                    .frame(width: 600, height: 30)
            }
            .buttonStyle(.borderedProminent)
            .fullScreenCover(isPresented: $isCardView, content: {
                SelectCardView()
            })
            
            Spacer()
            
            NavigationLink("Log in") {
                LoginView()
            }
            
            Spacer()
        }
    }
}

struct SelectCardView: View {
    var body: some View {
        VStack {
            
        }
    }
}

#Preview {
    LoginView()
        .preferredColorScheme(.dark)
}
