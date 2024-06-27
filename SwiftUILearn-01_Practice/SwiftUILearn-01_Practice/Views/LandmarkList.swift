//
//  LandmarkList.swift
//  SwiftUILearn-01_Practice
//
//  Created by L on 2024/6/27.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView{
            List(landmarks){
                l in NavigationLink{
                    LandmarkDetail(landmark: l)
                }label: {
                    LandmarkRow(landmark: l)
                }
            }.navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
