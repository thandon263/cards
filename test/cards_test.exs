defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck makes 20 cards" do
    deck_length = length(Cards.create_deck)
    assert deck_length == 20
  end

   @doc """
      In tests `refute` is similar to using `assert`
      although it is testing by proof and not from a place of 
      confidence. 
    """
  test "shuffling a deck randomizes it" do
    deck = Cards.create_deck
    refute deck == Cards.shuffle deck
  end
end
