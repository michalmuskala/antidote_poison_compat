# AntidotePoisonCompat

Package providing compatibility for the `Antidote` JSON library with Poison.

Included features are:

  * Encoder implementations for `MapSet`, `HashSet`, `Stream` and `Range`
  * A compatibility encoder for all structs encoding them as maps omitting the `__struct__` key.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `antidote_poison_compat` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:antidote_poison_compat, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/antidote_poison_compat](https://hexdocs.pm/antidote_poison_compat).
