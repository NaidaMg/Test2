//
//  libraryViewModel.swift
//  Post
//
//  Created by Наида Магомаева on 12.09.2023.
//

import Foundation

final class LibraryViewModel {
    
let books: [Book] = [
    Book(name: "Книга1", imageName: "1"),
    Book(name: "Книга2", imageName: "2"),
    Book(name: "Книга3", imageName: "3"),
    Book(name: "Книга4", imageName: "4"),
    Book(name: "Книга5", imageName: "5"),
    Book(name: "Книга6", imageName: "6"),
    Book(name: "Книга7", imageName: "7"),
    Book(name: "Книга8", imageName: "8"),
    Book(name: "Книга9", imageName: "9"),
    Book(name: "Книга10",imageName: "10")]

    
    func didSelect(index: Int) {
        print(books[index])
    }
}

