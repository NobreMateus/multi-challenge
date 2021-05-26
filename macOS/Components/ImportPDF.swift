//
//  ImportPDF.swift
//  multi-challenge (macOS)
//
//  Created by Lidiane Gomes Barbosa on 25/05/21.
//

import SwiftUI
import SwiftUILib_DocumentPicker

struct ImportPDF: View {
    @State private var fileContent = ""
    @State private var showDocumentPicker = false
   
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    showDocumentPicker = true
                }, label: {
                    Label("Escolher PDF", image: "uploadButton")
                        .padding(.init(top: 10, leading: 30, bottom: 10, trailing: 30))
                })
                .shadow(radius: 5)
                .buttonStyle(CustomButtonStyle(foregroundColor: .white, backgroundColor: .dvLightPurple))
            
                .documentPicker(
                    isPresented: $showDocumentPicker,
                    documentTypes: [kUTTypePDF as String], onDocumentsPicked: { urls in
                        fileContent = urls.first?.absoluteString ?? ""
                        // save file
                    })
               
                if fileContent.isEmpty {
                    Text("Sem arquivo ainda...")
                        .opacity(0.3)
                        .frame(width: 200, alignment: .center)
                        .padding()

                } else {
                    Text(fileContent)
                        .frame(width: 200, alignment: .center)
                        .padding()
                }
            }
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 1)
                    .opacity(0.3),
                alignment: .center
            )
        }
    }
    
}
