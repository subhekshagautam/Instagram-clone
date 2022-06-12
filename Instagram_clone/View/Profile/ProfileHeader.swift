//
//  ProfileHeader.swift
//  Instagram_clone
//
//  Created by Subheksha Gautam on 11/6/2022.
//

import SwiftUI

struct ProfileHeader: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Image("ted")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80,height: 80)
                    .clipShape(Circle())
                    .padding(.leading,16)
                Spacer()
                HStack(spacing: 16 ){
                    UserStats(value: 210, title: "Post")
                    UserStats(value: 210, title: "Followers")
                    UserStats(value: 210, title: "following")
                }.padding(.trailing, 32)
                
            }
        }
    }
}

struct ProfileHeader_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeader()
    }
}
