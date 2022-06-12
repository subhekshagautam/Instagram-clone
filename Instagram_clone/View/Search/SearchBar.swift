//
//  SearchBar.swift
//  Instagram_clone
//
//  Created by Subheksha Gautam on 8/6/2022.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @Binding var isEditing: Bool
    var body: some View {
        HStack{
            TextField("search...", text: $text)
                .padding(8)
                .padding(.horizontal, 24)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    }
                )
            Button{
                isEditing = false
                text = ""
                //for keyword display and remove
                UIApplication.shared.endEditing()
            } label:{
                Text("cancel")
                    .foregroundColor(.black)
                
            }
            .padding(.trailing, 8)
            .transition(.move(edge: .trailing))
        }
        .onTapGesture{
            isEditing = true
        }
    }
}


