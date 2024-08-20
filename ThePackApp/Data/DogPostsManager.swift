//
//  DogMessagesManager.swift
//  ThePackApp
//

import Foundation
import SwiftUI

struct DogMessagesItem: Decodable{
    var name: String
    var age: String
    var details: String
}

func loadDogMessages() -> [DogMessagesItem] {
    guard let url = Bundle.main.url(forResource: "DogMessages", withExtension: "json"),
          let data = try? Data(contentsOf: url) else {
        return []
    }
    
    let decoder = JSONDecoder()
    return (try? decoder.decode([DogMessagesItem].self, from: data)) ?? []
}
