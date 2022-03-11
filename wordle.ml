open Core

let words = In_channel.read_lines "./words.txt"
let length = List.length words
let random = Random.int length
let word = List.nth_exn words random
let max_tries = 6;;

printf "max words: %d\n" length;;
printf "actual word number: %d\n" random;;
printf "actual word: %s\n" word

(* _ _ _ _ _ *)

let tries : string list = ["abcde"; "edcba"; "aaaaa"]

let print_word word =
  word |> String.iter ~f:(printf "|%c|");
  printf "\n"

let show () =
  print_endline "_______________";
  tries |> List.iter ~f:print_word;
  let tries_length = List.length tries in
  let tries_left = max_tries - tries_length in
  for _ = 0 to tries_left - 1 do
    print_word "_____"
  done;
  print_endline "---------------"
;;

show ();;

Color.print_string Color.RED "blabla";
Color.print_string Color.GREEN "blabla";
Color.print_string Color.YELLOW "blabla"
