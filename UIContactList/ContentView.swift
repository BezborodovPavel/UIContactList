//
//  ContentView.swift
//  UIContactList
//
//  Created by Павел on 21.07.2022.
//

import SwiftUI

struct ContentView: View {
    
    let persons = Person.getPersons()
    
    var body: some View {
        TabView {
            ShortContactList(persons: persons)
                .tabItem {
                    Label("Contacts", systemImage: "person.2.fill")
                }
            DetailedContactList(persons: persons)
                .tabItem {
                    Label("Detailed", systemImage: "person.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
