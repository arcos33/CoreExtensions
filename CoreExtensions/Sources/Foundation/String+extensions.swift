public extension String {
    // MARK: - Validation
    
    /// Checks if the string is a valid email address
    var isValidEmail: Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return predicate.evaluate(with: self)
    }
    
    /// Checks if the string contains only numbers
    var isNumeric: Bool {
        return self.allSatisfy { $0.isNumber }
    }
    
    // MARK: - Transformations
    
    /// Removes leading and trailing whitespace and newlines
    var trimmed: String {
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    /// Converts string to URL encoded string
    var urlEncoded: String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? self
    }
    
    /// Returns the string with its first letter capitalized
    var capitalizedFirst: String {
        return prefix(1).capitalized + dropFirst()
    }
}

