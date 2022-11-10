//
//  SearchHistoryItem.swift
//  Mastodon
//
//  Created by MainasuK Cirno on 2021-7-15.
//

import CoreData
import CoreDataStack
import Foundation

enum SearchHistoryItem: Hashable {
    case hashtag(ManagedObjectRecord<Tag>)
    case user(ManagedObjectRecord<MastodonUser>)
}
