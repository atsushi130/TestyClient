//
//  TestyApi.swift
//  TestyClient
//
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation
import APIKit
import Himotoki

struct TestyApi: TestyRequest {
    
    typealias Response = Testies
    
    var method: HTTPMethod {
        return .get
    }
    
    var path: String {
        return "/testy"
    }
}
