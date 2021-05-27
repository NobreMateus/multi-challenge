//
//  ContentCover.swift
//  multi-challenge (iOS)
//
//  Created by Lidiane Gomes Barbosa on 12/05/21.
//

import SwiftUI

struct ContentCover: View {
//    var title: String
//    var backGroundColor: Color
    @State var content: Content
    @State var profileImage: Image?
    @State var isEditMode: Bool
    @State var isSharedContent: Bool

    @GestureState var isDetectingLongPress = false
    //@State var completedLongPress = false

    @State var isShowingDetail: Bool = false

    var longPress: some Gesture {
        LongPressGesture(minimumDuration: 1)
            .updating($isDetectingLongPress) { currentState, gestureState, transaction in
                gestureState = currentState
                transaction.animation = Animation.easeIn(duration: 2.0)
            }
            .onEnded { finished in
                self.isEditMode = finished
            }
    }
    
    var body: some View {
        GeometryReader { geo in

            ZStack(content: {

                Rectangle()
                    .fill(Color(content.color ?? "DV_Blue"))
                    .cornerRadius(geo.size.height * 0.1)
                    .shadow(color: .gray, radius: 5, x: 2, y: 2)
                    .gesture(longPress)
                    .simultaneousGesture(TapGesture(count: 1).onEnded({ isShowingDetail = true }))
                    .overlay(
                        NavigationLink(destination: ViewSummary(content: content), isActive: $isShowingDetail) { EmptyView() }
                    )

                AuxiliarView(size: geo.size)
                    .fill(Color.white).cornerRadius(geo.size.height * 0.1).opacity(0.1)

                Text(content.title ?? "")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding()
                    .gesture(longPress)
                    .simultaneousGesture(TapGesture(count: 1).onEnded({ isShowingDetail = true }))
                    .overlay(
                        NavigationLink(destination: ViewSummary(content: content), isActive: $isShowingDetail) { EmptyView() }
                    )

                CircleImageProfile(image: $profileImage,
                                   show: $isSharedContent,
                                   size: CGSize(width: geo.size.width * 0.3, height: geo.size.width * 0.3))
                    .position(x: geo.size.width * 0.25, y: geo.size.height * 0.01)

                CircleButton(imageName: "pencil.circle",
                            backGroundColor: Color.blue,
                            size: CGSize(width: geo.size.width * 0.2, height: geo.size.width * 0.2),
                            buttonType: .edit,
                            show: $isEditMode,
                            content: content,
                            isShowing: false)
                    .position(x: geo.size.width * 0.05, y: geo.size.height - geo.size.width * 0.05)

                CircleButton(imageName: "xmark.circle",
                            backGroundColor: Color.red,
                            size: CGSize(width: geo.size.width * 0.2, height: geo.size.width * 0.2),
                            buttonType: .delete,
                            show: $isEditMode,
                            content: content,
                            isShowing: false)
                    .position(x: geo.size.width - geo.size.width * 0.05, y: geo.size.width * 0.05)

            })

        }
        .frame(minWidth: 0, idealWidth: 162, maxWidth: .infinity,
               minHeight: 0, idealHeight: 150, maxHeight: .infinity,
               alignment: .center)
        .aspectRatio(contentMode: .fit)
        .padding(.init(top: 0, leading: 16, bottom: 0, trailing: 16))
    }
    
}
