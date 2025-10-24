#!/usr/bin/env bats

@test "install command fails if the input is not version number" {
  run asdf install aria2 ref
  [ "$status" -eq 1 ]
  [[ "$output" =~ "supports release installs only" ]]
}
