//
//  PhotoCell.swift
//  Post
//
//  Created by Наида Магомаева on 31.07.2023.
//

import UIKit

class PhotoCell: UICollectionViewCell {
    func update(label text: String, image: UIImage) {
        bookName.text = text
        imageView.image = image
    }
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet private weak var bookName: UILabel!
    
}


print("Hello")
