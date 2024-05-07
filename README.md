# Liveness Detection Core

Core components of liveness detection solution for Apple platforms.

This library contains the [SpoofDetector](./Sources/LivenessDetection/SpoofDetector.swift) protocol, which is adopted by all Ver-ID spoof detector classes. This allows you to add liveness (spoof) detection to your project without being explicit about the specific spoof detectors.
