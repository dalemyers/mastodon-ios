//
//  MastodonEmojiContainer.swift
//  MastodonEmojiContainer
//
//  Created by Cirno MainasuK on 2021-9-3.
//  Copyright © 2021 Twidere. All rights reserved.
//

import CoreDataStack
import Foundation
import MastodonSDK

public protocol MastodonEmojiContainer {
    var emojis: [Mastodon.Entity.Emoji]? { get }
}

extension MastodonEmojiContainer {
    public var mastodonEmojis: [MastodonEmoji] {
        return emojis.flatMap { emojis in
            emojis.map { MastodonEmoji(emoji: $0) }
        } ?? []
    }
}

extension Mastodon.Entity.Account: MastodonEmojiContainer { }
extension Mastodon.Entity.Status: MastodonEmojiContainer { }
