const baseUrl = "http://localhost:3000"
let userScore = 0;
let computerScore = 0;
let userName = ""
const nameInput = () => document.getElementById("name")
const userScore_span = document.getElementById("user-score");
const computerScore_span = document.getElementById("computer-score");
const scoreBoard_div = document.querySelector(".score-board");
const result_p = document.querySelector(".result > p");
const rock_div = document.getElementById("r");
const paper_div = document.getElementById("p");
const scissors_div = document.getElementById("s");
const game_div = document.getElementById("game");
const user_div = document.getElementById("user");
let ascending = true 

window.addEventListener('DOMContentLoaded', (event) => {
  Game.renderForm()
  Game.addButtonFunctionality()
  Game.fetchScores()
});
/*Dom Variables Element span tag */
function getComputerChoice() {
  const choices = ['r','p','s'];
  const randomNumber = Math.floor(Math.random() * 3);
  return choices[randomNumber];
}
function convertToWord(letter) {
  if (letter === "r") return "Rock";
  if (letter === "p") return "Paper";
  return "Scissors";
}
function win(userChoice, computerChoice) {
  userScore++;
  userScore_span.innerHTML = userScore;
  computerScore_span.innerHTML = computerScore;
  const smallUserWord = "user".fontsize(3).sub();
  const smallCompWord = "robo".fontsize(3).sub();
  result_p.innerHTML = `${convertToWord(userChoice)}${smallUserWord}  beats  ${convertToWord(computerChoice)}${smallCompWord}  You Win! `;
}
function lose(userChoice, computerChoice) {
  computerScore++;
  userScore_span.innerHTML = userScore;
  computerScore_span.innerHTML = computerScore;
  const smallUserWord = "user".fontsize(3).sub();
  const smallCompWord = "robo".fontsize(3).sub();
  result_p.innerHTML = `${convertToWord(userChoice)}${smallUserWord}  loses  ${convertToWord(computerChoice)}${smallCompWord}  You Lost!..  `;
  ;
}
function draw(userChoice, computerChoice) {
  const smallUserWord = "user".fontsize(3).sub();
  const smallCompWord = "robo".fontsize(3).sub();
  result_p.innerHTML = `${convertToWord(userChoice)}${smallUserWord}  equals  ${convertToWord(computerChoice)}${smallCompWord}  Draw `;
}
function game(userChoice) {
  const computerChoice = getComputerChoice();
  switch (userChoice + computerChoice) {
    case "rs":
    case "pr":
    case "sp":
      win(userChoice, computerChoice);
      break;
    case "rp":
    case "ps":
    case "sr":
      lose(userChoice, computerChoice);
      break;
    case "rr":
    case "pp":
    case "ss":
      draw(userChoice, computerChoice);
      break;
  }
}
function main() {
  rock_div.addEventListener('click', function() {
      game("r");
  })
  paper_div.addEventListener('click', function() {
      game("p");
  })
  scissors_div.addEventListener('click', function() {
      game("s");
  })
}
main();

let submitScore = (e) => {
  let params = {
          "name": userName
        }
  fetch(baseUrl + "/users", {
    headers: {
      "Accept": "application/json",
      "Content-type": "application/json",
    },
    body: JSON.stringify(params),
    method: "POST"})
    .then(resp => resp.json())
    .then(() => {
      Game.fetchScores();
    })

    

    
}