//
//  CoreDataAppTests.swift
//  CoreDataAppTests
//
//  Created by Raphaël Payet on 25/06/2021.
//

import XCTest
@testable import CoreDataApp

class CoreDataAppTests: XCTestCase {
    var recipeService: RecipeService!
    var coreDataStack: CoreDataStack!
    // swiftlint:enable implicitly_unwrapped_optional
    
    override func setUp() {
        super.setUp()
        coreDataStack = FakeCoreDataStack()
        recipeService = RecipeService(managedObjectContext: coreDataStack.viewContext,
                                      coreDataStack: coreDataStack)
    }
    
    override func tearDown() {
        super.tearDown()
        recipeService = nil
        coreDataStack = nil
    }
    
    func testAddReport() {
        let recipe = recipeService.add(label: "Rice and chicken", id: UUID())
        
        
        XCTAssertNotNil(recipe, "Recipe should not be nil")
        XCTAssertEqual(recipe.label, "Rice and chicken")
        XCTAssertNotNil(recipe.id)
    }
}
