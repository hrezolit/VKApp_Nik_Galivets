//
//  User.swift
//  VKApp_Nik_Galivets
//
//  Created by Nikita on 11/10/22.
//

import RealmSwift
import SwiftyJSON
import Foundation

final class User: Object {
    
    @objc dynamic var id: Int = 0
    @objc dynamic var firstName: String = ""
    @objc dynamic var lastName: String = ""
    @objc dynamic var photo100: String = ""
    
    init(_ json: JSON) {
        self.id = json["id"].intValue
        self.firstName = json["first_name"].stringValue
        self.lastName = json["last_name"].stringValue
        self.photo100 = json["photo_100"].stringValue
    }
    
    override class func primaryKey() -> String? {
        return "id"
    }
    
    override init() {}
}
