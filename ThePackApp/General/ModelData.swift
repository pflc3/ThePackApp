//
//  ModelData.swift
//  ThePackApp
//
import Foundation

// Controls debug output (set to false for production)
private let debugOutput = false

// Declare and initialize arrays from json files with correct paths
var dogInfoArray: [DogInfo] = load("DogInfoData.json", subdirectory: "DogInfoFeature/ModelAndRescources")
var postArray: [Post] = load("PostsData.json", subdirectory: "PostBoardFeature/ModelAndRescources")
var walkerArray: [Walker] = load("WalkerData.json", subdirectory: "WalkerFeature/ModelAndRescources")

// Loads and decodes a JSON file with subdirectory support
func load<T: Decodable>(_ filename: String, subdirectory: String? = nil) -> T {
    // For debugging
    if debugOutput { print("📂 Loading \(filename) from \(subdirectory ?? "main bundle")") }
    
    // Find file
    var fileURL: URL?
    
    // Try subdirectory first if provided
    if let subdirectory = subdirectory {
        fileURL = Bundle.main.url(forResource: filename, withExtension: nil, subdirectory: subdirectory)
    }
    
    // Fallback to main bundle if not found in subdirectory
    if fileURL == nil {
        fileURL = Bundle.main.url(forResource: filename, withExtension: nil)
    }
    
    // Ensure file exists
    guard let file = fileURL else {
        if debugOutput {
            print("❌ File not found: \(filename)")
            // List available JSON files to help troubleshoot
            let resources = Bundle.main.paths(forResourcesOfType: "json", inDirectory: nil)
            if !resources.isEmpty {
                print("📋 Available JSON files:")
                for resource in resources {
                    print("  - \(resource)")
                }
            } else {
                print("No JSON files found in the bundle.")
            }
        }
        fatalError("Couldn't find \(filename) in bundle.")
    }
    
    // Load file data
    let data: Data
    do {
        data = try Data(contentsOf: file)
        if debugOutput { print("✅ Loaded data from \(file.lastPathComponent)") }
    } catch {
        print("❌ Failed to read data: \(error)")
        fatalError("Couldn't load \(filename) from bundle: \(error)")
    }
    
    // Decode JSON data
    do {
        let decoder = JSONDecoder()
        let result = try decoder.decode(T.self, from: data)
        
        // Log count if it's an array
        if debugOutput, let array = result as? Array<Any> {
            print("📊 Loaded \(array.count) items from \(filename)")
        }
        
        return result
    } catch {
        print("❌ Failed to decode \(filename): \(error)")
        fatalError("Couldn't parse \(filename) as \(T.self): \(error)")
    }
}
