//
//  Person.swift
//  KokushevAV_HW2.7
//
//  Created by Александр Кокушев on 17.03.2020.
//  Copyright © 2020 Александр Кокушев. All rights reserved.
//

struct Person {
    let firstName: String
    let lastName: String
    let phoneNum: String
    let email: String
    let avatar: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getContactList() -> [Person] {
        var firstNames = ["John", "Jack", "Bill", "Kim", "Karl"]
        var lastNames = ["Wick", "Smith", "Jovanovich", "Bond", "Marks"]
        var emails = ["jonny@outook.com",
                      "sweety@icloud.com",
                      "bih@gmail.com",
                      "red@yahoo.com"]
        var phones = ["88005553535",
                      "79214569212",
                      "89241583913",
                      "79194834823",
                      "79204383234"]
        var avatars = ["sasha", "payne", "norman", "mace", "lenin", "john"]
        
        var persons = [Person]()
        
        
        
        while persons.count < 4 {
            let firstName = firstNames.remove(at: Int.random(in: 0...firstNames.count - 1))
            let lastName = lastNames.remove(at: Int.random(in: 0...lastNames.count - 1))
            let email = emails.remove(at: Int.random(in: 0...emails.count - 1))
            let phone = phones.remove(at: Int.random(in: 0...phones.count - 1))
            let avatar = avatars.remove(at: Int.random(in: 0...avatars.count - 1))
            
            persons.append(Person(firstName: firstName, lastName: lastName, phoneNum: phone, email: email, avatar: avatar))
            
        }
        
        return persons
    }
}
