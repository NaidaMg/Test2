//
//  PhotosCollectionViewController.swift
//  Post
//
//  Created by Наида Магомаева on 31.07.2023.
//

import UIKit
import Foundation

typealias Books = (name: String, description: String, image: UIImage)

class PhotosCollectionViewController: UICollectionViewController {
    
    let photo = ["1", "2", "3", "4","5","6","7","8", "9","10"]
    
    let itemPerRow: CGFloat = 2
    let sectionInserts = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let nib = UINib(nibName: "bookCollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "bookCollectionViewCell")
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
    }
   
    
// MARK: CollectionViewCell
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photo.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for : indexPath) as! PhotoCell
        let imageName = photo[indexPath.item]
        let image = UIImage(named: imageName)
        
        
        cell.imageView.image = image
        return cell
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("1")
    }
//
//// MARK: PresentCell
//
//   override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//       super.collectionView(collectionView, didSelectItemAt: indexPath)
//        let storyboard = UIStoryboard(name: "ChoiseViewController", bundle: nil)
//        let lastVC = storyboard.instantiateViewController(withIdentifier: "\(ChoiseViewController.self)")
//       self.navigationController?.pushViewController(lastVC, animated: true)
//
//    }

}


// MARK: FlowLayout

extension PhotosCollectionViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionWidth = (collectionView.frame.width / 2) - 10
        return CGSize(width: collectionWidth, height: collectionWidth)
        
    }
    
}
