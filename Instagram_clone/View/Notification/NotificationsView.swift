//
//  NotificationsView.swift
//  Instagram_clone
//
//  Created by Subheksha Gautam on 7/6/2022.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        ScrollView{
            LazyVStack{
            ForEach (0..<10){ _ in
                NotificationCell()
                    .padding(.top)
            }
            }
        }
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}

