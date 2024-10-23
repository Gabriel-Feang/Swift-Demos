var englishText = "this is a secret message"
var secretMessage = ".... --- .-- -.. -.--   .--. .- .-. - -. . .-."
var letterToMorse: [String:String] = [
  "a": ".-",
  "b": "-...",
  "c": "-.-.",
  "d": "-..",
  "e": ".",
  "f": "..-.",
  "g": "--.",
  "h": "....",
  "i": "..",
  "j": ".---",
  "k": "-.-",
  "l": ".-..",
  "m": "--",
  "n": "-.",
  "o": "---",
  "p": ".--.",
  "q": "--.-",
  "r": ".-.",
  "s": "...",
  "t": "-",
  "u": "..-",
  "v": "...-",
  "w": ".--",
  "x": "-..-",
  "y": "-.--",
  "z": "--.."
]
var morseText: String = ""

for element in englishText {
  if let morseChar = letterToMorse["\(element)"] {
    morseText += morseChar + " "
  } else {
    morseText += "  "
  }
}

var decodedMessage = ""

var morseCodeArray = [""]

var currentMorse = ""

for char in secretMessage {
  if char != " " {
    currentMorse.append(char)
  } else {
    switch (currentMorse) {
      case "": 
        currentMorse += " "
      case " ": 
        morseCodeArray.append(" ")
        currentMorse = ""
      default: morseCodeArray.append(currentMorse)
        currentMorse = ""
    }
  }
}
morseCodeArray.append(currentMorse)

var morseToLetter: [String:String] = [:]

for (key: letter, value: morseChar) in letterToMorse {
  morseToLetter[morseChar] = letter
}

morseCodeArray.append(currentMorse)

for morseValue in morseCodeArray {
  if let letterChar = morseToLetter[morseValue] {
    decodedMessage += letterChar
  } else {
    decodedMessage += " "
  }
}
print("Decoded message says:\(decodedMessage)")
print("Encoded text: \(morseText)")