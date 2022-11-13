defmodule Wordle do
  def feedback(answer, guess) do
    answer = String.codepoints(answer)
    guess = String.codepoints(guess)
    # answer == guess && [:green, :green, :green, :green, :green]

    Enum.map(guess, fn player_char ->
      cond do
        player_char in answer -> :green
        player_char not in answer -> :grey
      end
    end)

    # Enum.map(guess, fn player_guess ->
    #   player_guess not in answer && :grey
    # end)
  end

  # def feedback(answer, guess) when answer == guess do
  #   [:green, :green, :green, :green, :green]
  # end

  # def feedback(answer, guess) do
  #   initial_game_state_list =
  #     initial_filter(answer, guess) |> IO.inspect(label: "INITIAL_GAME_STATE")

  #   answer_list = String.codepoints(answer)

  #   zipped_game(answer_list, initial_game_state_list)
  # end

  # defp zipped_game(answer_list, initial_game_state) do
  #   zipped_game = Enum.zip(answer_list, initial_game_state)

  #   Enum.reduce(zipped_game, [], fn {a, g}, acc ->
  #     cond do
  #       a == g ->
  #         acc ++ [:green]

  #       g == :grey ->
  #         acc ++ [:grey]

  #       a != g ->
  #         acc ++ [:yellow]
  #     end
  #   end)
  # end

  # defp initial_filter(answer, guess) do
  #   answer = String.codepoints(answer)
  #   guess = String.codepoints(guess)

  #   Enum.map(guess, fn player_guess ->
  #     if player_guess in answer do
  #       player_guess
  #     else
  #       :grey
  #     end
  #   end)
  # end
end
