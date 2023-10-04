//
//  PhotoCell.swift
//  Post
//
//  Created by Наида Магомаева on 31.07.2023.
//

import UIKit

class PhotoCell: UICollectionViewCell {
    
    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var bookName: UILabel!
    
    
    func setup(with book: Book) {
//        imageView.image = book.image
        bookName.text = book.name
    }
    
}


