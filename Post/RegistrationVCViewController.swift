//
//  RegistrationVCViewController.swift
//  Post
//
//  Created by Наида Магомаева on 20.09.2023.
//

import UIKit
import Firebase

class RegistrationVCViewController: UIViewController {
    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
    @IBOutlet private weak var emailTextFieldOutlet: UITextField!
    @IBOutlet private weak var passwordTextFieldOutlet: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func loginButtonAction() {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        loginVC.modalPresentationStyle = .fullScreen
        present(loginVC, animated: true, completion: nil)
        
    }
    
    @IBAction private func doneButtonAction() {
        guard let email = emailTextFieldOutlet.text else { return }
        guard let password = passwordTextFieldOutlet.text else { return }
     
        
        Auth.auth().createUser(withEmail: email, password: password, completion: {firebaseResult, error in
            if error != nil {
                print ("error")
            }
            else {
                
                let anotherVC = self.storyboard?.instantiateViewController(withIdentifier: "LibraryViewController") as! LibraryViewController
                anotherVC.modalPresentationStyle = .fullScreen
                self.present(anotherVC, animated: true)
                
            }
            
            
            
        }
        )
    }
}

