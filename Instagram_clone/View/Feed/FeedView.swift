//
//  FeedView.swift
//  Instagram_clone
//
//  Created by Subheksha Gautam on 7/6/2022.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView{
            LazyVStack(spacing:32){
                ForEach(0..<10) { _ in
                    FeedCell()
                }
            }
        }

    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
