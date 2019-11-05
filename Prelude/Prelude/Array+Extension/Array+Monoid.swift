//
//  Array+Monoid.swift
//  Prelude
//
//  Created by FD on 2019/11/5.
//  Copyright © 2019 FD. All rights reserved.
//

import Foundation

extension Array: Monoid {
    public static var zero: Array<Element> {
        return []
    }

    public func appending(_ other: Array<Element>) -> Array<Element> {
        return self <> other
    }
}
