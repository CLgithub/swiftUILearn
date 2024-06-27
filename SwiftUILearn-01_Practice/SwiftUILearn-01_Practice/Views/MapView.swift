//
//  MapView.swift
//  SwiftUILearn-01_Practice
//
//  Created by L on 2024/6/27.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var coordinate: CLLocationCoordinate2D
    
    var body: some View {
        Map(position: .constant(.region(region)))
    }
    
    private var region: MKCoordinateRegion{
        MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta:0.2, longitudeDelta:0.2))
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 26.640332, longitude: 106.624237))
}
