//
//  LibraryViewController.swift
//  Post
//
//  Created by Наида Магомаева on 31.07.2023.
//

import UIKit
import Foundation

final class LibraryViewController: UICollectionViewController {
    let viewModel = LibraryViewModel()
    let itemPerRow: CGFloat = 2
    let sectionInserts = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "bookCollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "bookCollectionViewCell")
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: layout)

    }
    
    
    // MARK: CollectionViewCell
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.books.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for : indexPath) as! PhotoCell
        cell.setup(with: viewModel.books[indexPath.row])
        return cell
    }
    
    
}

// MARK: PushChoiseViewController


//func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//    let storyboard = UIStoryboard(name: "ChoiseViewController", bundle: nil)
//    let anotherVC = storyboard.instantiateViewController(withIdentifier: "\(ChoiseViewController.self)")
//    present(anotherVC, animated: true)
//
//}


//func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//    let storyboard = UIStoryboard(name: "Main", bundle: nil)
//    let anotherVC = storyboard.instantiateViewController(withIdentifier: "ChoiceViewController")
//    self.navigationController?.pushViewController(anotherVC, animated: true)
//}



// MARK: FlowLayout

extension LibraryViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionWidth = (collectionView.frame.width / 2) - 10
        return CGSize(width: collectionWidth, height: collectionWidth)
        
    }
    
}

