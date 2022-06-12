//
//  RegisterView.swift
//  Instagram_clone
//
//  Created by Subheksha Gautam on 12/6/2022.
//

import SwiftUI

struct RegisterView: View {
    @State var email = ""
    @State var userName = ""
    @State var fullName = ""
    @State var Password = ""
    @EnvironmentObject var viewModel: AuthViewModel
    
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
                    CustomTextField(text: $userName, placeholder: Text("Username"), imageName: "person")
                        .padding()
                        .padding(.horizontal,32)
                    CustomTextField(text: $fullName, placeholder: Text("Fullname"), imageName: "person")
                         .padding(.horizontal,32)
                    CustomSecureField(text: $Password, placeholder: Text("Password"), imageName: "lock")
                        .padding()
                        .padding(.horizontal, 32)
                    
                }
                
                Button(action: {
                    viewModel.register(withEmail: email, password: Password)
                }, label: {
                    Text("Register")
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
                       Text("Already have an account?")
                           .font(.system(size: 14, weight: .semibold))
                       Text("Sign-in")
                           .font(.system(size: 14))
                   }
               })
            }
            .padding(.top, -110)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
