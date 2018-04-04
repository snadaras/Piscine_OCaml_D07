(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   doctor.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: snadaras <snadaras@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/04/04 13:25:38 by snadaras          #+#    #+#             *)
(*   Updated: 2018/04/04 18:39:09 by snadaras         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)


class doctor name age sidekick =

    object (self)

        initializer print_endline ("Amazing event : the Doctor is here, from now & for undetermined time!\n")

        val _name:string = name
        val mutable _age:int = age
        val _sidekick:People.people = sidekick
        val mutable _hp:int = 100

        method to_string = "Doctor " ^ _name ^ " aged " ^ (string_of_int _age) 
        ^ " with sidekick " ^ _sidekick#to_string
        method talk = print_endline ("\nHi! I'm the Doctor!")
        method travel_in_time (start:int) (arrival:int) =
        _age <- age;
        print_endline 
        (
        "              _
                      (~)
                     (@@@)
            _________|___|_________
           | || || || ||| || || || |
         |---------------------------|
         |   POLICE PUBLIC CALL BOX  |
         |~~~~~~~~~~~~~~~~~~~~~~~~~~~|
           || -------  |  ------- ||
           || ||###||  |  ||###|| ||
           || ||###||  |  ||###|| ||
           || ||###||  |  ||###|| ||
           || _______  |  _______ ||
           ||  -----   |   -----  ||
           || || m ||  |  || - || ||
           || || w ||  |  ||   || ||
           || || W ||  |  || - || ||
           || _______  |{}  ----  ||
           ||  -----   |   -----  ||
           || || - ||  |  || - || ||
           || ||   ||  |  ||   || ||
           || || _ ||  |  || _ || ||
           || _______  |  ______  ||
           ||  -----   |   -----  ||
           || || _ ||  |  || _ || ||
           || ||   ||  |  ||   || ||
           || || _ ||  |  || _ || ||
           ||  -----   |   -----  ||
          _|___________|___________|_
         |~~~~~~~~~~~~~~~~~~~~~~~~~~~|
         |---------------------------|
         \n\n"
        ^ ">>>> The Tardis travels from " ^ string_of_int start ^ " to " ^ string_of_int arrival ^ "..! <<<<<\n")

        method use_sonic_screwdriver = print_endline "Whiiiwhiiiwhiii Whiiiwhiiiwhiii Whiiiwhiiiwhii"

        method private regenerate = _hp <- 100

    end

