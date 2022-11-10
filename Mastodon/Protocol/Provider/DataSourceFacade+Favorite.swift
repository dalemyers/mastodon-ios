//
//  DataSourceFacade+Favorite.swift
//  Mastodon
//
//  Created by MainasuK on 2022-1-21.
//

import CoreData
import CoreDataStack
import MastodonCore
import UIKit

extension DataSourceFacade {
    public static func responseToStatusFavoriteAction(
        provider: DataSourceProvider & AuthContextProvider,
        status: ManagedObjectRecord<Status>
    ) async throws {
        let selectionFeedbackGenerator = await UISelectionFeedbackGenerator()
        await selectionFeedbackGenerator.selectionChanged()
        
        _ = try await provider.context.apiService.favorite(
            record: status,
            authenticationBox: provider.authContext.mastodonAuthenticationBox
        )
    }
}
