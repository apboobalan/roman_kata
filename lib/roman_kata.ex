defmodule RomanKata do
  @predefined_conversions [
    {1000, "M"},
    {900, "CM"},
    {500, "D"},
    {400, "CD"},
    {100, "C"},
    {90, "XC"},
    {50, "L"},
    {40, "XL"},
    {10, "X"},
    {9, "IX"},
    {5, "V"},
    {4, "IV"},
    {1, "I"}
  ]
  def to_roman(0), do: ""

  def to_roman(arabic) do
    {number, roman} = find_equal_or_immediate_higher_number(arabic)
    roman <> to_roman(arabic - number)
  end

  def find_equal_or_immediate_higher_number(arabic) do
    @predefined_conversions |> Enum.find(fn {value, _roman} -> value <= arabic end)
  end
end
