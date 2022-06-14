//
//  ProfileHeader.swift
//  Instagram_clone
//
//  Created by Subheksha Gautam on 11/6/2022.
//

import SwiftUI

struct ProfileHeader: View {
    
    @State var userImage: Image?
    @State var imagePickerRepresented = false
    @State private var selectedImage: UIImage?
    
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                ZStack{
                    if let image = userImage
                    {
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80,height: 80)
                            .clipShape(Circle())
                            .padding(.leading,16)
                    }
                    else{
                        Button(action: {
                            self.imagePickerRepresented.toggle()
                        }, label: {
                            Image("ted")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80,height: 80)
                                .clipShape(Circle())
                                .padding(.leading,16)
                        }).sheet(isPresented: $imagePickerRepresented, onDismiss:loadImage, content:{ ImagePicker(image: $selectedImage)
                        })
                    }
                }
                Spacer()
                
                HStack(spacing: 16 ){
                    UserStats(value: 210, title: "Post")
                    UserStats(value: 210, title: "Followers")
                    UserStats(value: 210, title: "following")
                }.padding(.trailing, 32)
            }
            // make apper usename
            Text(AuthViewModel.shared.currentUser?.fullname ?? "")
                .font(.system(size: 15, weight: .bold))
                .padding([.leading, .top])
        }
    }
}
extension ProfileHeader {
    func loadImage(){
        guard let selectedImage = selectedImage else {return}
        userImage = Image(uiImage: selectedImage)
    }
    
}
