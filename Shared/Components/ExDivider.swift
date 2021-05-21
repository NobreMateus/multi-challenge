//
//  ExDivider.swift
//  multi-challenge (iOS)
//
//  Created by Lidiane Gomes Barbosa on 18/05/21.
//

import SwiftUI

struct ExDivider: View {
    let color: Color = Color.gray.opacity(0.3)
    let height: CGFloat = 1
    var body: some View {
        Rectangle()
            .fill(color)
            .frame(maxHeight: height, alignment: .center)
            .edgesIgnoringSafeArea(.horizontal)
    }
}
