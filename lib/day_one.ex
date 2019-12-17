defmodule DayOne do
  @moduledoc false

  @spec get_fuel_req_sum :: pos_integer
  def get_fuel_req_sum do
    File.cwd!()
    |> Path.join("misc/day_one.txt")
    |> File.read!()
    |> String.split("\r\n")
    |> Enum.map(&String.to_integer(&1))
    |> Enum.reduce(0, fn x, acc ->
      x
      |> div(3)
      |> floor()
      |> Kernel.-(2)
      |> Kernel.+(acc)
    end)
  end
end
