import Foundation

let arguments = ProcessInfo.processInfo.arguments
var verbose = false
var salutation: Salutation = .hey
var name: String = "Sap"

// ignore the first argument since it's the command name
for argument in arguments[1...] {
  // if it's not an option or flag, set as argument
  guard argument.starts(with: "--") else {
    name = argument
    continue
  }

  let components = argument.components(separatedBy: "=")

  // if it's not separated by equal sign `=` then its a flag
  guard components.count == 2 else {
    // is it `verbose`?
    if components.first == "--verbose" {
      verbose = true
    }
    continue
  }

  // is it `salutation`?
  guard components.first == "--salutation" else {
    continue
  }

  // is it a valid `Salutation`?
  guard let argSalutation = components.last.flatMap(Salutation.init(rawValue:)) else {
    continue
  }

  // set the salutation
  salutation = argSalutation
}

// print the salutation with the name
print(
  "\(salutation.rawValue.capitalizingFirstLetter()) \(name)",
  // if verbose, then don't add the newline character
  terminator: verbose ? "" : "!\n"
)

// if verbose, add more text
if verbose {
  print(", How's Your Day?")
}
