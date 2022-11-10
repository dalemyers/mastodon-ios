//
//  Notification+Property.swift
//  Mastodon
//
//  Created by MainasuK on 2022-1-21.
//

import CoreDataStack
import class CoreDataStack.Notification
import Foundation
import MastodonSDK

extension Notification.Property {
    public init(
        entity: Mastodon.Entity.Notification,
        domain: String,
        userID: MastodonUser.ID,
        networkDate: Date
    ) {
        self.init(
            id: entity.id,
            typeRaw: entity.type.rawValue,
            domain: domain,
            userID: userID,
            createAt: entity.createdAt,
            updatedAt: networkDate
        )
    }
}
