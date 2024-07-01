//
//  SwiftUILearn_01_PracticeApp.swift
//  SwiftUILearn-01_Practice
//
//  Created by L on 2024/6/27.
//

import SwiftUI

@main
struct SwiftUILearn_01_PracticeApp: App {
    
    @State private var modelData: ModelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(modelData)
        }
    }
}
