defmodule ElixirStudiesGithubTest do
  use ExUnit.Case
  doctest ElixirStudiesGithub

  test "greets the world" do
    assert ElixirStudiesGithub.hello() == :world
  end
end
