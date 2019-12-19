defmodule DayOne do
  @moduledoc false

  def part1 do
    "one"
    |> read()
    |> Stream.map(&get_fuel_req_sum/1)
    |> Enum.sum()
  end

  def part2 do
    "one"
    |> read()
  end

  def read(day) do
    File.cwd!()
    |> Path.join("misc/day_#{day}.txt")
    |> File.read!()
    |> String.split("\r\n")
    |> Stream.map(&String.to_integer(&1))
  end

  def get_fuel_req_sum(mass), do: div(mass, 3) - 2
end
