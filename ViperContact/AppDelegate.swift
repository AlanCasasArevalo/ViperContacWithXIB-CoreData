//
//  AppDelegate.swift
//  ViperContact
//
//  Created by Alan Casas Arevalo on 14/5/18.
//  Copyright © 2018 Alan Casas Arevalo. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let coreDataStack = CoreDataStack()
    var context: NSManagedObjectContext?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        self.context = coreDataStack.createContainer(dataBaseName: "ViperContact").viewContext
        
        let tableRouter = TableContactRouter(context: context)

        window?.rootViewController = tableRouter.navigationController
        
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {}

    func applicationDidEnterBackground(_ application: UIApplication) {}

    func applicationWillEnterForeground(_ application: UIApplication) {}

    func applicationDidBecomeActive(_ application: UIApplication) {}

    func applicationWillTerminate(_ application: UIApplication) {}


}

