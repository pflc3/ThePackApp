//
//  Datamanager.swift
//  BucketList
//
//  Created by Gcode on 8/6/24.
//

import Foundation

struct Dog: Decodable {
    var name: String
    var age: String
    var description: String
}
func loadDogs() -> [Dog] {
    guard let url = Bundle.main.url(forResource: "DogList", withExtension: "json"),
          let data = try? Data(contentsOf: url) else {
        return []
    }
    
    let decoder = JSONDecoder()
    return (try? decoder.decode([Dog].self, from: data)) ?? []
}







