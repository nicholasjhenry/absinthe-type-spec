# AbsintheTypeSpec

An example application to demonstrate a typespec issue with `Elixir.Absinthe.Resolution.Helpers.batch/3`.

After cloning the repo do the following to demonstrate the issue:

    mix do deps.get, deps.compile
    mix dialyzer

You should see the following warning:

    absinthe_type_spec.ex:2: Function call/0 has no local return
    absinthe_type_spec.ex:3: The call 'Elixir.Absinthe.Resolution.Helpers':batch({'Elixir.AbsintheTypeSpec', 'batch_function'},1,fun((_) -> {'ok',_})) will ne
    ver return since the success typing is ({_,'atom'} | {_,'atom',_},any(),fun((_) -> {'error',binary() | [{_,_}] | map()} | {'ok',_} | {'plugin',atom(),_}))
     -> {'plugin','Elixir.Absinthe.Resolution.Plugin.Batch',{_,_,_,_}} and the contract is ('Elixir.Absinthe.Resolution.Plugin.Batch':batch_fun(),term(),'Elix
    ir.Absinthe.Resolution.Plugin.Batch':post_batch_fun()) -> {'plugin','Elixir.Absinthe.Resolution.Plugin.Batch',term()}
