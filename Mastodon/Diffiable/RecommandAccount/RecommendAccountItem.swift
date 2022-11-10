//
//  RecommendAccountItem.swift
//  Mastodon
//
//  Created by MainasuK on 2022-2-10.
//

import CoreDataStack
import Foundation

enum RecommendAccountItem: Hashable {
    case account(ManagedObjectRecord<MastodonUser>)
}
