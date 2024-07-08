//
//  HexagonParameters.swift
//  SwiftUILearn-01
//  徽章背景图形
//  Created by L on 2024/7/7.
//

import CoreGraphics
import Foundation

struct HexagonParameters {
    
    // 定义一个嵌套的结构体 Segment，用于表示图形的一段，每段从上一个点的终点开始，沿着直线到line，再沿着曲线到curve，CGPoint控制曲线弯度
    struct Segment {
        let line: CGPoint       // 直线终点
        let curve: CGPoint      // 曲线终点
        let control: CGPoint    // 曲线控制点
    }
    
    static let adjustment: CGFloat = 0.085
    
    // 定义图形
    static let segments = [
        Segment(
            line:    CGPoint(x: 0.60, y: 0.05),
            curve:   CGPoint(x: 0.40, y: 0.05),
            control: CGPoint(x: 0.50, y: 0.00)
       ),
        Segment(
            line:    CGPoint(x: 0.05, y: 0.20 + adjustment),
            curve:   CGPoint(x: 0.00, y: 0.30 + adjustment),
            control: CGPoint(x: 0.00, y: 0.25 + adjustment)
       ),
        Segment(
            line:    CGPoint(x: 0.00, y: 0.70 - adjustment),
            curve:   CGPoint(x: 0.05, y: 0.80 - adjustment),
            control: CGPoint(x: 0.00, y: 0.75 - adjustment)
       ),
        Segment(
            line:    CGPoint(x: 0.40, y: 0.95),
            curve:   CGPoint(x: 0.60, y: 0.95),
            control: CGPoint(x: 0.50, y: 1.00)
       ),
        Segment(
            line:    CGPoint(x: 0.95, y: 0.80 - adjustment),
            curve:   CGPoint(x: 1.00, y: 0.70 - adjustment),
            control: CGPoint(x: 1.00, y: 0.75 - adjustment)
       ),
        Segment(
            line:    CGPoint(x: 1.00, y: 0.30 + adjustment),
            curve:   CGPoint(x: 0.95, y: 0.20 + adjustment),
            control: CGPoint(x: 1.00, y: 0.25 + adjustment)
        )
    ]
    
    
    static let length: CGFloat=0.7
    static let wan: CGFloat=0.1
    // 定义一个圆角正方形
    static let segments2 = [
        Segment(
            line:    CGPoint(x: BadgeBackground.x-length, y: BadgeBackground.y+adjustment),
            curve:   CGPoint(x: BadgeBackground.x-length-wan, y: BadgeBackground.y+adjustment+wan),
            control: CGPoint(x: BadgeBackground.x-length-wan, y: BadgeBackground.y+adjustment)
        ),
        Segment(
            line:    CGPoint(x: BadgeBackground.x-length-wan, y: BadgeBackground.y+adjustment+wan+length),
            curve:   CGPoint(x: BadgeBackground.x-length, y: BadgeBackground.y+adjustment+wan+length+wan),
            control: CGPoint(x: BadgeBackground.x-length-wan, y: BadgeBackground.y+adjustment+wan+length+wan)
        ),
        Segment(
            line:    CGPoint(x: BadgeBackground.x, y: BadgeBackground.y+adjustment+wan+length+wan),
            curve:   CGPoint(x: BadgeBackground.x+wan, y: BadgeBackground.y+adjustment+wan+length),
            control: CGPoint(x: BadgeBackground.x+wan, y: BadgeBackground.y+adjustment+wan+length+wan)
        ),
        Segment(
            line:    CGPoint(x: BadgeBackground.x+wan, y: BadgeBackground.y+adjustment+wan),
            curve:   CGPoint(x: BadgeBackground.x, y: BadgeBackground.y+adjustment),
            control: CGPoint(x: BadgeBackground.x+wan, y: BadgeBackground.y+adjustment)
        ),
    ]
}
