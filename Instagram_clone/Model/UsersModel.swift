//
//  UsersModel.swift
//  Instagram_clone
//
//  Created by Subheksha Gautam on 13/6/2022.
//

import Firebase
import FirebaseFirestoreSwift
struct UserModel: Decodable, Identifiable {
    let username: String
    let email: String
    let fullname: String
    let profileImageURL: String
    @DocumentID var id : String?
    
}
