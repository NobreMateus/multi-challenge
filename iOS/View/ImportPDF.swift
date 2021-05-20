//
//  ImportPDF.swift
//  multi-challenge (iOS)
//
//  Created by Lidiane Gomes Barbosa on 20/05/21.
//

import SwiftUI

struct ImportPDF: View {
    @State private var fileContent = ""
    @State private var showDocumentPicker = false
    var body: some View {
        GeometryReader { geo in
            HStack {
                
                Button(action: {
                    showDocumentPicker = true
                }, label: {
                    Label("Escolher PDF", systemImage: "arrow.up.square")
                        .foregroundColor(.white)
                })
                .padding(12)
                .frame(width: geo.size.width * 0.5, alignment: .center)
                .background(
                    
                    RoundedCorners(color: .dvLightPurple, topLeft: 0, topRight: 10, bottomLeft: 0, bottomRight: 10)
                )
                
                .sheet(isPresented: $showDocumentPicker) {
                    DocumentPicker(fileContent: $fileContent)
                }
                
                if fileContent.isEmpty {
                    Text("Sem arquivo ainda...")
                        .padding(12)
                        .opacity(0.3)
                        .frame(width: geo.size.width * 0.5, alignment: .center)
                        
                } else {
                    Text(fileContent)
                        .padding(12)
                        .frame(width: geo.size.width * 0.5, alignment: .center)
                }
            }.overlay(
                Rectangle()
                    .stroke(Color.gray, lineWidth: 1)
                    .opacity(0.3),
                alignment: .center
            )
        }
    }
}

struct ImportPDF_Previews: PreviewProvider {
    static var previews: some View {
        ImportPDF()
    }
}
