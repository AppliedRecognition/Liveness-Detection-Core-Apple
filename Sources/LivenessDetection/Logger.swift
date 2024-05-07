//
//  Logger.swift
//
//
//  Created by Jakub Dolejs on 03/05/2024.
//

import Foundation

public protocol Logger {
    
    var tag: String { get set }
    
    func log(_ message: String)
}
