//
//  LandmarkDetail.swift
//  SwiftUILearn-01_Practice
//
//  Created by L on 2024/6/27.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    var body: some View {
        ScrollView{
            MapView(coordinate: landmark.locationCoordinate).frame(height: 300)
            CircleImage(image: landmark.image).offset(y:-130).padding(.bottom,-130)
            
            VStack(alignment: .leading) {
                Text(landmark.name).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.black) // 名称
                // 简介
                HStack{
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }.font(.subheadline).foregroundColor(.secondary)
                Divider()   // 分割线
                Text("About \(landmark.name)").font(.title2)    // 关于
                Text(landmark.description)  // 描述
            }.padding() // 给 VStack添加填充
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}