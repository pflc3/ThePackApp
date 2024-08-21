//
//  Walker.swift
//  ThePackApp
//

import Foundation
import SwiftUI

// Walker object to store data from JSON file
struct Walker: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var bio: String
    var description: String
    var location: String
    var price: String
    var rating: String
    var email: String
    var phoneNumber: String
    private var headImage: String
    var headImageView: Image {
        Image(headImage)
    }
}
