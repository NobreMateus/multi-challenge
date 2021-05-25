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
                    ImportPDF()
                }
                
                Divider().padding(.top)
                
                HStack {
                    CustomButton(isPresented: $isPresented, textBody: .constant(""), title: "Cancelar",
                                 titleColor: Color.primary, action: .cancelar, backgroundColor: Color(.controlColor))
                    Spacer()
                    CustomButton(isPresented: $isPresented, textBody: .constant(""), title: "Salvar",
                                 titleColor: .white, action: .salvar, backgroundColor: .dvLightPurple)
                }
                
            }
            
        }
 
}
