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
    let autoScale: Bool

    init(_ url: URL?, autoScale: Bool = false) {
        self.url = url
        self.autoScale = autoScale
    }
    
    init(_ data: Data?, autoScale: Bool = false) {
        self.data = data
        self.autoScale = autoScale
    }
    
    func makeNSView(context: Context) -> some NSView {
        let pdfView = PDFView()

        if let url = url {
            pdfView.document =  PDFDocument(url: self.url)
        } else if let data = data {
            pdfView.document = PDFDocument(data: self.data)
        }

        pdfView.autoScales = self.autoScale
        return pdfView
    }
    
    func updateNSView(_ nsView: NSViewType, context: Context) {
        
    }
}
