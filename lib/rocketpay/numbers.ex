defmodule Rocketpay.Numbers do
  def sum_from_file(filename) do
    #Utilizando Pipe Operator
    "#{filename}.csv" |> File.read() |> handle_file()
  end

  # Sintax Short
  defp handle_file({:ok, result}) do
    result =
    # Dividir os valores
    result |> String.split(",")
    # Convertendo o array de String para inteiros
    |> Enum.map(fn number -> String.to_integer(number) end)
    # Somamos os valores, após terem sido convertidos
    |> Enum.sum()
    # Retorno estilo console.log
    {:ok, %{result: result}}
  end
  defp handle_file({:error, _reason}), do: {:error, "Invalid file!"}
end
