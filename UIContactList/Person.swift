//
//  Person.swift
//  Person list
//
//  Created by Павел on 28.04.2022.
//

import Foundation

struct Person: Hashable {
    
    let name: String
    let family: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(family) \(name)"
    }
    
    
    static func getPersons() -> [Person] {
        
        let dataManager = DataManager.shared
        var persons: [Person] = []
        
        while true {
            
            guard let name = dataManager.getUniqueName() else {return persons}
            guard let family = dataManager.getUniqueFamily() else {return persons}
            guard let phone = dataManager.getUniquePhone() else {return persons}
            guard let email = dataManager.getUniqueEmail() else {return persons}
            
            persons.append(Person(name: name, family: family, phone: phone, email: email))
        }

        return persons
    }
}
