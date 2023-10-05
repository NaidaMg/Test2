//
//  GetJSON.swift
//  Post
//
//  Created by Наида Магомаева on 06.10.2023.
//

import Foundation
import Alamofire

func jsonAlamofire (completion: @escaping (BooksResponse) -> Void) {
    
    AF.request("https://www.googleapis.com/books/").response {response in
        guard let data = response.data else {return}
        do {
            let decoder = JSONDecoder()
            let json = try decoder.decode(BooksResponse.self, from:data)
            
            DispatchQueue.main.async {
                completion(json)
            }
        }
        
        catch {print ("\(error)")}
    }
}
