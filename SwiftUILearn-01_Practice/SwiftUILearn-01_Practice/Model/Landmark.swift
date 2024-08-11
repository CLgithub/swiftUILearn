//
//  Landmark.swift
//  SwiftUILearn-01_Practice
//
//  Created by L on 2024/6/27.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var city: String
    var state: String
    var park: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool
    
    var category: Category
    enum Category: String, CaseIterable, Codable{
        case lakes = "Lakes" //
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
    
    private var imageName:String
    var image: Image{
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    struct Coordinates: Hashable, Codable{
        var longitude:Double
        var latitude:Double
    }
    
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
}
