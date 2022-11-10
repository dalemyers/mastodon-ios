//
//  MastodonPollOption+Property.swift
//
//
//  Created by MainasuK on 2021-12-9.
//

import CoreDataStack
import Foundation
import MastodonSDK

extension PollOption.Property {
    public init(
        index: Int,
        entity: Mastodon.Entity.Poll.Option,
        networkDate: Date
    ) {
        self.init(
            index: Int64(index),
            title: entity.title,
            votesCount: Int64(entity.votesCount ?? 0),
            createdAt: networkDate,
            updatedAt: networkDate
        )
    }
}
