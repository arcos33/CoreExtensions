//
//  Optional+extensions.swift
//  CoreExtensions
//
//  Created by arkos33 on 12/17/24.
//


public extension Optional {
    /// Returns true if optional is nil
    var isNil: Bool {
        return self == nil
    }
    
    /// Returns true if optional has value
    var hasValue: Bool {
        return self != nil
    }
    
    /// Executes closure if optional has value
    func ifPresent(_ closure: (Wrapped) -> Void) {
        if let value = self {
            closure(value)
        }
    }
}
