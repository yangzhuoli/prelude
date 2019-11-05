//
//  Array+Functor.swift
//  Prelude
//
//  Created by FD on 2019/11/5.
//  Copyright © 2019 FD. All rights reserved.
//

import Foundation

extension Array: Functor {
	
    public typealias A = Element
    public typealias B = Any
    public typealias FB = [B]

    public func fmap<B>(_ f: (A) -> B) -> [B] {
        return map(f)
    }
}

public func <^> <T, U>(f: (T) -> U, a: [T]) -> [U] {
    return a.map(f)
}
