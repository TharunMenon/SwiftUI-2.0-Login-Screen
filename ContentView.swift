//
//  ContentView.swift
//  SwiftUI Login Template
//
//  Created by Tharun Menon on 23/09/20.
//  Copyright © 2020 Tharun Menon. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // MARK:- Properties
    @State private var emailID = ""
    @State private var password = ""
    // MARK: - View
    var body: some View {
        VStack() {
            //Text
            Text("Login")
                 .font(.largeTitle).foregroundColor(Color.white)
                 .padding([.top, .bottom], 40)
                 .shadow(radius: 10.0, x: 20, y: 10)
            //Image
            Image("LoginIcon")
                .resizable()
                .frame(width: 200, height: 200)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
                .padding(.bottom, 50)
            //TextFields
            VStack(alignment: .leading, spacing: 15) {
                TextField("Enter Email ID", text:self.$emailID)
                    .padding()
                    .background(Color.TextFieldBackground)
                    .cornerRadius(20.0)
                    .shadow(radius: 10.0, x: 20, y: 10)
                
                SecureField("Password", text: self.$password)
                    .padding()
                    .background(Color.TextFieldBackground)
                    .cornerRadius(20.0)
                    .shadow(radius: 10.0, x: 20, y: 10)
            }.padding([.leading, .trailing], 27.5)
            //Button
              Button(action: {}) {
                    Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.green)
                    .cornerRadius(15.0)
                    .shadow(radius: 10.0, x: 20, y: 10)
            }.padding(.top, 50)
            
            Spacer()
            //Bottom text
            HStack(spacing: 0) {
                Text("Don't have an account? ")
                Button(action: {}) {
                    Text("Sign Up")
                        .foregroundColor(.black)
                }
            }
        }
         //Background colour
        .background(LinearGradient(gradient: Gradient(colors: [.green, .blue]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all))
    }
}
extension Color {
    static var TextFieldBackground: Color {
        return Color(red: 220.0/255.0, green: 230.0/255.0, blue: 230.0/255.0, opacity: 1.0)
    }
}
