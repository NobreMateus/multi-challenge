//
//  ContentView.swift
//  Shared
//
//  Created by Elias Ferreira on 11/05/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    var body: some View {
       // Text("Hello, world!")
        ContentCoverList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
