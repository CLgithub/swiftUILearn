//
//  ContentView.swift
//  SwiftUILearn-01_Practice
//
//  Created by L on 2024/6/27.
//

import SwiftUI

struct ContentView: View {
    @State private var  selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab){
            LandmarkList()
                .tabItem{
                    Label("Landmarks", systemImage: "list.bullet")
                }
                .tag(0)
            CategoryHome()
                .tabItem{
                    Label("category", systemImage: "star")
                }
                .tag(1)
        }
    }
}

#Preview {
    ContentView().environment(ModelData())
}
