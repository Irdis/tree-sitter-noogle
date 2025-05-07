import XCTest
import SwiftTreeSitter
import TreeSitterNoogle

final class TreeSitterNoogleTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_noogle())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading Noogle grammar")
    }
}
