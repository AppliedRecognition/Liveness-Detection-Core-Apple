//
//  SpoofDetector.swift
//
//
//  Created by Jakub Dolejs on 03/05/2024.
//

import Foundation
import UIKit

public protocol SpoofDetector {
    
    var identifier: String { get }
    
    var confidenceThreshold: Float { get set }
    
    var logger: Logger { get set }
    
    func detectSpoofInImage(_ image: UIImage, regionOfInterest roi: CGRect?) async throws -> Float
}

public extension SpoofDetector {
    
    func isSpoofedImage(_ image: UIImage, regionOfInterest roi: CGRect?) async throws -> Bool {
        let score = try await self.detectSpoofInImage(image, regionOfInterest: roi)
        return score >= self.confidenceThreshold
    }
}
