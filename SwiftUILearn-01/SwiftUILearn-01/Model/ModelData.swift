//
//  ModelData.swift
//  SwiftUILearn-01
//  数据加载工具
//  Created by L on 2024/6/26.
//

import Foundation

@Observable // 将 ModelData 类 标记为可观察的。这个类的所有属性变化都会被 SwiftUI 自动追踪。
class ModelData{
    // 定义一个Landmark类型的数组 landmarks，数组值来源于调用 load方法，方法传参String landmarkData.json
    var landmarks: [Landmark] = load("landmarkData.json")
    var hikes: [Hike]=load("hikeData.json")
    
    // 新建一个键值对计算块 将类别名称作为键，以及每个键的关联地标数组为值
    var categories: [String:[Landmark]]{
        Dictionary(
            grouping: landmarks,
            by:{$0.category.rawValue}
        )
    }
    
}

// 定义一个泛型方法，方法名：load，用于从指定的文件中加载并解码数据，泛型类型 T 必须符合 Decodable 协议
func load<T: Decodable>(_ filename: String) -> T{
    let data: Data
    
    // 使用 guard 语句尝试获取指定文件的 URL，如果获取失败则终止程序并输出错误信息
    guard let file=Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("构建中，不能找到 \(filename) ")
    }
    
    // 尝试从指定文件 URL 读取数据并赋值给 data 变量，如果读取失败则抛出错误
    do{
        data = try Data(contentsOf: file)
    } catch{
        fatalError("主构建中，不能加载"+filename+"\n\(error)")
    }
    
    do{
        // 创建一个 JSONDecoder 实例，用于解码 JSON 数
        let decoder = JSONDecoder()
        // 尝试将 data 解码为指定的泛型类型 T 并返回结果，如果解码失败则抛出错误
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
    
}


