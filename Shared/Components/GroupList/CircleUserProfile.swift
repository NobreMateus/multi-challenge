//
//  CircleUserProfile.swift
//  multi-challenge (iOS)
//
//  Created by Eduardo Oliveira on 14/05/21.
//

import SwiftUI

struct CircleUserProfile: View {
    
    @State var image: Image?
    @State var name: String
    @State var color: Color
    
    var size: CGSize = CGSize(width: 25, height: 25)
    
    var body: some View {
        ZStack {
            if let image = image {
                Circle()
                    .frame(width: size.width, height: size.height, alignment: .center)
                    .overlay(
                        Circle()
                            .stroke(Color.white, lineWidth: 2.0)
                    )
                    .foregroundColor(color)
                image
                    .resizable()
                    .frame(width: size.width, height: size.height, alignment: .center)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(Color.white, lineWidth: 2.0)
                    )
                    .foregroundColor(.white)
            } else {
                Circle()
                    .frame(width: size.width, height: size.height, alignment: .center)
                    .overlay(
                        Circle()
                            .stroke(Color.white, lineWidth: 2.0)
                    )
                    .foregroundColor(color)
                Text(name)
                    .foregroundColor(.white)
                    .bold()
            }
        }
    }
}
