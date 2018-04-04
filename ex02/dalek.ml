(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   dalek.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: snadaras <snadaras@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/04/04 13:26:17 by snadaras          #+#    #+#             *)
(*   Updated: 2018/04/04 13:26:20 by snadaras         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class dalek =

    object

        val _name:string =

            let rec randStr i acc =

                if i <= 0 then

                    acc

                else

                    let c = if Random.int 2 = 0 then

                                char_of_int (Random.int 26 + 97)

                            else

                                char_of_int (Random.int 26 + 65)

                    in

                    (randStr (i - 1) acc ^ (String.make 1 c))

            in

            randStr 3 "Dalek"

        val _hp:int = 100

        val _shield:bool = true

        method to_string = "Dalek " ^ _name ^ " has " ^ (string_of_int _hp) ^ " health and shield: " ^ (string_of_bool _shield)

        method talk = print_endline (match (Random.int 4) with

            | 0 -> "Explain! Explain!"

            | 1 -> "Exterminate! Exterminate!"

            | 2 -> "I obey!"

            | 3 -> "You are the Doctor! You are teh enemy of the Daleks!"

            | _ -> "")

        method exterminate (p:People.people) = p#die

        method die = print_endline "Emergency Temporal Shift!"

    end

