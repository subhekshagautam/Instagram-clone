//
//  AuthViewModel.swift
//  Instagram_clone
//
//  Created by Subheksha Gautam on 12/6/2022.
//

import SwiftUI
import Firebase


class AuthViewModel: ObservableObject {
    
    @Published var userSession: Firebase.User?
    @Published var currentUser: UserModel?
    static let shared = AuthViewModel()
    
    init(){
        userSession = Auth.auth().currentUser
        fetchUser()
    }
    
    // function used for user login
    func login(withEmail email: String, password: String){
        Auth.auth().signIn(withEmail: email, password: password){(result, err) in
            if let err = err {
                print(err.localizedDescription)
                return
            }
            
            guard let user = result?.user else {return}
            self.userSession = user
            self.fetchUser()
            
        }
    }
    // function used for user registration
    func register( withEmail email: String, password: String, username: String, fullname: String ){
        //register user in firebase
        Auth.auth().createUser(withEmail: email, password: password) { (result, err) in
            
            if let err = err {
                print(err.localizedDescription)
                return
            }
            guard let user = result? .user else{return}
            
            let data = ["email": email,
                        "username": username,
                        "fullname": fullname,
                        "uid": user.uid]
            // storing username and firstname in database
            Firestore.firestore().collection("users").document(user.uid).setData(data){ [self] err in
                if let err = err{
                    print(err.localizedDescription)
                    return
                }
                self.userSession = user
                self.fetchUser()
                print("DEBUG: User created")
            }
        }
    }
    
    func logout(){
        self.userSession = nil
        try? Auth.auth().signOut()
    }
    // fetch user information from database
    
    func fetchUser(){
        guard let uid = userSession?.uid else {return}
        Firestore.firestore().collection("users").document(uid).getDocument {(snap, err) in
            if let err = err{
                print(err.localizedDescription)
                return
            }
            guard let user = try? snap?.data(as: UserModel.self) else{return}
            
            self.currentUser = user
            
        }
    }
}
