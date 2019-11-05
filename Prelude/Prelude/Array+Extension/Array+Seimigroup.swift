//
//  Array+Seimigroup.swift
//  Prelude
//
//  Created by FD on 2019/11/5.
//  Copyright © 2019 FD. All rights reserved.
//

import Foundation

extension Array: Semigroup {
    public func op(_ other: Array<Element>) -> Array<Element> {
        return self + other
    }
}
