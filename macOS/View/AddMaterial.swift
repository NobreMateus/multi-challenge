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
        GeometryReader { geo in
            ScrollView {
                VStack {
                    VStack {
                        
                        Picker(selection: $selection, label: Text("")) {
                            Text("Escrever resumo").bold().tag(0)
                            
                            Text("Importar PDF").tag(1)
                        }
                        
                        .pickerStyle(SegmentedPickerStyle())
                        
                    }.padding()
                    
                    if selection == 0 {
                        CreateSummary(title: $title, textBody: $textBody, size: geo.size)
                        
                    } else if selection == 1 {
                        ImportPDF()
                    }
                    
                }
            }
            
        }
    }
}
