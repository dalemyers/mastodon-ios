//
//  APIService+Instance.swift
//  Mastodon
//
//  Created by MainasuK Cirno on 2021-2-5.
//

import Combine
import CommonOSLog
import CoreData
import CoreDataStack
import Foundation
import MastodonSDK

extension APIService {
    
    public func instance(
        domain: String
    ) -> AnyPublisher<Mastodon.Response.Content<Mastodon.Entity.Instance>, Error> {
        return Mastodon.API.Instance.instance(session: session, domain: domain)
    }
    
}
