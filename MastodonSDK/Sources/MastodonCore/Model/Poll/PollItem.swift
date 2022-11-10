//
//  PollItem.swift
//  
//
//  Created by MainasuK on 2022-1-12.
//

import CoreData
import CoreDataStack
import Foundation

public enum PollItem: Hashable {
    case option(record: ManagedObjectRecord<PollOption>)
}
