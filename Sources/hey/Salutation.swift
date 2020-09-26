import ArgumentParser

/**
 Different salutations to say Hey! or Hello! with.
 */
public enum Salutation: String, ExpressibleByArgument {
  /**
   Hey
   */
  case hey
  /**
   Hello
   */
  case hello
  /**
   Ciao
   */
  case ciao
  /**
   Buongiorno
   */
  case buongiorno
  /**
   Cheers
   */
  case cheers
  /**
   Greetings
   */
  case greetings
  /**
   Hi
   */
  // swiftlint:disable:next identifier_name
  case hi
  /**
   Howdy
   */
  case howdy
  /**
   Welcome
   */
  case welcome
  /**
   Bonjour
   */
  case bonjour
  /**
   Sup (with a fist pump 🤜)
   */
  case sup = "sup 🤜"
  /**
   Heeey (with sunglass emoji 😎)
   */
  case heeey = "Heeey 😎"
}
