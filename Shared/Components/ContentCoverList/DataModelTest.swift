//
//  DataModelTest.swift
//  multi-challenge
//
//  Created by Lidiane Gomes Barbosa on 14/05/21.
//

import SwiftUI

struct DataModel {
    var dataId: Int
    let title: String
    let color: Color
    
}

extension DataModel {
    static let dataModels: [DataModel] = [
        DataModel(dataId: 0, title: "Estrutura de dados", color: .dvRed),
        DataModel(dataId: 1, title: "Redes II", color: .dvBlue),
        DataModel(dataId: 2, title: "Cana", color: .dvYellow),
        DataModel(dataId: 3, title: "Matemática", color: .dvPurple),
        DataModel(dataId: 4, title: "Computação Gráfica", color: .dvOrange),
        DataModel(dataId: 5, title: "Banco de Dados II", color: .dvYellow),
        DataModel(dataId: 6, title: "Arquitetura", color: .dvLightPurple),
        DataModel(dataId: 7, title: "TCC", color: .dvMagenta),
        DataModel(dataId: 8, title: "Física", color: .dvNavyBlue)
    ]
}
