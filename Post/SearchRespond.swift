//
//  SearchRespond.swift
//  Post
//
//  Created by Наида Магомаева on 15.10.2023.
//

import Foundation

struct SearchRespond: Decodable {
    var title: String
    var key: String
    var authors: String
    var description: String
    var covers: Int
    var subjects: String
}
