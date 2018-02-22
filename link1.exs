defmodule Link1 do
  import :timer, only: [ sleep: 1 ]

  def ssd_function do
    sleep 500
    exit(:boom)
  end
  def run do
    spawn(Link1, :sad_function, [])
    receive do
      msg ->
      IO.puts "MSG RECEIVED: #{inspect msg}"
    after 1000 ->
      IO.puts "normal"
  end
end

Link.run

