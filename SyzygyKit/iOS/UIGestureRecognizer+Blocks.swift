//
//  UIGestureRecognizer+Blocks.swift
//  SyzygyKit
//
//  Created by Dave DeLong on 1/27/18.
//  Copyright © 2018 Syzygy. All rights reserved.
//

public extension UIGestureRecognizer {
    
    public func addAction(_ block: @escaping () -> Void) {
        let t = ActionTarget(block: { _ in block() })
        addTarget(t, action: #selector(ActionTarget.actionMethod(_:)))
        self.setAssociatedObject(t, forKey: &ActionTarget.AssociatedObjectKey)
    }
    
}
