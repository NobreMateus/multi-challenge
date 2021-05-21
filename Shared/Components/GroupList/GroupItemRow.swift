//
//  GroupItemRow.swift
//  multi-challenge
//
//  Created by Eduardo Oliveira on 17/05/21.
//

import SwiftUI

struct GroupItemRow: View {
    
    @State var name: String = ""
    @State var showMembers: Bool = true
    
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                GroupImageUsersInfo(showMembers: showMembers)
                    .padding(.leading, -10)
                    .scaleEffect(0.9)
                VStack(alignment: .leading) {
                    Text(name)
                        .font(.title2)
                        .fixedSize(horizontal: false, vertical: true)
                    .padding(.top, 15)
                    if showMembers {
                        IconNumberInfo()
                    } else {
                        Spacer()
                    }
                }
                Spacer()
            }
        }.frame(height: 104)
    }
}

struct GroupItemRow_Previews: PreviewProvider {
    static var previews: some View {
        GroupItemRow()
    }
}
