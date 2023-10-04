//
//  AuthService.swift
//  Post
//
//  Created by Наида Магомаева on 05.10.2023.
//

import Foundation
import FirebaseAuth

class AuthService {
    
    public static let shared = AuthService()
    private init() {}
    

    public func registerUser(with userRequest: RegiserUserRequest, completion: @escaping (Bool, Error?)->Void) {
        let email = userRequest.email
        let password = userRequest.password
        
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                completion(false, error)
                return
            }
            
            guard let resultUser = result?.user else {
                completion(false, nil)
                return
            }
          
        }
    }
}
