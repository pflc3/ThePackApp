//
//  DataManager.swift
//  BucketList
//

import Foundation
import SwiftUI

struct DogListItem: Decodable{
    var name: String
    var age: String
    var details: String
}

func loadDogList() -> [DogListItem] {
    guard let url = Bundle.main.url(forResource: "BucketList", withExtension: "json"),
          let data = try? Data(contentsOf: url) else {
        return []
    }
    
    let decoder = JSONDecoder()
    return (try? decoder.decode([DogListItem].self, from: data)) ?? []
}

