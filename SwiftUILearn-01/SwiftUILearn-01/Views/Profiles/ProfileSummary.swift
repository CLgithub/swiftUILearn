//
//  ProfileSummary.swift
//  SwiftUILearn-01
//  获取一个实例并显示一些基本的用户信息
//  Created by L on 2024/8/11.
//

import SwiftUI

struct ProfileSummary: View {
    @Environment(ModelData.self) var modelData
    var profile: Profile
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 10){
                Text(profile.username).bold().font(.title)
                Text("Notifications: \(profile.prefersNotifications ? "On":"Off" )")
                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: ")+Text(profile.goalDate, style: .date)
                
                Divider()
                
                VStack(alignment: .leading){
                    Text("Completed Badges").font(.headline)
                    
                    ScrollView(.horizontal){
                        HStack{
                            HikeBadge(name: "First Hike") // 第一条
                            HikeBadge(name: "Earth Day").hueRotation(Angle(degrees: 90)) // 地球日 90度的色相旋转
                            HikeBadge(name: "Tenth Hike").grayscale(0.5).hueRotation(Angle(degrees: 45)) // 第十次 50%的灰度效果 45度的色相旋转
                        }
                        .padding(.bottom)
                    }
                }
                Divider()
                VStack(alignment: .leading){
                    Text("Recent Hikes").font(.headline)
                    HikeView(hike: modelData.hikes[0])
                }
            }
        }
    }
}

#Preview {
    ProfileSummary(profile: Profile.default)
}
