//
//  UserStats.swift
//  Instagram_clone
//
//  Created by Subheksha Gautam on 11/6/2022.
//

import SwiftUI

struct UserStats: View {
    let value : Int
    let title: String
    
    var body: some View {
        VStack {
            Text(title)
                .font(.system(size: 15, weight: .semibold))
            Text("\(value)")
                .font(.system(size: 15))
        }.frame(width: 80 , alignment: .center)
    }
}
