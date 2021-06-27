//
//  RecipeService.swift
//  CoreDataApp
//
//  Created by Raphaël Payet on 25/06/2021.
//

import Foundation
import CoreData

class RecipeService {
    let managedObjectContext: NSManagedObjectContext
    let coreDataStack: CoreDataStack
    
    public init(managedObjectContext: NSManagedObjectContext, coreDataStack: CoreDataStack) {
        self.managedObjectContext = managedObjectContext
        self.coreDataStack = coreDataStack
    }
}

extension RecipeService {
    public func add(label: String, id: UUID) -> Recipe {
        let dataModel = Recipe(context: managedObjectContext)
        
        dataModel.id    = id
        dataModel.label = label
        
        coreDataStack.saveContext(managedObjectContext)
        return dataModel
    }
}
