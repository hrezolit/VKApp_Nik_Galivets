//
//  Session.swift
//  VKApp_Nik_Galivets
//
//  Created by Nikita on 11/10/22.
//

final class Session {
    
    private init() {}
    static let shared = Session()
    
    var token = ""
    var userId = Int()
}
