//
//  CoreDataProject_v2App.swift
//  CoreDataProject_v2
//
//  Created by Orlando Moraes Martins on 22/12/22.
//

import SwiftUI

@main
struct CoreDataProject_v2App: App {
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
