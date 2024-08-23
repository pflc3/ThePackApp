//
//  Post.swift
//  ThePackApp
//

import Foundation
import SwiftUI

// PostInfo data struct to store data from JSON file
struct Post: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var category: String
    var description: String
    
    var comment1: String
    var comment2: String
    
    var user1: String
    var user2: String
}
