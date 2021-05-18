//
//  ContentCover.swift
//  multi-challenge (iOS)
//
//  Created by Lidiane Gomes Barbosa on 12/05/21.
//

import SwiftUI

struct ContentCover: View {
    var title: String
    var backGroundColor: Color
    @State var profileImage: Image?
    @State var isEditMode: Bool
    @State var isSharedContent: Bool
    
    var body: some View {
        GeometryReader { geo in
        ZStack(content: {
           
            Rectangle()
                .fill(backGroundColor)
                .cornerRadius(geo.size.height * 0.1)
                .shadow(color: .gray, radius: 5, x: 2, y: 2)
            
            AuxiliarView(size: geo.size)
                .fill(Color.white).cornerRadius(geo.size.height * 0.1).opacity(0.1)
            
            Text(title)
                .foregroundColor(.white)
                .font(.title)
                .padding()
            
            CircleImageProfile(image: $profileImage,
                               show: $isSharedContent,
                               size: CGSize(width: geo.size.width * 0.3, height: geo.size.width * 0.3))
                .position(x: geo.size.width * 0.25, y: geo.size.height * 0.01)
               
            CircleButton(imageName: "pencil.circle",
                        backGroundColor: Color.blue,
                        size: CGSize(width: geo.size.width * 0.2, height: geo.size.width * 0.2),
                        show: $isEditMode)
                .position(x: geo.size.width * 0.05, y: geo.size.height - geo.size.width * 0.05)
            
            CircleButton(imageName: "xmark.circle",
                        backGroundColor: Color.red,
                        size: CGSize(width: geo.size.width * 0.2, height: geo.size.width * 0.2),
                        show: $isEditMode)
                .position(x: geo.size.width - geo.size.width * 0.05, y: geo.size.width * 0.05)
        
        })}
        .frame(minWidth: 0, idealWidth: 162, maxWidth: .infinity,
               minHeight: 0, idealHeight: 150, maxHeight: .infinity,
               alignment: .center)
        .aspectRatio(contentMode: .fit)
            .padding(.init(top: 0, leading: 16, bottom: 0, trailing: 16))
            
    }
    
}

struct ContentCover_Previews: PreviewProvider {
    static var previews: some View {
        ContentCover(title: "Example",
                     backGroundColor: .dvYellow,
                     profileImage: nil,
                     isEditMode: true,
                     isSharedContent: true)
    }
}
