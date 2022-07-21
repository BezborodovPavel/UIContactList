//
//  DetailedContactList.swift
//  UIContactList
//
//  Created by Павел on 21.07.2022.
//

import SwiftUI

struct DetailedContactList: View {
    
    let persons: [Person]
    
    var body: some View {
 
        NavigationView {
            List(persons, id: \.self) { person in
                    Section(person.fullName) {
                        Label(person.phone, systemImage: "phone")
                        Label(person.email, systemImage: "tray")
                    }
                }
            .navigationTitle("Detailed contact list")
        }
    }
}

struct DetailedContactList_Previews: PreviewProvider {
    static var previews: some View {
        DetailedContactList(persons: Person.getPersons())
    }
}
