//
//  FavoriteButton.swift
//  SwiftUILearn-01
//  收藏按钮
//  Created by L on 2024/6/30.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet:Bool // 这是一个属性包装器，用于创建对某个值的引用，而不是值本身。它允许子视图修改父视图中的状态，实现了双向数据流。
    // 绑定属性包装器可让您在存储数据的属性和显示和更改数据的视图之间进行读写。由于您使用绑定，因此在此视图内所做的更改会传播回数据源。
    
    var body: some View {
        Button{ // 添加一个按钮
            isSet.toggle()  // 按钮用来切换isSet
        } label:{
            Label("Toggle Favorite", systemImage: isSet ? "star.fill": "star") // 按钮名称Toggle Favorite，用一个系统图标，若isSet=true，就显示填满的五角星
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow: .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
