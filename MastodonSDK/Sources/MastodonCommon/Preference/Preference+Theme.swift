//
//  Preference+Theme.swift
//  
//
//  Created by MainasuK on 2022-4-13.
//

import MastodonExtension
import UIKit

public enum ThemeName: String, CaseIterable {
    case system
    case mastodon
}

extension UserDefaults {

    @objc public dynamic var currentThemeNameRawValue: String {
        get {
            register(defaults: [#function: ThemeName.mastodon.rawValue])
            return string(forKey: #function) ?? ThemeName.mastodon.rawValue
        }
        set { self[#function] = newValue }
    }

}
