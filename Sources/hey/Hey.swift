import ArgumentParser

struct Hey: ParsableCommand {
  @Flag
  var verbose = false

  @Option
  var salutation: Salutation = .hey

  @Argument
  var name: String = "Sap"

  func run() throws {
    print("\(salutation.rawValue.capitalizingFirstLetter()) \(name)", terminator: verbose ? "" : "!\n")
    if verbose {
      print(", How's Your Day?")
    }
  }
}
