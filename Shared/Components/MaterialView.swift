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
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                PDFViewer(url!)
                    .frame(width: geometry.size.width)
                    .navigationTitle(title)
            }
        }
    }
}

struct MaterialView_Previews: PreviewProvider {
    static var previews: some View {
        MaterialView()
    }
}
