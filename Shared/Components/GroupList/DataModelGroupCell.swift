//
//  DataModelGroupCell.swift
//  multi-challenge
//
//  Created by Eduardo Oliveira on 17/05/21.
//

import SwiftUI

struct DataModelGroupCell {
    var dataId: Int
    let title: String
    let color: Color
    let image: Image?
    
}

extension DataModelGroupCell {
    static let dataModels: [DataModelGroupCell] = [
        DataModelGroupCell(dataId: 0, title: "Lumine", color: .dvRed, image: nil),
        DataModelGroupCell(dataId: 1, title: "Aether", color: .dvBlue, image: nil),
        DataModelGroupCell(dataId: 2, title: "Mona", color: .dvYellow, image: nil),
        DataModelGroupCell(dataId: 3, title: "Bennett", color: .dvPurple, image: nil),
        DataModelGroupCell(dataId: 4, title: "Jean", color: .dvOrange, image: nil),
        DataModelGroupCell(dataId: 5, title: "Lisa", color: .dvYellow, image: nil),
        DataModelGroupCell(dataId: 6, title: "Amber", color: .dvLightPurple, image: nil),
        DataModelGroupCell(dataId: 7, title: "Kaeya", color: .dvMagenta, image: nil),
        DataModelGroupCell(dataId: 8, title: "Eula", color: .dvNavyBlue, image: nil)
    ]
}
