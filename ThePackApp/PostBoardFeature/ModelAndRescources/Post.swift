//
//  Post.swift
//  ThePackApp
//

import Foundation
import SwiftUI

struct Post: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var category: String
    var description: String
    var comment1: String
    var comment2: String
}
