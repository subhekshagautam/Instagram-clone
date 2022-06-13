//
//  MainView.swift
//  Instagram_clone
//
//  Created by Subheksha Gautam on 7/6/2022.
//

import SwiftUI
struct MainView: View {
    
    @Binding var selectedIndex: Int
    
    var body: some View {
        
        NavigationView{
            TabView(selection: $selectedIndex){
                FeedView()
                    .onTapGesture {
                        selectedIndex = 0
                    }
                    .tabItem {
                        Image(systemName: "house")
                    }.tag(0)
                SearchView()
                    .onTapGesture {
                        selectedIndex = 1
                    }
                    .tabItem{
                        Image(systemName: "magnifyingglass")
                    }.tag(1)
                UploadPostView()
                    .onTapGesture {
                        selectedIndex = 2
                    }
                    .tabItem {
                        Label("", systemImage: "plus.square")
                        //  Image(systemName: "plus.square")
                    }.tag(2)
                NotificationsView()
                    .onTapGesture {
                        selectedIndex = 3
                    }
                    .tabItem {
                        Image(systemName: "heart")
                    }.tag(3)
                ProfileView()
                    .onTapGesture {
                        selectedIndex = 4
                    }
                    .tabItem {
                        Image(systemName: "person")
                    }.tag(4)
                
            }.navigationTitle(tabTitle)
                .navigationBarItems( trailing: logoutButton)
                .accentColor(.black)
            
        }
    }
    
    var logoutButton: some View{
        Button{
            AuthViewModel.shared.logout()
        }label:{
            Text("log Out")
                .foregroundColor(.black)
        }
    }
    
    //for navigation title change in all pages
    var tabTitle: String{
        switch selectedIndex{
        case 0:
            return "Feed"
        case 1:
            return "Search"
        case 2:
            return "Upload"
        case 3:
            return "Notification"
        case 4:
            return "Profile"
            
        default:
           return ""
        }
    }
}

