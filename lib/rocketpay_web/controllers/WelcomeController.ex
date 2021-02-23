defmodule RocketpayWeb.WelcomeController do
  # Tornamos esse módulo especial dizendo que ele será um controller
  use RocketpayWeb, :controller

  alias Rocketpay.Numbers

  # Aqui criaremos o index que será renderizado nas rotas
  # Toda função recebe dois parâmetros a conexão e os parametross
  def index(conn, %{"filename" => filename}) do
    filename |> Numbers.sum_from_file() |> handle_response(conn)
  end

  defp handle_response({:error, %{result: result}}, conn)do
    conn |> put_status(:ok)
    |> json(%{message: "Welcome to Rocketpay API. Here is your number! #{result}"})
  end

  defp handle_response({:error, reason}, conn) do
    conn |> put_status (:bad_request)
    |> json(reason)
  end

end
