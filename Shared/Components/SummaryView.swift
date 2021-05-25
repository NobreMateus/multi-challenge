//
//  SummaryView.swift
//  multi-challenge
//
//  Created by Mateus Nobre on 21/05/21.
//
//swiftlint:disable force_try

import SwiftUI
import HighlightedTextEditor

let betweenUnderscores = try! NSRegularExpression(pattern: "_[^_]+_", options: [])
let betweenAsterisk = try! NSRegularExpression(pattern: "\\*[^*]+\\*", options: [])
let betweenDashes = try! NSRegularExpression(pattern: "-[^_]+-", options: [])

struct SummaryView: View {
    
    @Binding var editMode: Bool
    @Binding var text: String
    
    #if os(iOS)
    private let rules: [HighlightRule] = [
        HighlightRule(pattern: betweenAsterisk, formattingRules: [
            TextFormattingRule(fontTraits: .traitBold)
        ]),
        HighlightRule(pattern: betweenDashes, formattingRules: [
            TextFormattingRule(fontTraits: .traitItalic)
        ])
    ]
    #else
    private let rules: [HighlightRule] = [
        HighlightRule(pattern: betweenAsterisk, formattingRules: [
            TextFormattingRule(fontTraits: .bold)
        ]),
        HighlightRule(pattern: betweenDashes, formattingRules: [
            TextFormattingRule(fontTraits: .italic)
        ])
    ]
    #endif
    
    var body: some View {
        VStack {
            HighlightedTextEditor(
                text: $text,
                highlightRules: rules,
                editMode: editMode
            )
        }
    }
}
//
//struct SummaryView_Previews: PreviewProvider {
//    static var previews: some View {
//        SummaryView(editMode: true)
//    }
//}
