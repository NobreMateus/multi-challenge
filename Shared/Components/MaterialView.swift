//
//  MaterialView.swift
//  multi-challenge
//
//  Created by Mateus Nobre on 24/05/21.
//

import SwiftUI
import PDFKit

private var title = "PDF Teste"

struct MaterialView: View {
        
    let url = Bundle.main.url(forResource: title, withExtension: "pdf")
//    let fileData: Data
    
    #if os(iOS)
    let autoScale = true
    #else
    let autoScale = false
    #endif
    
    var body: some View {
        GeometryReader { geometry in
            NavigationView {
//                    PDFViewer(url!, autoScale: autoScale)
//                        .frame(width: geometry.size.width, height: geometry.size.height)
//                        .navigationTitle(title)
            }
        }
    }
}

struct MaterialView_Previews: PreviewProvider {
    static var previews: some View {
        MaterialView()
    }
}
