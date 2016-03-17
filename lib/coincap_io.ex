defmodule CoincapIo do
  use HTTPoison.Base

  def process_url(url) do
     "http://coincap.io" <> url
  end

  def process_response_body(body) do
     body
     |> Poison.Parser.parse!
  end

  @doc """
  this endpoint returns list of elements with the JSON schema as in example:
  {
    position24: "1",
    position: "1",
    short: "BTC",
    long: "Bitcoin",
    time: 1458233596106,
    price: 419.19,
    perc: "0.90",
    volume: "83980200",
    usdVolume: "83980200",
    cap24hrChange: "0.90",
    mktcap: 6425092806,
    supply: "15327400",
    published: false,
    vwapData: 419.18999999999994,
    vwapDataBTC: 0.9999999999999999,
    shapeshift: true
  }
  """
  @spec front :: List.t()
  def front do
    {:ok, response} = CoincapIo.get("/front")
    response.body
  end

end
