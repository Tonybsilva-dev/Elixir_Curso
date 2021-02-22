defmodule RocketpayWeb.WelcomeController do
  # Tornamos esse módulo especial dizendo que ele será um controller
  use RocketpayWeb, :controller

  # Aqui criaremos o index que será renderizado nas rotas
  # Toda função recebe dois parâmetros a conexão e os parametross
  def index(conn, _params) do
    text(conn, "Welcome to the Rocketpay API")
  end


end
