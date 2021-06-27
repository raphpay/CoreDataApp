//
//  AppDelegate.swift
//  CoreDataApp
//
//  Created by Raphaël Payet on 25/06/2021.
//

import UIKit
import CoreData

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    private let appName = "CoreDataApp"

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let homeViewController = ViewController()
        window!.rootViewController = homeViewController
        window!.makeKeyAndVisible()
        return true
    }
}

