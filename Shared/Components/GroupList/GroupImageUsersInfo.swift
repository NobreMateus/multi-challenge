//
//  grpImageUsersInfo.swift
//  multi-challenge (iOS)
//
//  Created by Eduardo Oliveira on 14/05/21.
//

import SwiftUI

struct GroupImageUsersInfo: View {
    
    @State var selectedColor: Color = .dvNavyBlue

    @State private var image = Image("")

    @State var showMembers: Bool = true

    let grp = DataModelGroupCell.dataModels
    
    var body: some View {
        ZStack {
            image
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .background(ZStack {
                    Circle()
                        .foregroundColor(selectedColor)
                    Rectangle()
                        .foregroundColor(.white)
                        .opacity(0.1)
                        .offset(x: 0, y: 50)
                        .rotationEffect(.degrees(-45))
                        .mask(Circle())
                    Image(systemName: "person.2.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 36))
                })
                .mask(Circle())
            if showMembers {
                switch grp.count {
                case 0:
                    ZStack {
                        CircleUserProfile(image: grp[0].image, name: "\(grp[0].title.charAt(index: 0))", color: grp[0].color)
                            .offset(x: 0.0, y: 40.0)
                    }
                case 1:
                    ZStack {
                        CircleUserProfile(image: grp[0].image, name: "\(grp[0].title.charAt(index: 0))", color: grp[0].color)
                            .offset(x: -15.0, y: 38.0)
                        CircleUserProfile(image: grp[1].image, name: "\(grp[1].title.charAt(index: 0))", color: grp[1].color)
                            .offset(x: 15.0, y: 38.0)
                    }
                case 2:
                    ZStack {
                        CircleUserProfile(image: grp[0].image, name: "\(grp[0].title.charAt(index: 0))", color: grp[0].color)
                            .offset(x: -32.0, y: 35.0)
                        CircleUserProfile(image: grp[1].image, name: "\(grp[1].title.charAt(index: 0))", color: grp[1].color)
                            .offset(x: 0.0, y: 38.0)
                        CircleUserProfile(image: grp[2].image, name: "\(grp[2].title.charAt(index: 0))", color: grp[2].color)
                            .offset(x: 32.0, y: 35.0)
                    }
                case 3:
                    ZStack {
                        CircleUserProfile(image: grp[0].image, name: "\(grp[0].title.charAt(index: 0))", color: grp[0].color)
                            .offset(x: -43.0, y: 28.0)
                        CircleUserProfile(image: grp[1].image, name: "\(grp[1].title.charAt(index: 0))", color: grp[1].color)
                            .offset(x: -15.0, y: 38.0)
                        CircleUserProfile(image: grp[2].image, name: "\(grp[2].title.charAt(index: 0))", color: grp[2].color)
                            .offset(x: 15.0, y: 38.0)
                        CircleUserProfile(image: grp[3].image, name: "\(grp[3].title.charAt(index: 0))", color: grp[3].color)
                            .offset(x: 43.0, y: 28.0)
                    }
                default:
                    ZStack {
                        CircleUserProfile(image: grp[0].image, name: "\(grp[0].title.charAt(index: 0))", color: grp[0].color)
                            .offset(x: -43.0, y: 28.0)
                        CircleUserProfile(image: grp[1].image, name: "\(grp[1].title.charAt(index: 0))", color: grp[1].color)
                            .offset(x: -15.0, y: 38.0)
                        CircleUserProfile(image: grp[2].image, name: "\(grp[2].title.charAt(index: 0))", color: grp[2].color)
                            .offset(x: 15.0, y: 38.0)
                        CircleUserProfile(image: nil, name: "...", color: Color.dvLightPurple)
                            .offset(x: 43.0, y: 28.0)
                    }
                }
            }
        }
    }
}

struct GroupImageUsersInfo_Previews: PreviewProvider {
    static var previews: some View {
        GroupImageUsersInfo()
    }
}
