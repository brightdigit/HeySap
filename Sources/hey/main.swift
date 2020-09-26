import Foundation
import ArgumentParser

let arguments = ProcessInfo.processInfo.arguments



var verbose = false

var salutation : Salutation = .hey

var name : String = "Sap"

for argument in arguments[1...]{
  guard argument.starts(with: "--") else {
    name = argument
    continue
  }
  
  let components = argument.components(separatedBy: "=")
  
  guard components.count == 2 else {
    if components.first == "--verbose" {
      verbose = true
    }
    continue
  }
  
  guard components.first=="--salutation" else {
    continue
  }
  
  guard let argSalutation = components.last.flatMap(Salutation.init(rawValue:)) else {
    continue
  }
  
  salutation = argSalutation
}

print("\(salutation.rawValue.capitalizingFirstLetter()) \(name)", terminator: verbose ? "" : "!\n")
if verbose {
  print(", How's Your Day?")
}
