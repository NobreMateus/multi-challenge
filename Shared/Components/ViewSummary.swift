//
//  ViewSummary.swift
//  multi-challenge
//
//  Created by Mateus Nobre on 24/05/21.
//

import SwiftUI

struct ViewSummary: View {
    @State private var title: String = "Titulo"
    @State private var textBody: String = "Aqui é um resumo bem bonito"
    @State private var editMode = false
    private var size: CGSize = CGSize(width: 100, height: 100)
    @State private var buttonText = "Editar"

    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                SummaryView(editMode: $editMode, text: $textBody)
                    .padding(4)
                    .frame(minHeight: size.height * 0.5, alignment: .center)
                    .font(.body)
                    .clipped()
                    .navigationTitle(title)
                    .frame(width: geometry.size.width)
            }
        }
    }
}

struct ViewSummary_Previews: PreviewProvider {
    static var previews: some View {
        ViewSummary()
    }
}
