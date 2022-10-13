defmodule Games.GuessingGame do
  def guess do
    guess(nil)
  end

  def guess(answer) do
    player_guess =
      IO.gets("Guess a number between 1 and 10.   ")
      |> String.trim()
      |> String.to_integer()

    answer = answer || Enum.random(1..10)

    (player_guess == answer && IO.puts("Correct!")) || guess(answer)
  end
end

# GuessingGame.guess(nil)