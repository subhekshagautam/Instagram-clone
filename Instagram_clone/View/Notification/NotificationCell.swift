//
//  NotificationBar.swift
//  Instagram_clone
//
//  Created by Subheksha Gautam on 8/6/2022.
//

import SwiftUI

struct NotificationCell: View {
    var body: some View {
        HStack{
            Image("ted")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
            // .clipped()
                .clipShape(Circle())
            Text("Tedmosby")
                .font(.system(size: 14, weight: .semibold))
            +
            Text(" Liked your comment.")
                .font(.system(size: 15))
            +
            Text(" 12H")
                .font(.system (size: 12))
                .foregroundColor(.gray)
            
            Spacer()
            Button(action: {
                
            }, label: {
                Text("Follow")
                .font(.system(size: 14, weight: .semibold))
                .frame(width: 100, height: 32)
                .foregroundColor(.white)
                .background(Color.blue)
                .overlay( RoundedRectangle(cornerRadius: 3)
                .stroke(Color.gray, lineWidth: 1))
            })
                
                    
          
        }.padding(.horizontal)
    }
}

struct  NotificationCell_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCell()
    }
}
