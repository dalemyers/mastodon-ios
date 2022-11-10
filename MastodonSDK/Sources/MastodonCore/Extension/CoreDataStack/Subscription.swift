//
//  Subscription.swift
//  Mastodon
//
//  Created by MainasuK Cirno on 2021-4-25.
//

import CoreDataStack
import Foundation
import MastodonSDK

public typealias NotificationSubscription = Subscription

extension Subscription {
    
    public var policy: Mastodon.API.Subscriptions.Policy {
        return Mastodon.API.Subscriptions.Policy(rawValue: policyRaw) ?? .all
    }
    
}
