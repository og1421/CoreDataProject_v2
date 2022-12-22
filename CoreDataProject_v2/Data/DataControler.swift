//
//  DataControler.swift
//  CoreDataProject_v2
//
//  Created by Orlando Moraes Martins on 22/12/22.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "CoreDataProject")
    
    init(){
        container.loadPersistentStores{
          description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
        
    }
}
