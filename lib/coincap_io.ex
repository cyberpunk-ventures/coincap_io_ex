defmodule CoincapIo do
  use HTTPoison.Base

  def process_url(url) do
     "http://coincap.io" <> url
  end

  def process_response_body(body) do
     body
     |> Poison.Parser.parse!
  end

  @spec front :: List.t()
  def front do
    {:ok, response} = CoincapIo.get("/front")
    response.body
  end
end
