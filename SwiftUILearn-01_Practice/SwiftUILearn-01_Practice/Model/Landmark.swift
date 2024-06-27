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
    var category: String
    var city: String
    var state: String
    var park: String
    var description: String
    
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
