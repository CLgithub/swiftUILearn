//
//  CircleImage.swift
//  SwiftUILearn-01_Practice
//
//  Created by L on 2024/6/27.
//

import SwiftUI

struct CircleImage: View {
    
    var image:Image
    
    var body: some View {
        image.clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay{
            Circle().stroke(.white, lineWidth: 4)
        }.shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: ModelData().landmarks[0].image)
}
