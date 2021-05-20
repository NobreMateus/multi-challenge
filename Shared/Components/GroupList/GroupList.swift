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
    
    var body: some View {
        ZStack {
            VStack {
                SearchBar(text: $searchText)
                    .padding(15)
                List {
                    if sendTo {
                        GroupItemRow(name: "Meu Fichário", showMembers: false)
                    }
                    ForEach(groups.filter({ searchText.isEmpty ? true : $0.contains(searchText) }), id: \.self) { group in
                        GroupItemRow(name: group, showMembers: true)
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
