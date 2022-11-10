//
//  APIService+CustomEmojiViewModel.swift
//  Mastodon
//
//  Created by MainasuK Cirno on 2021-3-15.
//

import Combine
import CommonOSLog
import CoreData
import CoreDataStack
import Foundation
import MastodonSDK

extension APIService {
 
    func customEmoji(domain: String) -> AnyPublisher<Mastodon.Response.Content<[Mastodon.Entity.Emoji]>, Error> {
        return Mastodon.API.CustomEmojis.customEmojis(session: session, domain: domain)
    }
    
}
