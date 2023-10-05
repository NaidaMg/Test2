//
//  API File.swift
//  Post
//
//  Created by Наида Магомаева on 26.09.2023.
//

import Foundation
import Alamofire



struct BooksResponse: Decodable {
    let results: [Book]
}

struct Book: Decodable {
    var id: Int
    var title: String
    var authors: String
    var desc: String
    var imurl: String
    var url: String
}


func fetchBooksFromAPI() -> [Book] {
    let api = "https://www.googleapis.com/books/v1/volumes?q=fantazy"
    
    guard let apiURL = URL(string: api) else { fatalError("что-то пошло не так :(")}
    
    let session = URLSession(configuration: .default)
    let task = session.dataTask(with: apiURL) { (data, response, error) in
        guard let data = data, error == nil else {return}
        
        let json = try!(data:json.data!)
        
        let items = json["items"].array!
        
        for i in items{
            
            let id = i["id"].stringValue
            
            let title = i["volumeInfo"]["title"].stringValue
            
            let authors = i["volumeInfo"]["authors"].array!
            
            var author = ""
            
            }
            
            
            DispatchQueue.main.async {
                
            data.append(Book(id: id, title: title, authors: author, desc: description, imurl: imurl, url: url1))
            }
        }
        
    } .task.resume()
    

