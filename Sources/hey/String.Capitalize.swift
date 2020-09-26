extension String {
  func capitalizingFirstLetter() -> String {
    String(prefix(1).uppercased() + dropFirst())
  }
}
