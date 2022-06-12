//
//  UserCell.swift
//  Instagram_clone
//
//  Created by Subheksha Gautam on 8/6/2022.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack{
            Image("ted")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipped()
               // .cornerRadius(24)
               .clipShape(Circle())
            VStack{
                Text("tedmosby")
                    .font(.system(size: 14, weight: .semibold))
                Text("ted mosby")
                    .font(.system(size: 14))
            }
            Spacer()
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
