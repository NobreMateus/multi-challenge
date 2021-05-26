//
//  PDFViewer.swift
//  multi-challenge
//
//  Created by Mateus Nobre on 24/05/21.
//

import SwiftUI
import UIKit
import PDFKit

struct PDFViewer: UIViewRepresentable {
    
    var url: URL?
    var data: Data?
    
    init(_ url: URL?) {
        self.url = url
    }
    
    init(_ data: Data?) {
        self.data = data
    }
    
    func makeUIView(context: Context) -> some UIView {
        let pdfView = PDFView()
        if let url = url {
            pdfView.document =  PDFDocument(url: url)
        } else if let data = data {
            pdfView.document = PDFDocument(data: data)
        }
        
        pdfView.autoScales = true
        return pdfView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
