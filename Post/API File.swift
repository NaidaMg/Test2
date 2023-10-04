//
//  API File.swift
//  Post
//
//  Created by Наида Магомаева on 26.09.2023.
//

//import Foundation
//
//final class APICaller {
//    static let shared = APICaller()
//
//
//    private struct Constans {
//        static let apiKey = ""
//
//    }
//
//    private init() {
//
//    }
//
//    func getAllBooksData(
//        complition: @escaping (Result<[Book], Error>) -> Void)
//    ) {
//
//    }
//
    
    
    
    // func getAllBooks(completion: @escaping (Result<[Book], Error>) -> Void)
    //{ guard Reachability.isConnectedToNetwork(),
    //        let url = URL(string: "https://api.litnet.com/library/get") else {
    //    completion(.failure(CustomNSError.notConnectedToInternet))
    //    return
    //}
    //
    //var request = URLRequest(url: url)
    //    request.httpMethod = "GET"
    //
    //    URLSession.shared.dataTask(with: request) {data, _, error in
    //        if let error = error {
    //            print (#function, ("Request: \(request\nError: \(error)"))
    //completion(.failure(error))
    //return
    //}
    //
    //guard let data = data else {
    //completion(.failure(CocoaError.noData))
    //return
    //}
    //do {
    //        let books = try JSONDecoder().decode(Decodable.Protocol, BooksResponse.self, from: data)
    //completion(.success(books.data))
    //} catch let error {
    //print(#function, "Request: \(request) ")
    //}
    //        }
    //
    //    }
    
    
    //            func fetchData() {
    //                let url = URL(string: "https://example.com/api")!
    //                URLSession.shared.dataTask(with: url) { data, response, error in
    //                    if let error = error {
    //                        print("Error: \(error.localizedDescription)")
    //                        return
    //                    }
    //                    guard let httpResponse = response as? HTTPURLResponse,
    //                          (200...299).contains(httpResponse.statusCode) else {
    //                        print("Invalid response")
    //                        return
    //                    }
    //                    guard let data = data else {
    //                        print("No data received")
    //                        return
    //                    }
    //                    do {
    //                        let decoder = JSONDecoder()
    //                        let result = try decoder.decode(Result.self, from: data)
    //                        // Use the result to populate your app's views
    //                    } catch {
    //                        print("Error decoding JSON: \(error.localizedDescription)")
    //                    }
    //                }.resume()
    //            }
    //
    //

