//
//  DisposeBagCollectable.swift
//  Mastodon
//
//  Created by sxiaojian on 2021/2/5.
//

import Combine
import Foundation

protocol DisposeBagCollectable: AnyObject {
    var disposeBag: Set<AnyCancellable> { get set }
}
