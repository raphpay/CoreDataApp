//
//  RecipeService.swift
//  CoreDataApp
//
//  Created by Raphaël Payet on 25/06/2021.

import Foundation
import CoreData

open class CoreDataStack {
    public static let modelName = "CoreDataApp"
    
    public static let model: NSManagedObjectModel = {
        let modelURL = Bundle.main.url(forResource: modelName, withExtension: "momd")!
        return NSManagedObjectModel(contentsOf: modelURL)!
    }()
    
    public init() {}
    
    public lazy var persistantContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: CoreDataStack.modelName, managedObjectModel: CoreDataStack.model)
        container.loadPersistentStores { _, error in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        }
        return container
    }()
    
    public lazy var viewContext: NSManagedObjectContext = {
        return persistantContainer.viewContext
    }()
    
    public func saveContext(_ context: NSManagedObjectContext) {
        do {
            try context.save()
        } catch let error as NSError {
            fatalError("Unresolved error \(error), \(error.userInfo)")
        }
    }
}
