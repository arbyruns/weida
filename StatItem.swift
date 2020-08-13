//
//  StatItem.swift
//  Weida
//
//  Created by robevans on 8/11/20.
//  Copyright © 2020 robevans. All rights reserved.
//

import Foundation
import CoreData

public class StatItem:NSManagedObject, Identifiable {
    @NSManaged public var createdAt:Date?
    @NSManaged public var lift:String?
    @NSManaged public var weight:String?
}

extension StatItem {
    static func getStatItems() -> NSFetchRequest <StatItem> {
        let request: NSFetchRequest<StatItem> = StatItem.fetchRequest() as! NSFetchRequest<StatItem>

        let sortDescriptor = NSSortDescriptor(key: "createdAt", ascending: true)

        request.sortDescriptors = [sortDescriptor]

        return request

    }
}
