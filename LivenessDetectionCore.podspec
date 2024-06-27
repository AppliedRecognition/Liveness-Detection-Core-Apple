Pod::Spec.new do |spec|

  spec.name = "LivenessDetectionCore"
  spec.version = "1.0.0"
  spec.summary = "Liveness detection for iOS"

  spec.description = "This library contains the SpoofDetector protocol, which is adopted by all Ver-ID spoof detector classes. This allows you to add liveness (spoof) detection to your project without being explicit about the specific 
spoof detectors."

  spec.homepage = "https://github.com/AppliedRecognition/Liveness-Detection-Core-Apple"
  spec.license = { :type => "Commercial", :file => "LICENCE.txt" }
  
  spec.author = "Jakub Dolejs"
  
  spec.platform = :ios, "13.0"
  spec.swift_versions = ["5.5", "5.6", "5.7", "5.8", "5.9", "5.10"]
  
  spec.source = { :git => "https://github.com/AppliedRecognition/Liveness-Detection-Core-Apple.git", :tag => "#{spec.version}" }

  spec.source_files = "Sources/LivenessDetection/*.swift"
  spec.module_name = "LivenessDetection"

end
