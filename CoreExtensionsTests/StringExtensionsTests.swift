// StringExtensionsTests.swift
import XCTest
@testable import CoreExtensions

final class StringExtensionsTests: XCTestCase {
    // MARK: - Email Validation Tests
    func testEmailValidation() {
        // Valid emails
        let validEmails = [
            "test@example.com",
            "user.name@domain.com",
            "user+label@example.com",
            "firstname.lastname@company.co.uk"
        ]
        
        validEmails.forEach { email in
            XCTAssertTrue(email.isValidEmail, "Expected '\(email)' to be valid")
        }
        
        // Invalid emails
        let invalidEmails = [
            "invalid.email",
            "@missing.com",
            "no@domain",
            "spaces in@email.com",
            "",
            "missing@.com",
            "@",
            "double@@domain.com"
        ]
        
        invalidEmails.forEach { email in
            XCTAssertFalse(email.isValidEmail, "Expected '\(email)' to be invalid")
        }
    }
    
    // MARK: - Numeric Tests
    func testIsNumeric() {
        // Valid numeric strings
        let numericStrings = [
            "123",
            "456789",
            "0",
            "00123"
        ]
        
        numericStrings.forEach { string in
            XCTAssertTrue(string.isNumeric, "Expected '\(string)' to be numeric")
        }
        
        // Invalid numeric strings
        let nonNumericStrings = [
            "abc",
            "12.3",
            "1a2b3",
            "",
            " ",
            "12 34",
            "-123"  // Negative numbers don't count as purely numeric
        ]
        
        nonNumericStrings.forEach { string in
            XCTAssertFalse(string.isNumeric, "Expected '\(string)' to not be numeric")
        }
    }
    
    // MARK: - Trimming Tests
    func testTrimming() {
        // Test cases with expected results
        let testCases: [(input: String, expected: String)] = [
            ("  Hello  ", "Hello"),
            ("\tTabbed\t", "Tabbed"),
            ("\nNew Lines\n", "New Lines"),
            ("   Multiple   Spaces   ", "Multiple   Spaces"),
            ("No Trim Needed", "No Trim Needed"),
            ("", ""),
            ("  ", ""),
            ("\n\t  Mixed  \t\n", "Mixed")
        ]
        
        testCases.forEach { test in
            XCTAssertEqual(test.input.trimmed, test.expected,
                          "Trimming '\(test.input)' should result in '\(test.expected)'")
        }
    }
    
    // MARK: - URL Encoding Tests
    func testURLEncoding() {
        // Test cases with expected results
        let testCases: [(input: String, expected: String)] = [
            ("Hello World", "Hello%20World"),
            ("@#$%", "@%23$%25"),
            ("https://example.com", "https%3A%2F%2Fexample.com"),
            ("query=test value", "query%3Dtest%20value"),
            ("", ""),
            ("noEncodingNeeded", "noEncodingNeeded"),
            ("email@domain.com", "email%40domain.com")
        ]
        
        testCases.forEach { test in
            XCTAssertEqual(test.input.urlEncoded, test.expected,
                          "URL encoding '\(test.input)' should result in '\(test.expected)'")
        }
    }
    
    // MARK: - Capitalized First Tests
    func testCapitalizedFirst() {
        // Test cases with expected results
        let testCases: [(input: String, expected: String)] = [
            ("hello", "Hello"),
            ("world", "World"),
            ("already Capitalized", "Already Capitalized"),
            ("UPPERCASE", "UPPERCASE"),
            ("", ""),
            ("a", "A"),
            ("123abc", "123abc"),
            ("mixed Case", "Mixed Case")
        ]
        
        testCases.forEach { test in
            XCTAssertEqual(test.input.capitalizedFirst, test.expected,
                          "Capitalizing first letter of '\(test.input)' should result in '\(test.expected)'")
        }
    }
    
    // MARK: - Empty State Tests
    func testEmptyStringBehavior() {
        let emptyString = ""
        
        // Test all extensions with empty string
        XCTAssertFalse(emptyString.isValidEmail)
        XCTAssertFalse(emptyString.isNumeric)
        XCTAssertEqual(emptyString.trimmed, "")
        XCTAssertEqual(emptyString.urlEncoded, "")
        XCTAssertEqual(emptyString.capitalizedFirst, "")
    }
}

