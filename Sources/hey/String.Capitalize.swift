extension String {
  func capitalizingFirstLetter() -> String {
    return String(prefix(1).uppercased() + dropFirst())
  }
}
