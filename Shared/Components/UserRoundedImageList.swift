//
//  UserRoundedImageList.swift
//  multi-challenge
//
//  Created by Elias Ferreira on 16/05/21.
//

import SwiftUI

struct Item {
    let image: UIImage
}

struct UserRoundedImageList: View {
    var size: CGFloat
    var mock: [Item]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .bottom) {
                ForEach(mock.indices, id: \.self) { index in
                    UserRoundedImage(size: self.size, image: mock[index].image)
                }
            }
            .frame(maxWidth: .infinity, minHeight: size + (size * 0.7))
        }
        .padding()
    }
}
