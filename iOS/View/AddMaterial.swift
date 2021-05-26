//
//  AddMaterial.swift
//  multi-challenge (iOS)
//
//  Created by Lidiane Gomes Barbosa on 20/05/21.
//

import SwiftUI

struct AddMaterial: View {
    let colors = [
        "DV_Blue",
        "DV_NavyBlue",
        "DV_Purple",
        "DV_LightPurple",
        "DV_Magenta",
        "DV_Red",
        "DV_Orange",
        "DV_Yellow"
    ]

    @State private var selection = 0
    @State private var title = ""
    @State private var textBody = ""
    
    init() {
        UITextView.appearance().backgroundColor = .clear
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(Color.dvLightPurple)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
    }
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var btnBack : some View { Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
                Label("Voltar", systemImage: "chevron.left")
                .aspectRatio(contentMode: .fit)
            }
        }
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
            .navigationBarItems(leading: btnBack,
                                trailing: Button("Concluir", action: {
                let color = colors.randomElement() ?? "DV_Blue"
                _ = ContentRepository.shared.create(title: title, body: textBody, contentType: "text", color: color)
                self.presentationMode.wrappedValue.dismiss()
            }))
        }
        .ignoresSafeArea(.keyboard, edges: .bottom)
        .navigationBarHidden(true)
    }
}

struct AddMaterial_Previews: PreviewProvider {
    static var previews: some View {
        AddMaterial()
    }
}
