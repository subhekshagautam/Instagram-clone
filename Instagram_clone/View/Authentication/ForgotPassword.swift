//
//  ForgotPassword.swift
//  Instagram_clone
//
//  Created by Subheksha Gautam on 12/6/2022.
//

import SwiftUI

struct ForgotPassword: View {
   
    @Binding var email: String
    
    init(email: Binding<String>){
        self._email = email
    }
    
    
    var body: some View {
        
        NavigationView{
            VStack{
                Image("instagram-text-logo")
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 220)
                    .foregroundColor(.black)
                VStack(spacing: -16){
                    CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                        .padding()
                        .padding(.horizontal,32)
                    
                }
                HStack{
                    Spacer()
                    NavigationLink(destination: SignInView().navigationBarHidden(true)
                                   ,label: {
                        Text("Go Back")
                            .font(.system(size: 13, weight: .semibold))
                            .foregroundColor(.gray)
                            .padding(.top)
                            .padding(.trailing, 28)
                    })
                }.padding(.horizontal, 14)
                
                Button(action: {
                    
                }, label: {
                    Text("Reset Password")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 50)
                        .background(Color.blue)
                        .clipShape(Capsule())
                        .padding()
                })
                
                Spacer()
                
                NavigationLink(destination: SignInView().navigationBarHidden(true)
                               , label: {
                    HStack{
                        Text("Alerdy have an account?")
                            .font(.system(size: 14, weight: .semibold))
                        Text("Sign In")
                            .font(.system(size: 14))
                    }
                })
            }.padding(.top, -100)
        }
        
    }
}

struct ForgotPassword_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPassword(email: .constant("email"))
    }
}
