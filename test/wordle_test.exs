defmodule WordleTest do
  use ExUnit.Case

  # @tag :skip
  test "complete match in correct order" do
    assert Wordle.feedback("aaaaa", "aaaaa") == [:green, :green, :green, :green, :green]
  end

  # @tag :skip
  test "feedback/2 all characters are incorrect / grey" do
    assert Wordle.feedback("aaaaa", "bbbbb") == [:grey, :grey, :grey, :grey, :grey]
  end

  test "feedback/2 all character are wrong position / yellow" do
    assert Wordle.feedback("abdce", "edcba") == [:yellow, :yellow, :yellow, :yellow, :yellow]
  end

  test "feedback/2 one character is incorrect / grey" do
    assert Wordle.feedback("aaaaa", "aaaab") == [:green, :green, :green, :green, :grey]
  end

  test "feedback/2 mixture of green and yellow" do
    assert Wordle.feedback("abaaa", "baaaa") == [:yellow, :yellow, :green, :green, :green]
  end

  test "feedback/2 mixture of grey and yellow" do
    assert Wordle.feedback("zzdef", "bafde") == [:grey, :grey, :yellow, :yellow, :yellow]
  end

  test "feedback/2 mixture of grey and green" do
    assert Wordle.feedback("zzdef", "badef") == [:grey, :grey, :green, :green, :green]
  end

  test "feedback/2 mixture of grey, green, and yellow" do
    assert Wordle.feedback("zzdef", "badfe") == [:grey, :grey, :green, :yellow, :yellow]
  end

  test "feedback/2 valid but excess characters" do
    assert Wordle.feedback("aaabb", "xaaaa") == [:yellow, :green, :green, :yellow, :grey]
  end
end
