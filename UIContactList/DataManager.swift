//
//  DataManager.swift
//  Person list
//
//  Created by Павел on 28.04.2022.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
     
    var names = [
        "Сергей",
        "Алексей",
        "Дмитрий",
        "Владимир",
        "Константин",
        "Денис",
        "Максим",
        "Кирилл",
        "Матвей",
        "Никита"
    ]
    
    var familys = [
        "Воронов",
        "Кузнецов",
        "Малахов",
        "Миронов",
        "Калмыков",
        "Марков",
        "Коновалов",
        "Ильин",
        "Денисов",
        "Калинин"
    ]
    
    var phones = [
        "375256612939",
        "375292308770",
        "380504180695",
        "380504180697",
        "380504877377",
        "380632829292",
        "380672176010",
        "380672176020",
        "380672176030",
        "380673557777",
    ]
    
    var emails = [
        "o@outlook.com",
        "hr6zdl@yandex.ru",
        "kaft93x@outlook.com",
        "dcu@yandex.ru",
        "19dn@outlook.com",
        "pa5h@mail.ru",
        "281av0@gmail.com",
        "8edmfh@outlook.com",
        "sfn13i@mail.ru",
        "g0orc3x1@outlook.com",
   ]
    
    private init() {}
}

extension DataManager {
    
    func getUniqueName() -> String? {
        
        if names.count == 0 {
            return nil
        }
        
        let randomIndex = Int.random(in: 0..<names.count)
        let randomNames = names.remove(at: randomIndex)        

        return randomNames
    }
 
    func getUniqueFamily() -> String? {
        
        if familys.count == 0 {
            return nil
        }
        
        let randomIndex = Int.random(in: 0..<familys.count)
        let randomFamily = familys.remove(at: randomIndex)

        return randomFamily
    }

    func getUniquePhone() -> String? {
        
        if phones.count == 0 {
            return nil
        }
        
        let randomIndex = Int.random(in: 0..<phones.count)
        let randomPhone = phones.remove(at: randomIndex)

        return randomPhone
    }

    func getUniqueEmail() -> String? {
        
        if emails.count == 0 {
            return nil
        }
        
        let randomIndex = Int.random(in: 0..<emails.count)
        let randomEmail = emails.remove(at: randomIndex)
        
        return randomEmail
    }

}
