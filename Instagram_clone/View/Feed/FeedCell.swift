//
//  FeedCell.swift
//  Instagram_clone
//
//  Created by Subheksha Gautam on 7/6/2022.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack(alignment:.leading){
            
            HStack {
                Image ("ted")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipped()
                    .cornerRadius(18)
                Text("tedmosby")
                    .font(.system(size: 14, weight: .semibold))
            }
            // giving two padding, as an array of padding
            .padding([.leading, .bottom], 8)
            
            Image("ted")
                .resizable()
                .scaledToFill()
                .frame(maxHeight:440 )
                .clipped()
            
            HStack (spacing: 16){
                
                Image(systemName: "heart")
                    .resizable()
                    .scaledToFill()
                    .foregroundColor(.black)
                    .frame(width: 20 , height: 20)
                    .font(.system(size: 20))
                    .padding(4)
                
                Image(systemName: "bubble.right")
                    .resizable()
                    .scaledToFill()
                    .foregroundColor(.black)
                    .frame(width: 20 , height: 20)
                    .font(.system(size: 20))
                    .padding(4)
                
                Image(systemName: "paperplane")
                    .resizable()
                    .scaledToFill()
                    .foregroundColor(.black)
                    .frame(width: 20 , height: 20)
                    .font(.system(size: 20))
                    .padding(4)
                
            }
            .padding(.leading, 4)
            .foregroundColor(.black)
            
            Text("25 Likes")
                .font(.system (size: 14, weight: .semibold))
                .padding(.leading, 8)
                .padding(.bottom, 0.5)
            
            HStack {
                Text("Tedmosby")
                    .font(.system (size: 14, weight: .semibold)) +
                Text("lets go formal today ")
                    .font(.system (size: 14))
            }.padding(.horizontal, 8)
            
            Text ("2Hrs").font(.system (size: 14))
                .foregroundColor(.gray)
                .padding(.leading, 8)
                .padding(.top, -2)
        }
        
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
