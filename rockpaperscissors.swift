//Shakir Nasim - Rock Paper Scissors Game //
func getUserChoice(userInput: String) -> String {
  if userInput == "rock" || userInput == "paper" ||  userInput == "scissors"  {
// User's input choice//

  return userInput 

 } else {
    return "You can only enter rock, paper or scissors. Try again."
  }
}


// User Choice //

func getComputerChoice() -> String {
  let randomNumber = Int.random(in:0...2)

switch randomNumber {
  case 0:
  return "rock"
  case 1:
  return "paper"
  case 2:
  return "scissors"
  default:
  return "Something went wrong"
    }
  }
  // Generates Random Computer Choice^//



func determineWinner(_ userChoice: String, _ compChoice: String) -> String {
  var decision = "It's a tie"

  switch userChoice {
   
  case "rock":
  if compChoice == "paper" {
      decision = "The computer won"
  } else if compChoice == "scissors" {
      decision = "The user won :)"
// User chooses rock//
}
  case "paper":
  if compChoice == "rock" {
      decision = "The user won :)"
  } else if compChoice == "scissors" {
      decision = "The computer won"
// User chooses paper//
  }
    case "scissors":
  if compChoice == "paper" {
      decision = "The user won :)"
  } else if compChoice == "scissors" {
      decision = "The computer won"
 // User chooses scissors^//
  }
  
  default:
  print("something went wrong")
    }
   return decision
}

let userChoice = getUserChoice(userInput:"rock")

let compChoice = getComputerChoice()

print("You threw \(userChoice)")

print("The computher threw \(compChoice)")

print(determineWinner(userChoice, compChoice))
