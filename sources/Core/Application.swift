//
// Application.swift
// Created by Igor Tarasenko on 22/11/17
// Copyright © 2017 Igor Tarasenko
// Licensed under the MIT license, see LICENSE file
//

import Foundation

public protocol ApplicationProtocol {
    var name: String { get }
}

public class Application: ApplicationProtocol {
    public let name: String  = "CleanEvents"
    
    public init() {
        
    }
}
