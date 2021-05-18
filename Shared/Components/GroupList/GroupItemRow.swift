//
//  GroupItemRow.swift
//  multi-challenge
//
//  Created by Eduardo Oliveira on 17/05/21.
//

import SwiftUI

struct GroupItemRow: View {
    @State var name: String = ""
    
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                GroupImageUsersInfo()
                    .padding(15)
                    .scaleEffect(0.9)
                VStack(alignment: .leading) {
                    Text(name)
                        .font(.title2)
                        .fixedSize(horizontal: false, vertical: true)
                    .padding(.top, 15)
                    IconNumberInfo()
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
