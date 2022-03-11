type colors =
  | RED
  | GREEN
  | YELLOW
let print_string colors text =
  match colors with
  | RED -> Core.printf "\027[31m %s \n" text
  | GREEN -> Core.printf "\027[32m %s \n" text
  | YELLOW -> Core.printf "\027[33m %s \n" text
