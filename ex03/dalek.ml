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
        val _name = Random.self_init (); ("Dalek" ^
        String.make 1 (char_of_int (65 + (Random.int 24 ))) ^
        String.make 1 (char_of_int (97 + (Random.int 24))) ^
        String.make 1 (char_of_int (97 + (Random.int 34 ))))
        val _hp = 100
        val mutable _shield = true

        method to_string = (_name ^ " hp : " ^ string_of_int _hp ^
        " shield : " ^ string_of_bool _shield)

        method talk =
            let arr = [|"Explain! Explain!";
            "Exterminate! Exterminate!";
            "I obey!";
            "You are the Doctor! You are the enemy of the Daleks!"|] in
            Random.self_init ();
            print_endline (arr.(Random.int 4))

        method exterminate (target:People.people) = target#die; _shield <- not _shield

        method die = print_endline "Emergency Temporal Shift!"

    end

