defmodule Games.GuessingGame do
  # to call random once per game, the answer
  def guess do
    guess(Enum.random(1..10))
  end

  # to get and clean user input, the guess
  def get_guess do
    IO.gets("Guess a number between 1 and 10.   ")
    |> String.trim()
    |> String.to_integer()
  end

  # to check if the guess matches the answer, if not call hint() AND, aka &&, loop guess(answer) again
  def guess(answer) do
    player_guess = get_guess()

    # would be clearer as an if statement but I like it for learning purposes
    (player_guess == answer && IO.puts("Correct!")) ||
      (hint(player_guess, answer) && guess(answer))
  end

  # to check the relationship of the guess to the answer, tell the player and get a new guess
  def hint(guess, answer) do
    (guess > answer && IO.puts("Your guess is too high, guess again.")) ||
      IO.puts("Your guess is too low, guess again.")
  end
end

# GuessingGame.guess(nil) # needed for a .exs file
