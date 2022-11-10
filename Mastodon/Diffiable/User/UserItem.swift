//
//  UserItem.swift
//  Mastodon
//
//  Created by Cirno MainasuK on 2021-11-1.
//

import CoreData
import CoreDataStack
import Foundation

enum UserItem: Hashable {
    case user(record: ManagedObjectRecord<MastodonUser>)
    case bottomLoader
    case bottomHeader(text: String)
}
