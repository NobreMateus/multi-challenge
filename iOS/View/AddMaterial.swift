//
//  AddMaterial.swift
//  multi-challenge (iOS)
//
//  Created by Lidiane Gomes Barbosa on 20/05/21.
//

import SwiftUI

struct AddMaterial: View {
    @State private var selection = 0
    @State private var title = ""
    @State private var textBody = ""
    
    init() {
        UITextView.appearance().backgroundColor = .clear
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(Color.dvLightPurple)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
    }
    
    var body: some View {
        NavigationView {
            GeometryReader { geo in
                ScrollView {
                    VStack {
                        VStack {
                            
                            Picker(selection: $selection, label: Text("")) {
                                Text("Escrever resumo").bold().tag(0)
                                    
                                Text("Importar PDF").tag(1)
                            }
                            .frame(height: 60, alignment: .center)
                            .pickerStyle(SegmentedPickerStyle())
                            .scaleEffect(CGSize(width: 1, height: 1.3))
                            .listItemTint(Color.dvLightPurple)

                        }.padding()
                        
                        if selection == 0 {
                            CreateSummary(title: $title, textBody: $textBody, size: geo.size)
                            
                        } else if selection == 1 {
                            ImportPDF()
                        }
                        
                    }
                }
                
            }
            
            .navigationBarTitle("Adicionar Material", displayMode: .inline)
            .navigationBarItems(trailing: Button("Concluir", action: {
                print(title)
                print(textBody)
            }))
        }
        .ignoresSafeArea(.keyboard, edges: .bottom)
    }
}

struct AddMaterial_Previews: PreviewProvider {
    static var previews: some View {
        AddMaterial()
    }
}
