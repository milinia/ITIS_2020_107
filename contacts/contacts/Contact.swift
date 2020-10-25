//
//  Contact.swift
//  contacts
//
//  Created by Evelina on 24.10.2020.
//  Copyright © 2020 Evelina. All rights reserved.
//

import UIKit

class Contact{
    
    public let name:String?
    public let surname:String?
    public let telephoneNumber:String?
    
    init(name:String?,surname:String?,telephoneNumber:String?) {
        self.name = name
        self.surname = surname
        self.telephoneNumber = telephoneNumber
    }
}
