//
//  AddMaterial.swift
//  multi-challenge (macOS)
//
//  Created by Lidiane Gomes Barbosa on 25/05/21.
//

import SwiftUI
import AppKit
struct AddMaterial: View {
    @State private var selection = 0
    @State private var title = ""
    @State private var textBody = ""
    @State private var urlFile = ""
    @Binding var isPresented: Bool
    
    var body: some View {
            VStack {
                VStack {
                    Picker(selection: $selection, label: Text("")) {
                        Text("Escrever resumo").bold().tag(0)
                        
                        Text("Importar PDF").tag(1)
                    }.padding()
                    
                    .pickerStyle(SegmentedPickerStyle())
                    
                }.padding()
                
                if selection == 0 {
                    CreateSummary(title: $title, textBody: $textBody, size: CGSize(width: 500, height: 500))
                    
                } else if selection == 1 {
                    ImportPDF(urlFile: $urlFile)
                }
                
                Divider().padding(.top)
                
                HStack {
                    Button(action: {
                        isPresented = false
                    }, label: {
                        Text("Cancelar")
                            .padding(.init(.init(top: 5, leading: 30, bottom: 5, trailing: 30)))
                    })
                    .shadow(radius: 5)
                    .buttonStyle(CustomButtonStyle(foregroundColor: .primary, backgroundColor: Color(.controlColor)))
                   
                    Spacer()
                    
                    Button(action: {
                        if selection == 0 {
                            // save resume
                            print(title)
                            print(textBody)
                        } else {
                            // save url file
                            print(urlFile)
                        }
                        isPresented = false
                    }, label: {
                        Text("Salvar")
                            .padding(.init(.init(top: 5, leading: 30, bottom: 5, trailing: 30)))
                    })
                    .shadow(radius: 5)
                    .buttonStyle(CustomButtonStyle(foregroundColor: .white, backgroundColor: .dvLightPurple))
                }
                
            }
            
        }
 
}
