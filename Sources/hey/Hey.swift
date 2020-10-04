import ArgumentParser

struct Hey: ParsableCommand {
  @Argument
  var name = "Sap"

  func run() throws {
    print(
      "Hey \(name)!"
    )
  }
}
