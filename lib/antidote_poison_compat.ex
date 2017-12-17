defimpl Antidote.Encoder, for: [MapSet, HashSet] do
  def encode(collection, opts) do
    Antidote.Encode.list(Enum.to_list(collection), opts)
  end
end

defimpl Antidote.Encoder, for: [Range, Stream] do
  def encode(collection, opts) do
    case Enum.flat_map(collection, &[?,, Antidote.Encode.value(&1, opts)]) do
      [] -> "[]"
      [_ | tail] -> [?[, tail, ?]]
    end
  end
end

defmodule Antidote.CompatAnyEncoder do
  @doc false
  def encode(value, opts) do
    Antidote.Encode.map(Map.from_struct(value), opts)
  end
end
