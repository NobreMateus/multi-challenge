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
    @Binding var show: Bool
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
                            .stroke(Color.white, lineWidth: 3.5)
                    )
                    .foregroundColor(.white)
                    .showView(show)
            }
            Circle()
                .frame(width: size.width, height: size.height, alignment: .center)
                .overlay(
                    Circle()
                        .stroke(Color.white, lineWidth: 3.5)
                )
                .foregroundColor(.red)
        }
    }
}
