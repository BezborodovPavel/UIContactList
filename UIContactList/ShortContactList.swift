//
//  ShortContactList.swift
//  UIContactList
//
//  Created by Павел on 21.07.2022.
//

import SwiftUI

struct ShortContactList: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons, id: \.self) { person in
                NavigationLink(person.fullName, destination: Contact(person: person))
            }
            .navigationTitle("Contact list")
        }
    }
}

struct ShortContactList_Previews: PreviewProvider {
    static var previews: some View {
        ShortContactList(persons: Person.getPersons())
    }
}
