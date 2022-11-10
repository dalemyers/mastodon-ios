//
//  OSLog.swift
//  Mastodon
//
//  Created by Cirno MainasuK on 2021/1/29
//

import CommonOSLog
import Foundation
import os

extension OSLog {
    static let api: OSLog = {
        #if DEBUG
        return OSLog(subsystem: OSLog.subsystem + ".api", category: "api")
        #else
        return OSLog.disabled
        #endif
    }()
}
