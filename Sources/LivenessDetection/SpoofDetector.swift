//
//  SpoofDetector.swift
//
//
//  Created by Jakub Dolejs on 03/05/2024.
//

import Foundation
import UIKit

/// Spoof detector protocol
/// - Since: 1.0.0
@available(iOS 13, *)
public protocol SpoofDetector {
    
    /// Spoof detector identifier
    /// - Since: 1.0.0
    var identifier: String { get }
    
    /// Confidence threshold
    ///
    /// Detections with scores below the threshold are not treated as spoofs
    /// - Since: 1.0.0
    var confidenceThreshold: Float { get set }
    
    /// Detect spoof in image
    /// - Parameters:
    ///   - image: Image in which to detect spoof
    ///   - roi: Region of interest – this is typically a face bounding box
    /// - Returns: Confidence score between `0.0` and `1.0`
    /// - Since: 1.0.0
    func detectSpoofInImage(_ image: UIImage, regionOfInterest roi: CGRect?) async throws -> Float
}

@available(iOS 13, *)
public extension SpoofDetector {
    
    /// Check whether image is a spoof
    /// - Parameters:
    ///   - image: Image to check for spoofs
    ///   - roi: Region of interest – this is typically a face bounding box
    /// - Returns: `true` if the image is a spoof, `false` otherwise
    /// - Since: 1.0.0
    func isSpoofImage(_ image: UIImage, regionOfInterest roi: CGRect?) async throws -> Bool {
        let score = try await self.detectSpoofInImage(image, regionOfInterest: roi)
        return score >= self.confidenceThreshold
    }
}
