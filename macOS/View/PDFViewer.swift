//
//  PDFViewer.swift
//  multi-challenge
//
//  Created by Mateus Nobre on 24/05/21.
//

import Foundation
import AppKit
import PDFKit
import SwiftUI

struct PDFViewer: NSViewRepresentable {
    
    var url: URL?
    var data: Data?
    
    init(_ url: URL?) {
        self.url = url
    }
    
    init(_ data: Data?) {
        self.data = data
    }
    
    func makeNSView(context: Context) -> some NSView {
        let pdfView = PDFView()
        if let url = url {
            pdfView.document =  PDFDocument(url: url)
        } else if let data = data {
            pdfView.document = PDFDocument(data: data)
        }
        
        pdfView.autoScales = true
        return pdfView
    }
    
    func updateNSView(_ nsView: NSViewType, context: Context) {
        
    }
}
