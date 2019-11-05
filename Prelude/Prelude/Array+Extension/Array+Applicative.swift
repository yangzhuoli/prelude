//
//  Array+Applicative.swift
//  Prelude
//
//  Created by FD on 2019/11/5.
//  Copyright © 2019 FD. All rights reserved.
//

import Foundation

extension Array: Applicative {
    public typealias FAB = [(A) -> B]

    public func pure(_ a: Element) -> Array<Element> {
        return [a]
    }

    public func ap(_ f: [(A) -> B]) -> [B] {
        return f <*> self
    }
}

public func <*> <A, B>(fs: [(A) -> B], xs: [A]) -> [B] {
    return fs.flatMap({ xs.map($0) })
}
