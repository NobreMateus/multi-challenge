//
//  GroupItemCell.swift
//  multi-challenge
//
//  Created by Eduardo Oliveira on 17/05/21.
//

import SwiftUI

struct GroupItemCell: View {
    @State var name: String = ""
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                GroupImageUsersInfo()
                    .padding(15)
                VStack(alignment: .leading) {
                    HStack {
                        Text(name)
                            .font(.title2)
                            .fixedSize(horizontal: false, vertical: true)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .padding(.trailing, 15)
                    }
                    .padding(.top, 15)
                    IconNumberInfo()
                }
            }
        }
    }
}

struct GroupItemCell_Previews: PreviewProvider {
    static var previews: some View {
        GroupItemCell()
    }
}
