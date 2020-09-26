import ArgumentParser

extension String {
    func capitalizingFirstLetter() -> String {
        return String(prefix(1).uppercased() + dropFirst())
    }
}

enum Salutation : String, ExpressibleByArgument {
  case hey
  case hello
  case greetings
  case hi
  case howdy
  case welcome
  case bonjour
}

struct Hey: ParsableCommand {
  @Flag
  var verbose = false
  
  @Option
  var salutation : Salutation = .hey
  
  @Argument
  var name : String = "Sap"
  
  func run() throws {
    print("\(self.salutation.rawValue.capitalizingFirstLetter()) \(name)", terminator: verbose ? "" : "!\n")
    if verbose {
      print(", How's Your Day?")
    }
  }
}

Hey.main()
