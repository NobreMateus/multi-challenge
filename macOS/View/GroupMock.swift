//
//  GroupMock.swift
//  multi-challenge (macOS)
//
//  Created by Lidiane Gomes Barbosa on 27/05/21.
//

import Foundation

struct GroupMock: Hashable {
    let groupId: Int
    let groupName: String
}

extension GroupMock {
    static func listOfGroups() -> [GroupMock] {
        return  [
            GroupMock(groupId: 0, groupName: "Matemática"),
            GroupMock(groupId: 1, groupName: "Português"),
            GroupMock(groupId: 2, groupName: "Banco de Dados"),
            GroupMock(groupId: 3, groupName: "Construção e Análise de Algorítmo")
        ]
    }
}
