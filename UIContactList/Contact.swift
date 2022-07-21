//
//  Contact.swift
//  UIContactList
//
//  Created by Павел on 21.07.2022.
//

import SwiftUI

struct Contact: View {
    
    let person: Person
    
    var body: some View {
        List {
            HStack { //Можно ли разместить изображение по середине строки без стек-конструкции?
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                .frame(width: 100, height: 100)
                Spacer()
            }
            Label(person.phone, systemImage: "phone")
            Label(person.email, systemImage: "tray")
        }
        .navigationTitle(person.fullName) //Чтобы уменьшить шрифт нужно отказаться от navigationTitle или есть другой способ?
    }
}

struct Contact_Previews: PreviewProvider {
    static var previews: some View {
        Contact(person: Person(name: "Eugenya", family: "Bruyko", phone: "+79000000000", email: "info@swiftbook.ru"))
    }
}
