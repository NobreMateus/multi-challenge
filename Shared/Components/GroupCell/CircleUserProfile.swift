//
//  CircleUserProfile.swift
//  multi-challenge (iOS)
//
//  Created by Eduardo Oliveira on 14/05/21.
//

import SwiftUI

struct CircleUserProfile: View {
    @Binding var image: UIImage?
    @State var name: String
    var size: CGSize
    
    var body: some View {
        ZStack {
            if let image = image {
                Image(uiImage: image)
                    .resizable()
                    .frame(width: size.width, height: size.height, alignment: .center)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(Color.white, lineWidth: 2.0)
                    )
                    .foregroundColor(.white)
            }
            ZStack {
                Circle()
                    .frame(width: size.width, height: size.height, alignment: .center)
                    .overlay(
                        Circle()
                            .stroke(Color.white, lineWidth: 2.0)
                    )
                    .foregroundColor(.red)
                Text(name)
                    .foregroundColor(.white)
                    .bold()
            }
        }
    }
}
