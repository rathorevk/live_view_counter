import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :live_view_counter, LiveViewCounterWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "QayruMx6OafPUrsRNJNC6872H0DXSOk7h4kqfzweywIEy932W96HWxorLWyl6DwW",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
