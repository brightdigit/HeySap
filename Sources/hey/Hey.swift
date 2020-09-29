import ArgumentParser

struct Hey: ParsableCommand {
  @Argument
  var name: String // = "Sap"

  func run() throws {
    print(
      "Hey \(name)"
    )
  }
}
