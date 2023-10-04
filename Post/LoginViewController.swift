//
//  LoginViewController.swift
//  Post
//
//  Created by Наида Магомаева on 02.10.2023.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet private weak var emailTextFieldOutlet: UITextField!
    @IBOutlet private weak var passwordTextFieldOutlet: UITextField!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        self.setupUI()
//    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//    }
//    private func setupUI() {
//        self.view.backgroundColor = .systemBackground
//
//    }
//
    
    @IBAction private func loginButtonAction() {
        guard let email = emailTextFieldOutlet.text else { return }
        guard let password = passwordTextFieldOutlet.text else { return }
        
        
        Auth.auth().signIn(withEmail: email, password: password) {firebaseResult, error in
         if let e = error {
                print ("error")
            }
            else {
                
                let anotherVC = self.storyboard?.instantiateViewController(withIdentifier: "LibraryViewController") as! LibraryViewController
                anotherVC.modalPresentationStyle = .fullScreen
                self.present(anotherVC, animated: true)
                
            }
        }
                               
                            
    }
}

