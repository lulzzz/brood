# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :brood,
  influx_database: "brood",
  mongo_host: "localhost",
  mongo_database: "brood",
  mqtt_host: "locahost",
  mqtt_port: 4883,
  http_port: 8181,
  account_collection: "accounts"

config :brood, Brood.DB.InfluxDB,
  host:      "localhost",
  pool:      [ max_overflow: 10, size: 5 ],
  port:      8086,
  scheme:    "http",
  writer:    Instream.Writer.Line

config :satori,
  url: "wss://open-data.api.satori.com/v2",
  app_key: System.get_env("SATORI_APP_KEY"),
  role_secret: System.get_env("SATORI_ROLE_SECRET")

import_config "keys.exs"
