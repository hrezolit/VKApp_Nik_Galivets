//
//  RealmManager.swift
//  VKApp_Nik_Galivets
//
//  Created by Nikita on 11/10/22.
//

import Foundation
import RealmSwift

final class RealmManager {
    
    static var shared = RealmManager()
    
    private let realm: Realm
    
    private init?() {
        let configurator = Realm.Configuration(schemaVersion: 1, deleteRealmIfMigrationNeeded: true)
        
        guard let realm = try? Realm(configuration: configurator) else { return nil }
        self.realm = realm
        
        print(realm.configuration.fileURL ?? "")
    }
    
    func add<T: Object>(object: T) throws {
        try realm.write{
            realm.add(object)
        }
    }
    
    func add<T: Object>(objects: [T]) throws {
        try realm.write{
            realm.add(objects, update: .all)
        }
    }
    
    func getObjects<T: Object>() -> Results<T> {
        return realm.objects(T.self)
    }
    
    func delete<T: Object>(object: T) throws {
        try realm.write{
            realm.delete(object)
        }
    }
    
    func deleteAll() throws {
        try realm.write{
            realm.deleteAll()
        }
    }
}
