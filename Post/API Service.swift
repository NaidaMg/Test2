//
//  API File.swift
//  Post
//
//  Created by Наида Магомаева on 26.09.2023.
//

import Foundation
import Alamofire



final class APIService {
    
    let urlString = "https://openlibrary.org/works/OL45804W.json"
    
    
    func request(urlString: String, completion:@escaping (Result<SearchRespond, Error>)
    ) -> Void) {
        lazy var url: URL? = {
            return URL(string: urlString)
            URLSession.shared.dataTask(with: url) {(data, response, error) in
                DispatchQueue.main.async {
                    if let error = error {
                        print("Some error")
                        completion(.failure(error))
                        return
                    }
                    guard let data = data else {return}
                    do {
                        let booksData = try JSONDecoder().decode(SearchRespond.self, from: data)
                        completion( .success(booksData)
                                    } catch let jsonError {
                            print("error", jsonError)
                            completion( .failure(jsonError))
                        }
                                    }
                                    } .resume()
                        
                        
                        }
                        
                        
                        //    static let shared = APICaller()
                        //
                        //    private func getBooksFromAPI(completion: @escaping(Result<[String], Error>) -> Void) {
                        //        guard let url = URL(string: api) else {
                        //            return
                        //        }
                        //
                        //        let task = URLSession.shared.dataTask(with: url) {data, _, error in
                        //            if let error = error {
                        //                completion(.failure(error))
                        //            }
                        //            else if let data = data {
                        //                do {
                        //                    let result = try JSONDecoder().decode(APIResponse.self, from: data)
                        //
                        //                }
                        //                catch {
                        //                    completion(.failure(error))
                        //                }
                        //            }
                        //        }
                        //
                        //        task.resume()
                        //
                        //    }
                        //}
               
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        //    private func getBooksFromAPI() -> [Book] {
                        //        let api = "https://www.googleapis.com/books/"
                        //
                        //        guard let apiURL = URL(string: api) else { fatalError("что-то пошло не так :(")}
                        //
                        //        let session = URLSession(configuration: .default)
                        //        let task = session.dataTask(with: apiURL) { (data, response, error) in
                        //            guard let data = data, error == nil else {return}
                        //
                        //            let json = try!(data:json.data!)
                        //
                        //            let items = json["items"].array!
                        //
                        //            for i in items{
                        //
                        //                let id = i["id"].stringValue
                        //
                        //                let title = i["volumeInfo"]["title"].stringValue
                        //
                        //                let authors = i["volumeInfo"]["authors"].array!
                        //
                        //                var author = ""
                        //
                        //            }
                        //
                        //
                        //            DispatchQueue.main.async {
                        //
                        //                data.append(Book(id: id, title: title, authors: author, desc: description, imurl: imurl, url: url1))
                        //            }
                        //        }
                        //
                        //    }
                        //    task.resume()
                        //
                        //   }
                        //}
                        
                        
                        
                        }
