//
//  MainView.swift
//  Instagram_clone
//
//  Created by Subheksha Gautam on 7/6/2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                }
            SearchView()
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }
            UploadPostView()
                .tabItem {
                    Label("", systemImage: "plus.square")
                  //  Image(systemName: "plus.square")
                }
            NotificationsView()
                .tabItem {
                    Image(systemName: "heart")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                }
            
            
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
