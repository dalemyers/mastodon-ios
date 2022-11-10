//
//  ComposeContentViewModel+MetaTextDelegate.swift
//  
//
//  Created by MainasuK on 2022/10/28.
//

import MastodonMeta
import MetaTextKit
import os.log
import TwitterMeta
import UIKit

// MARK: - MetaTextDelegate
extension ComposeContentViewModel: MetaTextDelegate {
    
    public enum MetaTextViewKind: Int {
        case none
        case content
        case contentWarning
    }
    
    public func metaText(
        _ metaText: MetaText,
        processEditing textStorage: MetaTextStorage
    ) -> MetaContent? {
        let kind = MetaTextViewKind(rawValue: metaText.textView.tag) ?? .none
        
        switch kind {
        case .none:
            assertionFailure()
            return nil
            
        case .content:
            let textInput = textStorage.string
            self.content = textInput
            
            let content = MastodonContent(
                content: textInput,
                emojis: [:] // TODO: emojiViewModel?.emojis.asDictionary ?? [:]
            )
            let metaContent = MastodonMetaContent.convert(text: content)
            return metaContent
            
        case .contentWarning:
            let textInput = textStorage.string.replacingOccurrences(of: "\n", with: " ")
            self.contentWarning = textInput
            
            let content = MastodonContent(
                content: textInput,
                emojis: [:] // emojiViewModel?.emojis.asDictionary ?? [:]
            )
            let metaContent = MastodonMetaContent.convert(text: content)
            return metaContent
        }
    }
}
