defmodule RomanKataTest do
  use ExUnit.Case

  expectations = [
    {1, "I"},
    {2, "II"},
    {3, "III"},
    {4, "IV"},
    {5, "V"},
    {9, "IX"},
    {10, "X"},
    {40, "XL"},
    {50, "L"},
    {90, "XC"},
    {100, "C"},
    {400, "CD"},
    {500, "D"},
    {900, "CM"},
    {1000, "M"},
    {789, "DCCLXXXIX"},
    {246, "CCXLVI"},
    {2_421, "MMCDXXI"},
    {160, "CLX"},
  ]

  test "Return empty when zero is given since there is not zero in Roman numerals" do
    arabic = 0

    roman = RomanKata.to_roman(arabic)

    assert roman == ""
  end

  for {arabic, expected} <- expectations do
    test "Return #{expected} when #{arabic} is given" do
      arabic = unquote(arabic)

      roman = RomanKata.to_roman(arabic)

      assert roman == unquote(expected)
    end
  end
end
