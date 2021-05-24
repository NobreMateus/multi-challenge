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
    
    let url: URL
    
    init(_ url: URL) {
        self.url = url
    }
    
    func makeNSView(context: Context) -> some NSView {
        let pdfView = PDFView()
        pdfView.document =  PDFDocument(url: self.url)
        pdfView.autoScales = true
        return pdfView
    }
    
    func updateNSView(_ nsView: NSViewType, context: Context) {
        
    }
}
