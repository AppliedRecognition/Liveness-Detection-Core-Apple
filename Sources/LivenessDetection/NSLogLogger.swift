//
//  NSLogLogger.swift
//
//
//  Created by Jakub Dolejs on 03/05/2024.
//

import Foundation

public class NSLogLogger: Logger {
    
    public var tag: String = "Liveness detection"
    
    public init(tag: String? = nil) {
        if let tag = tag {
            self.tag = tag
        }
    }
    
    public func log(_ message: String) {
        NSLog("[\(tag)] \(message)")
    }
}
