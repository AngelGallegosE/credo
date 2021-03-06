defmodule Credo.GenConfigTest do
  use Credo.Test.Case

  alias Credo.Test.IntegrationTest

  @moduletag slow: :integration

  test "it should generate a new config" do
    exec = IntegrationTest.run(["gen.config", "tmp/lib/my_first_credo_config.ex"])

    assert exec.cli_options.command == "gen.config"
  end

  test "it should show help on generating a new config" do
    exec = IntegrationTest.run(["gen.config", "--help"])

    assert exec.cli_options.command == "gen.config"
  end
end
