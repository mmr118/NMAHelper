// The Swift Programming Language
// https://docs.swift.org/swift-book

/// A macro that produces both a value and a string containing the
/// source code that generated the value. For example,
///
///     #stringify(x + y)
///
/// produces a tuple `(x + y, "x + y")`.
@freestanding(expression)
public macro stringify<T>(_ value: T) -> (T, String) = #externalMacro(module: "NMAHelperMacros", type: "StringifyMacro")


//@freestanding(declaration) public macro Preview(_ name: String? = nil, body: @escaping @MainActor () -> View) = #externalMacro(module: "PreviewsMacros", type: "SwiftUIView")

import SwiftUI

@freestanding(declaration)
public macro PreviewTime<T: View>(_ name: String = .init(), body: @escaping @MainActor () -> T) = #externalMacro(module: "NMAMacroMacros", type: "PreviewTimeMacro")
