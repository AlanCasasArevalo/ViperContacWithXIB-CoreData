//
//  CoreDataStack.swift
//  ViperContact
//
//  Created by Alan Casas Arevalo on 14/5/18.
//  Copyright © 2018 Alan Casas Arevalo. All rights reserved.
//

import CoreData

public class CoreDataStack {
    
    var createContainerError:NSError?
    var saveContextError: NSError?
    
    func createContainer(dataBaseName: String) -> NSPersistentContainer  {
        let container = NSPersistentContainer(name: dataBaseName)
        container.loadPersistentStores(completionHandler: { (storeDescription, containerError) in
            if let error = containerError as NSError? {
                self.createContainerError = error
            }
        })
        return container
    }
    
    func saveContext (context: NSManagedObjectContext) {
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                saveContextError = error as NSError
            }
        }
    }
}


