//
//  ContentView.swift
//  AdventureGuide
//
//  Created by Sasini Edirisinghe on 2023-08-14.
//

import SwiftUI

struct ContentView: View {
    @State private var showSplash = true
        
        var body: some View {
            Group {
                if showSplash {
                    SplashScreenView()
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) { // Adjust the duration as needed
                                withAnimation {
                                    showSplash = false
                                }
                            }
                        }
                    
                } else {
                    // Replace this with your main view
                    LoginView()
//                    SecondView()
                }
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct SecondView: View {
    
    
    
    
    var body: some View {
        VStack {
         
          Text("Hello World:) \n I'm Sasini")
          
            
    }
        
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}

struct SplashScreenView: View {
    
    @State private var isRotated = false // Create a state variable to control rotation
    
    var body: some View {
        VStack {
            Image("splash_image")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                            .rotationEffect(.degrees(isRotated ? 360 : 0)) // Apply rotation based on the state variable
                            .animation(Animation.linear(duration: 2).repeatForever(autoreverses: false)) // Set the animation properties
            
            // Add any additional views or content you want for the splash screen
            
        }
        .edgesIgnoringSafeArea(.all)
                .onAppear {
                    self.isRotated = true // Trigger rotation when the view appears
                }
    }
}
