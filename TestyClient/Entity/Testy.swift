//
//  Testy.swift
//  TestyClient
//
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation
import Himotoki

// Array がルートとなる JSON を Himotoki でパースする
// [
//     {
//         "id": 1,
//         "uri": "/testy",
//         "domain": "testy.io"
//     }
// ]

struct Testies: Decodable {
    
    let testies: [Testy]
    
    static func decode(_ e: Extractor) throws -> Testies {
        return try Testies(testies: decodeArray(e.rawValue))
    }
}

struct Testy: Decodable {
    let id: Int
    let uri: String
    let domain: String
    
    static func decode(_ e: Extractor) throws -> Testy {
        return try Testy(
            id:     e <| "id",
            uri:    e <| "uri",
            domain: e <| "domain"
        )
    }
}
