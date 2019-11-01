//
//  Monoid.swift
//  HaskellPrelude
//
//  Created by FD on 2019/10/30.
//  Copyright © 2019 FD. All rights reserved.
//

public protocol Monoid: Semigroup {
    static var zero: Self { get }

    func appending(_: Self) -> Self
}

extension Monoid {
    mutating func append(_ other: Self) {
        self = appending(other)
    }

    func mconcat<M: Monoid>(_ t: [M]) -> M {
        return t.reduce(M.zero) { $0.appending($1) }
    }
}

