//
//  LoginView.swift
//  AdventureGuide
//
//  Created by Sasini Edirisinghe on 2023-08-14.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
       @State private var password = ""
       
       var body: some View {
        NavigationView {
           VStack {
               Image("splash_image") // Replace "logo" with the name of your logo image asset
                   .resizable()
                   .aspectRatio(contentMode: .fit)
                   .frame(width: 300, height: 300)
               
               TextField("Username", text: $username)
                   .padding()
                   .background(Color.gray.opacity(0.2))
                   .cornerRadius(8)
                   .padding(.horizontal)
                   .autocapitalization(.none)
               
               SecureField("Password", text: $password)
                   .padding()
                   .background(Color.gray.opacity(0.2))
                   .cornerRadius(8)
                   .padding(.horizontal)
               
               Button(action: {
                   // Perform login action here
               }) {
                   Text("Login")
                       .foregroundColor(.white)
                       .padding()
                       .frame(maxWidth: .infinity)
                       .background(Color.blue)
                       .cornerRadius(8)
                       .padding(.horizontal)
               }
               .padding(.top, 20)
               
               VStack {
                   Spacer()
                   NavigationLink(destination: ForgotPasswordView()) {
                       Text("Forgot Password?")
                           .foregroundColor(.blue)
                   }
                   Spacer()
                   NavigationLink(destination: SignUpView()) {
                       Text("Create an account?")
                           .foregroundColor(.black)
                       Text("Sign Up")
                           .foregroundColor(.blue)
                   }
                   Spacer()
               }
               .padding(.top, 10)
               
           }
           .padding(.vertical)
           .navigationBarHidden(true) // Hide the navigation bar if needed
       }
       }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
