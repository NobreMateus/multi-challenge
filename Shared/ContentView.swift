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
    @State var isPresented: Bool = false
    var body: some View {
        VStack {
            Button(action: {
               isPresented = true
            }, label: {
                Text("touch me")
            }).sheet(isPresented: $isPresented, content: {
                CreateGroup(isPresented: $isPresented)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
