//
//  View.swift
//  multi-challenge
//
//  Created by Lidiane Gomes Barbosa on 13/05/21.
//

import SwiftUI

extension View {
    @ViewBuilder func showView(_ show: Bool) -> some View {
        if show {
            self
            
        } else {
            self.hidden()
        }
    }
    
}
