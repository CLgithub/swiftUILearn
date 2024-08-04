//
//  ProfileHost.swift
//  SwiftUILearn-01
//
//  Created by L on 2024/8/4.
//

import SwiftUI

struct ProfileHost: View{
    @State private var draftProfile = Profile.default
    
    var body: some View{
        Text("Profile for: \(draftProfile.username)")
    }
}

#Preview {
    ProfileHost()
}
