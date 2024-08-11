//
//  CategoryHome.swift
//  SwiftUILearn-01_Practice
//
//  Created by L on 2024/8/11.
//

import SwiftUI

struct CategoryHome: View {
    
    @Environment(ModelData.self) var modelData
    
    var body: some View {
        NavigationSplitView{
            List{
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())    // 设置边缘为0
                ForEach(modelData.categories.keys.sorted(), id: \.self){ key in
                    CategoryRow(
                        categoryName: key,
                        items: Array(modelData.categories[key]!)
                    )
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Featured")
        }detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    CategoryHome().environment(ModelData())
}
