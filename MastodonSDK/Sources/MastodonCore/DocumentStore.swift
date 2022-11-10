//
//  DocumentStore.swift
//  Mastodon
//
//  Created by Cirno MainasuK on 2021-1-27.
//

import Combine
import MastodonSDK
import UIKit

public class DocumentStore: ObservableObject {
    public let appStartUpTimestamp = Date()
    public var defaultRevealStatusDict: [Mastodon.Entity.Status.ID: Bool] = [:]
}
