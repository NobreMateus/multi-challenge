//
//  CircleImageProfile.swift
//  multi-challenge
//
//  Created by Lidiane Gomes Barbosa on 13/05/21.
//

import SwiftUI

struct CircleImageProfile: View {
    @Binding var image: Image?
    @Binding var show: Bool
    var size: CGSize
    
    var body: some View {
        if let image = image {
                image
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
    }
}
