//
//  IconNumberInfo.swift
//  multi-challenge (iOS)
//
//  Created by Eduardo Oliveira on 14/05/21.
//

import SwiftUI

struct IconNumberInfo: View {
    
    @State var numberOfPersons: Int = 0
    @State var numberOfMaterials: Int = 0
    
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "person.2.fill")
                    .foregroundColor(Color.dvGray)
                Text("\(numberOfPersons)")
                    .foregroundColor(Color.dvGray)
            }
            HStack {
                Image(systemName: "doc.text.fill")
                    .foregroundColor(Color.dvGray)
                Text("\(numberOfMaterials)")
                    .foregroundColor(Color.dvGray)
            }
            .padding(15)
        }
    }
}

struct IconNumberInfo_Previews: PreviewProvider {
    static var previews: some View {
        IconNumberInfo()
    }
}
