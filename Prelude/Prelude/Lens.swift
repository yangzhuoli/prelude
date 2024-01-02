//
//  Lens.swift
//  Prelude
//
//  Created by FD on 2019/10/31.
//  Copyright © 2019 FD. All rights reserved.
//

public struct Lens<Whole, Part> {
    public let view: (Whole) -> Part
    public let set: (Part, Whole) -> Whole

    public init(view: @escaping (Whole) -> Part, set: @escaping (Part, Whole) -> Whole) {
        self.view = view
        self.set = set
    }

    public func over(_ f: @escaping (Part) -> Part) -> ((Whole) -> Whole) {
        return { whole in
            let part = self.view(whole)
            return self.set(f(part), whole)
        }
    }

    public func compose<Subpart>(_ rhs: Lens<Part, Subpart>) -> Lens<Whole, Subpart> {
        return Lens<Whole, Subpart>(
            view: view >>> rhs.view, set: {
                subPart, whole in
                let part = self.view(whole)
                let newPart = rhs.set(subPart, part)
                return self.set(newPart, whole)
            }
        )
    }
}

extension Lens {}
