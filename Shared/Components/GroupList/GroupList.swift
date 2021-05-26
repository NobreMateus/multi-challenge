//
//  GroupList.swift
//  multi-challenge
//
//  Created by Eduardo Oliveira on 18/05/21.
//

import SwiftUI

struct GroupList: View {
    
    @State var searchText: String = ""
    @State var sendTo: Bool = false
    @State var groups: [String] = [
        "Construção e Análise de Algoritmos",
        "Estrutura de Dados"
    ]
    
    @State private var selectedGroup: Group?
    
    var body: some View {
        ZStack {
            VStack {
                SearchBar(text: $searchText)
                    .padding(EdgeInsets(top: 0, leading: 33, bottom: 3, trailing: 33))
                    if sendTo {
                        List {
                            GroupItemRow(name: "Meu Fichário", showMembers: false)
                            ForEach(groups.filter({ searchText.isEmpty ? true : $0.contains(searchText) }), id: \.self) { group in
                                GroupItemRow(name: group, showMembers: true)
                            }
                        }
                    } else {
                        List {
                            ForEach(groups.filter({ searchText.isEmpty ? true : $0.contains(searchText) }), id: \.self) { group in
                                NavigationLink(
                                  destination: GroupView()
    //                              tag: group,
    //                              selection: selection
                                ) {
                                    GroupItemRow(name: group, showMembers: true)
                                }
                            }
                        }
                    }
            }
        }
    }
}

struct GroupList_Previews: PreviewProvider {
    static var previews: some View {
        GroupList()
    }
}
