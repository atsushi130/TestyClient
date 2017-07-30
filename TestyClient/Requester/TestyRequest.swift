//
//  TestyRequest.swift
//  TestyClient
//
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation
import APIKit
import Himotoki

protocol TestyRequest: Request { }

extension TestyRequest {
    var baseURL: URL {
        return URL(string: "http://localhost:8000")!
    }
}

extension TestyRequest where Response: Decodable {
    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> Response {
        return try decodeValue(object)
    }
}
