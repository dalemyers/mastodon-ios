//
//  DataSourceFacade+Reblog.swift
//  Mastodon
//
//  Created by MainasuK on 2022-1-21.
//

import CoreDataStack
import MastodonCore
import MastodonUI
import UIKit

extension DataSourceFacade {
    static func responseToStatusReblogAction(
        provider: DataSourceProvider & AuthContextProvider,
        status: ManagedObjectRecord<Status>
    ) async throws {
        let selectionFeedbackGenerator = await UISelectionFeedbackGenerator()
        await selectionFeedbackGenerator.selectionChanged()
        
        _ = try await provider.context.apiService.reblog(
            record: status,
            authenticationBox: provider.authContext.mastodonAuthenticationBox
        )
    }   // end func
}
