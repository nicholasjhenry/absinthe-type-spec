defmodule AbsintheTypeSpec do
  def call do
    Elixir.Absinthe.Resolution.Helpers.batch({__MODULE__, :batch_function}, 1, fn batch_results ->
      {:ok, batch_results}
    end)
  end

  defp batch_function do
    :testing
  end
end
