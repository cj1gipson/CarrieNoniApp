//
//  Landmark.swift
//  Carrie Noni
//
//  Created by Deangelo Stewart on 3/27/23.
//

import Foundation
import SwiftUI

struct Landmark: Hashable, Codable {
    var id: Int
    var vidName: String
    var vidDescription: String
    
    private var imageName: String
    
    var image: Image {
        Image(imageName)
    }
}
