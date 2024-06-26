//
//  ModelData.swift
//  SwiftUILearn-01
//
//  Created by L on 2024/6/26.
//

import Foundation

var landmarks: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ filename: String) -> T{
    let data: Data
    
    guard let file=Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("构建中，不能找到 \(filename) ")
    }
    
    do{
        data = try Data(contentsOf: file)
    } catch{
        fatalError("主构建中，不能加载"+filename+"\n\(error)")
    }
    
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
    
}
