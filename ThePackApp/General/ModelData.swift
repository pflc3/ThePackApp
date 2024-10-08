//
//  ModelData.swift
//  ThePackApp
//

import Foundation

// Declare and initialize arrays from json files
var dogInfoArray: [DogInfo] = load("DogInfoData.json")
var postArray: [Post] = load("PostsData.json")
var walkerArray: [Walker] = load("WalkerData.json")

// Loads and decodes a JSON file into a specified data type
// Throws a runtime error if file not found, can't be loaded, or can't be decoded
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
