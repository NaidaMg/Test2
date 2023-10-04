//
//  MainViewController.swift
//  Post
//
//  Created by Наида Магомаева on 01.09.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    
    @IBOutlet private weak var readingNowlabel: UILabel!
    @IBOutlet private weak var coverImageOutlet: UIImageView!
    @IBOutlet private weak var descriptionOutlet: UITextView!
    @IBOutlet private weak var progressOutlet: UIProgressView!
  
    
    @IBOutlet private weak var wantToReadLabel: UILabel!
    @IBOutlet private weak var booksCollectionView: UICollectionView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        booksCollectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        
        view.addSubview(booksCollectionView)
        booksCollectionView.heightAnchor.constraint(equalTo: booksCollectionView.widthAnchor, multiplier: 0.5).isActive = true
        
        booksCollectionView.delegate = self
        booksCollectionView.dataSource = self
    }
}

// MARK: EXTENSION

extension MainViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)as! CollectionViewCell
        cell.coverImageOutlet.image = UIImage()
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        return CGSize(width: collectionView.frame.width/2.5, height: collectionView.frame.width/2)
        
    }
}


