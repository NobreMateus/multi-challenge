//
//  ContentCoverList.swift
//  multi-challenge
//
//  Created by Lidiane Gomes Barbosa on 14/05/21.
//

import SwiftUI
import CoreData

struct ContentCoverList: View {


    let gridItemLayout = [ GridItem(.adaptive(minimum: 160))]
    @State var isSharedContent: Bool
    @State var isEditMode: Bool
    var listOfContents: FetchedResults<Content>

    var body: some View {
        GeometryReader { geo in
        ScrollView {
            LazyVGrid(columns: gridItemLayout,
                      alignment: .center,
                      spacing: 30,
                      content: {
                        ForEach(listOfContents, id: \.self) { data in

//                                NavigationLink(
//                                    destination: ViewSummary()
//                                    //                              tag: gem,
//                                    //                              selection: $selectedGem
//                                ) {
                            ContentCover(content: data,
                                                 profileImage: Image("irma"),
                                                 isEditMode: isEditMode, isSharedContent: isSharedContent)
                                        .frame(minWidth: geo.size.width / 2)
                                //}
                        }

                }) .padding(16)
            }
        }
    }
}

//struct ContentCoverList_Previews: PreviewProvider {
//
//    static var previews: some View {
//        //ContentCoverList(isSharedContent: true, isEditMode: true)
//    }
//}
