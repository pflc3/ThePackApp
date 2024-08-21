//
//  DogInfo.swift
//  ThePackApp
//

import Foundation
import SwiftUI

struct DogInfo: Hashable, Codable, Identifiable {
    var id: Int
    var breed: String
    var lifeStage: String
    var age: String
    var description: String
    
    var medAdvice1: String
    var medAdvice2: String
    var medAdvice3: String
    
    var foodAdvice1: String
    var foodAdvice2: String
    var foodAdvice3: String
    
    var thingsToWatch1: String
    var thingsToWatch2: String
    var thingsToWatch3: String
    
    private var headImage: String
    var headImageView: Image {
        Image(headImage)
    }
    
    private var bodyImage: String
    var bodyImageView: Image {
        Image(bodyImage)
    }
}
