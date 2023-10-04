//
//  ChoiseViewController.swift
//  Post
//
//  Created by Наида Магомаева on 29.08.2023.
//

import UIKit

final class ChoiseViewController: UIViewController {
    
    
    @IBOutlet private weak var imageOutlet: UIImageView!
    
    @IBOutlet private weak var nameLabel:UILabel!
    
    @IBOutlet  private weak var descriptionTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swipeRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(self.handleSwipeGesture))
        swipeRecognizer.direction = .left
        view.addGestureRecognizer(swipeRecognizer)
    }
    
    @objc private func handleSwipeGesture(sender: UISwipeGestureRecognizer){
        dismiss(animated: true, completion: nil)
    }
}
