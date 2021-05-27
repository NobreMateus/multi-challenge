//
//  Groups.swift
//  multi-challenge (macOS)
//
//  Created by Eduardo Oliveira on 19/05/21.
//

import SwiftUI

struct Groups: View {
    @State var groups: [GroupMock] = GroupMock.listOfGroups()
    @State private var selectedGroup: GroupMock?
    
    var body: some View {
        NavigationView {
            List(selection: $selectedGroup) {
                ForEach(groups, id: \.groupId) { group in
                    NavigationLink(
                        destination:
                            
                            Text(selectedGroup?.groupName ?? ""),
                        tag: group,
                        selection: $selectedGroup,
                        label: {
                            GroupItemRow(name: group.groupName, showMembers: true)
                                .padding()
                        }
                    )
                    .tag(group)
                }
            }
            .navigationTitle("Grupos")
            .frame(minWidth: 250)
        }
    }
}

struct GemList_Previews: PreviewProvider {
    static var previews: some View {
        Groups()
    }
}
