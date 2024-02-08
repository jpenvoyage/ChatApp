//
//  ContentView.swift
//  ChatApp
//
//  Created by Joao Leal on 08/02/2024.
//

import SwiftUI



struct LoginView: View {
    
    @State var isLoginMode = false
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationStack {
            ScrollView{
                VStack(spacing: 16) {
                    
                    Picker("Text here", selection: $isLoginMode) {
                        Text("Login")
                            .tag(true)
                        Text("Create Account")
                            .tag(false)
                    }.pickerStyle(.segmented)
                    
                    if !isLoginMode {
                        
                        Button{
                            
                        } label: {
                            
                            
                            Image(systemName: "person.fill")
                                .font(.system(size: 64))
                                .padding()
                        }
                    }
                    
                    Group{
                        TextField("Email", text: $email)
                            .keyboardType(.emailAddress)
                            .autocorrectionDisabled()
                        
                        TextField("Password", text: $password)
                        
                        
                    }.padding(12)
                        .background(.white)
                    
                    Button {
                        handleAction()
                    } label: {
                        Text(isLoginMode ? "Log In" : "Create Account")
                            .foregroundStyle(.white)
                            .frame(width: 360, height: 50)
                            .background(.blue)
                            .clipShape(.rect(cornerRadius: 8))
                    }
                }.padding()
                
                
            }.navigationTitle(isLoginMode ? "Login" : "Create Account")
                .background(.ultraThinMaterial)
        }
    }
    
    private func handleAction() {
        if isLoginMode {
            print("shold log into firebase w credentials")
        } else {
            print("register new account")
        }
    }
    
}



#Preview {
    LoginView()
}
