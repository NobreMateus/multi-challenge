//
//  ContentCoverList.swift
//  multi-challenge
//
//  Created by Lidiane Gomes Barbosa on 14/05/21.
//

import SwiftUI

struct ContentCoverList: View {
    let listOfContents = DataModel.dataModels
    let gridItemLayout = [ GridItem(.adaptive(minimum: 160))]
    @Binding var isSharedContent: Bool
    @Binding var isEditMode: Bool
    
    var body: some View {
        GeometryReader { geo in
        ScrollView {
            LazyVGrid(columns: gridItemLayout,
                      alignment: .center,
                      spacing: 30,
                      content: {
                        ForEach(listOfContents, id: \.dataId) { data in
                            ContentCover(title: data.title,
                                         backGroundColor: data.color,
                                         profileImage: UIImage(named: "irma"),
                                         isEditMode: isEditMode, isSharedContent: isSharedContent)
                                .frame(minWidth: geo.size.width / 2)
                               
                        }
                      }) .padding(16)
        }
    }
    }
    
}

struct ContentCoverList_Previews: PreviewProvider {
   @State var shared = true
    
    static var previews: some View {
        ContentCoverList(isSharedContent: $shared, isEditMode: $shared)
    }
}
