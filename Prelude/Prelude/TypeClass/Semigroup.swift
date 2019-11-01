//
//  Semigroup.swift
//  HaskellPrelude
//
//  Created by FD on 2019/10/30.
//  Copyright © 2019 FD. All rights reserved.
//

/// 满足封闭性、结合律
public protocol Semigroup {
    func op(_ other: Self) -> Self
}

extension Semigroup {
    public func sconcat<S: Semigroup>(_ h: S, _ t: [S]) -> S {
        return t.reduce(h) { $0.op($1) }
    }
}

public func <> <S: Semigroup>(lhs: S, rhs: S) -> S {
    return lhs.op(rhs)
}

public prefix func <> <S: Semigroup>(b: S) -> ((S) -> S) {
    return { $0 <> b }
}

public postfix func <> <S: Semigroup>(a: S) -> ((S) -> S) {
    return { a <> $0 }
}

public func >>> <A, B, C>(f: @escaping (A) -> B, g: @escaping (B) -> C) -> (A) -> C {
    return { g(f($0)) }
}

public func <<< <A, B, C>(f: @escaping (B) -> C, g: @escaping (A) -> B) -> (A) -> C {
    return { f(g($0)) }
}
