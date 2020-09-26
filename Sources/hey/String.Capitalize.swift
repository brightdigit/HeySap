public extension String {
  /**
   Capitalizes the first character of a String.
   */
  func capitalizingFirstLetter() -> String {
    String(prefix(1).uppercased() + dropFirst())
  }
}
