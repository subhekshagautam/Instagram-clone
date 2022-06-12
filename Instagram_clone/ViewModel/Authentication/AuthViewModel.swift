//
//  AuthViewModel.swift
//  Instagram_clone
//
//  Created by Subheksha Gautam on 12/6/2022.
//

import SwiftUI
import Firebase


class AuthViewModel: ObservableObject {
    static let shared = AuthViewModel()
    
    func register( withEmail email: String, password: String){
        //register user in firebase
        Auth.auth().createUser(withEmail: email, password: password) { (result, err) in
            
            if let err = err {
                print(err.localizedDescription)
                return
            }
            guard let user = result? .user else{return}
            print(user)
        }
    }
    
}
