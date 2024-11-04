func getUserChoice(userInput: String) -> String {
  if (userInput == "rock" || userInput == "paper" || userInput == "scissors") {
    return userInput
  } else {
    return "You can only enter rock, paper or scissors. Try again!"
  }
}

let userChoice = getUserChoice(userInput: "rock")

func getComputerChoice() -> String {
  let randomNumber = Int.random(in: 0...2)

  switch randomNumber {
  case 0:
    return "rock"
  case 1:
    return "paper"
  case 2:
    return "scissors"
  default:
    return "Something went wrong."
  }
}

let computerChoice = getComputerChoice()

func determineWinner(_user: String, _computer: String) -> String {
  var decision = "It's a tie"

  switch _user {
  case "rock":
    if _computer == "paper" {
      decision = "The computer won."
      return decision
    } else if _computer == "scissors" {
      decision = "The user won!"
    }
  case "paper":
    if _computer == "scissors" {
      decision = "The computer won."
      return decision
    } else if _computer == "rock" {
      decision = "The user won!"
    }
  case "scissors":
    if _computer == "rock" {
      decision = "The computer won."
      return decision
    } else if _computer == "paper" {
      decision = "The user won!"
    }
  default:
    print("Something went wrong.")
  }
  return decision
}

let result = determineWinner(_user: userChoice, _computer: computerChoice)

print("User choice: \(userChoice)")
print("Computer choice: \(computerChoice)")
print("Winner: \(result)")