//
//  ProfileHost.swift
//  SwiftUILearn-01
//
//  Created by L on 2024/8/4.
//

import SwiftUI

struct ProfileHost: View{
    @Environment(\.editMode) var editMode   // 从环境中读取edit模型 放入editMode中
    @Environment(ModelData.self) var modelData  // 从环境中读取modelData，放入modelData
    @State private var draftProfile = Profile.default
    
    var body: some View{
        VStack(alignment: .leading, spacing: 20){
            HStack {
                Spacer()
                EditButton()    // 添加一个编辑按钮
            }
            if editMode?.wrappedValue == .inactive{ // 如果是完成状态
                ProfileSummary(profile: modelData.profile)  // 为了避免在确认任何编辑之前更新全局应用程序状态（例如当用户输入其姓名时），编辑视图会对其自身的副本进行操作。
            }else{  // 否则如果是编辑状态
                ProfileEditor(profile: $draftProfile)
            }
                
            
        }
        .padding()
    }
}

#Preview {
    ProfileHost()
        .environment(ModelData())
}
