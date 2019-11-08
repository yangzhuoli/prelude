//
//  UIView+Lens.swift
//  Prelude
//
//  Created by FD on 2019/11/5.
//  Copyright © 2019 FD. All rights reserved.
//

import UIKit

public extension LensHolder where Object: UIView {
    var frame: Lens<Object, CGRect> {
        return Lens(
            view: { $0.frame },
            set: { $1.frame = $0; return $1 }
        )
    }

    var bounds: Lens<Object, CGRect> {
        return Lens(
            view: { $0.frame },
            set: { $1.frame = $0; return $1 }
        )
    }

    var isUserInteractionEnabled: Lens<Object, Bool> {
        return Lens(
            view: { $0.isUserInteractionEnabled },
            set: { $1.isUserInteractionEnabled = $0; return $1 }
        )
    }

    var tag: Lens<Object, Int> {
        return Lens(
            view: { $0.tag },
            set: { $1.tag = $0; return $1 }
        )
    }

    var backgroundColor: Lens<Object, UIColor?> {
        return Lens(
            view: { ($0.backgroundColor) },
            set: { $1.backgroundColor = $0; return $1 }
        )
    }
}
