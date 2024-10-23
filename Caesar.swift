let alphabet: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

var secretMessage = "hello"

print(secretMessage)

var message = Array(secretMessage)

print(message)

print(encrypt(raw: secretMessage, key: 3))

var new = "vamo la"

let a = encrypt(raw: new, key: 5)
let b = decrypt(encrypted: a, key: 5)
print(a)
print(b)


func encrypt(raw: String, key: Int) -> (String) {
  var rawMessage = Array(raw)

  for i in (0..<rawMessage.count) {
    for j in (0..<alphabet.count) {
      if rawMessage[i] == alphabet[j] {
        rawMessage[i] = alphabet[j+key % 26]
        break
      }
    }
  }
  return String(rawMessage)
}

func decrypt(encrypted: String, key: Int) -> (String) {
  var encryptedMessage = Array(encrypted)

  for i in (0..<encryptedMessage.count) {
    for j in (0..<alphabet.count) {
      if encryptedMessage[i] == alphabet[j] {
        encryptedMessage[i] = alphabet[j-key % 26]
        break
      }
    }
  }
  return String(encryptedMessage)
}


