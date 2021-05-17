//
//  GroupImageUsersInfo.swift
//  multi-challenge (iOS)
//
//  Created by Eduardo Oliveira on 14/05/21.
//

import SwiftUI

struct GroupImageUsersInfo: View {
    
    @State var selectedColor: Color = .dvNavyBlue
    @State private var image = UIImage()
    @State var owner: String = "Fulano"
    @State var profileImage: UIImage?
    @State var isSharedContent: Bool = false
    @State var participants: [String] = ["Bennett", "Eula", "Mona", "Lumine"]
    
    var sizeCircle: CGSize = CGSize(width: 25, height: 25)
    
    var body: some View {
        ZStack {
            Image(uiImage: self.image)
                .resizable()
                .scaledToFill()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
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
            switch participants.count {
            case 0:
                ZStack {
                    CircleUserProfile(image: $profileImage, name: "\(owner.charAt(at: 0))", size: sizeCircle)
                        .offset(x: 0.0, y: 40.0)
                }
            case 1:
                ZStack {
                    CircleUserProfile(image: $profileImage, name: "\(owner.charAt(at: 0))", size: sizeCircle)
                        .offset(x: -15.0, y: 38.0)
                    CircleUserProfile(image: $profileImage, name: "\(participants[0].charAt(at: 0))", size: sizeCircle)
                        .offset(x: 15.0, y: 38.0)
                }
            case 2:
                ZStack {
                    CircleUserProfile(image: $profileImage, name: "\(owner.charAt(at: 0))", size: sizeCircle)
                        .offset(x: -32.0, y: 35.0)
                    CircleUserProfile(image: $profileImage, name: "\(participants[0].charAt(at: 0))", size: sizeCircle)
                        .offset(x: 0.0, y: 38.0)
                    CircleUserProfile(image: $profileImage, name: "\(participants[1].charAt(at: 0))", size: sizeCircle)
                        .offset(x: 32.0, y: 35.0)
                }
            case 3:
                ZStack {
                    CircleUserProfile(image: $profileImage, name: "\(owner.charAt(at: 0))", size: sizeCircle)
                        .offset(x: -43.0, y: 28.0)
                    CircleUserProfile(image: $profileImage, name: "\(participants[0].charAt(at: 0))", size: sizeCircle)
                        .offset(x: -15.0, y: 38.0)
                    CircleUserProfile(image: $profileImage, name: "\(participants[1].charAt(at: 0))", size: sizeCircle)
                        .offset(x: 15.0, y: 38.0)
                    CircleUserProfile(image: $profileImage, name: "\(participants[2].charAt(at: 0))", size: sizeCircle)
                        .offset(x: 43.0, y: 28.0)
                }
            default:
                ZStack {
                    CircleUserProfile(image: $profileImage, name: "\(owner.charAt(at: 0))", size: sizeCircle)
                        .offset(x: -43.0, y: 28.0)
                    CircleUserProfile(image: $profileImage, name: "\(participants[0].charAt(at: 0))", size: sizeCircle)
                        .offset(x: -15.0, y: 38.0)
                    CircleUserProfile(image: $profileImage, name: "\(participants[1].charAt(at: 0))", size: sizeCircle)
                        .offset(x: 15.0, y: 38.0)
                    CircleUserProfile(image: $profileImage, name: "+\(participants.count - 2)", size: sizeCircle)
                        .offset(x: 43.0, y: 28.0)
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
