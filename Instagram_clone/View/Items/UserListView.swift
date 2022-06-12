//
//  UserListView.swift
//  Instagram_clone
//
//  Created by Subheksha Gautam on 8/6/2022.
//

import SwiftUI

struct UserListView: View {
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach (0..<10) { _ in
                    UserCell()
                       .padding(.leading, 8)
                }
            }
        }

    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}
