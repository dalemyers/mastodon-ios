//
//  DataSourceFacade+Block.swift
//  Mastodon
//
//  Created by MainasuK on 2022-1-24.
//

import CoreDataStack
import MastodonCore
import UIKit

extension DataSourceFacade {
    static func responseToUserBlockAction(
        dependency: NeedsDependency & AuthContextProvider,
        user: ManagedObjectRecord<MastodonUser>
    ) async throws {
        let selectionFeedbackGenerator = await UISelectionFeedbackGenerator()
        await selectionFeedbackGenerator.selectionChanged()
    
        _ = try await dependency.context.apiService.toggleBlock(
            user: user,
            authenticationBox: dependency.authContext.mastodonAuthenticationBox
        )
    }   // end func
}
