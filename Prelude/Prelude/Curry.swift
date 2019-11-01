//
//  Curry.swift
//  HaskellPrelude
//
//  Created by FD on 2019/10/31.
//  Copyright © 2019 FD. All rights reserved.
//



/// curry and lambda 
public func curry<A, B, C>(_ fun: @escaping (A, B) -> C) -> (A) -> (B) -> (C) {
    return { a in { b in fun(a, b) } }
}

public func curry<A, B, C, D>(_ fun: @escaping (A, B, C) -> D) -> (A) -> (B) -> (C) -> D {
    return { a in { b in { c in fun(a, b, c) } } }
}

public func curry<A, B, C, D, E>(_ fun: @escaping (A, B, C, D) -> E) -> (A) -> (B) -> (C) -> (D) -> E {
    return { a in { b in { c in { d in fun(a, b, c, d) } } } }
}

public func curry<A, B, C, D, E, F>(_ fun: @escaping (A, B, C, D, E) -> F) -> (A) -> (B) -> (C) -> (D) -> (E) -> F {
    return { a in { b in { c in { d in { e in fun(a, b, c, d, e) } } } } }
}

public func curry<A, B, C, D, E, F, G>(_ fun: @escaping (A, B, C, D, E, F) -> G) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> G {
    return { a in { b in { c in { d in { e in { f in fun(a, b, c, d, e, f) } } } } } }
}

public func curry<A, B, C, D, E, F, G, H>(_ fun: @escaping (A, B, C, D, E, F, G) -> H) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> H {
    return { a in { b in { c in { d in { e in { f in { g in fun(a, b, c, d, e, f, g) } } } } } } }
}

public func curry<A, B, C, D, E, F, G, H, I>(_ fun: @escaping (A, B, C, D, E, F, G, H) -> I) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> I {
    return { a in { b in { c in { d in { e in { f in { g in { h in fun(a, b, c, d, e, f, g, h) } } } } } } } }
}

public func curry<A, B, C, D, E, F, G, H, I, J>(_ fun: @escaping (A, B, C, D, E, F, G, H, I) -> J) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> J {
    return { a in { b in { c in { d in { e in { f in { g in { h in { i in fun(a, b, c, d, e, f, g, h, i) } } } } } } } } }
}
