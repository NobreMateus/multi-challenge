//
//  ContentCover.swift
//  multi-challenge (iOS)
//
//  Created by Lidiane Gomes Barbosa on 12/05/21.
//

import SwiftUI

struct ContentCover: View {
    var title: String
    var width = CGFloat(162)
    var height = CGFloat(150)
    var body: some View {
        ZStack(content: {
            Rectangle().fill(Color.red).cornerRadius(14)
            AuxiliarView(width: width, height: height)
                .fill(Color.blue).cornerRadius(14)

            Text(title).foregroundColor(.white)
        })
        .frame(width: width, height: height, alignment: .center)
        
    }
}

struct AuxiliarView: Shape {
    var width: CGFloat
    var height: CGFloat
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.maxX, y: height * 0.3))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY - width * 0.3))
        return path
    }
}

struct ContentCover_Previews: PreviewProvider {
    static var previews: some View {
        ContentCover(title: "QuickSort")
    }
}
