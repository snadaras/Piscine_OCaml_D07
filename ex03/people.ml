(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   people.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: snadaras <snadaras@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/04/04 13:24:15 by snadaras          #+#    #+#             *)
(*   Updated: 2018/04/04 13:24:21 by snadaras         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)


class people name =
    object
        val name:string = name
        val mutable hp:int = 100
        
        initializer print_endline "A new people is linked to the amazing dr Who !"

        method to_string = "name : " ^ name ^ ", hp : " ^ (string_of_int hp)

        method talk = print_endline ("I'm " ^ name ^ "! Do you know the Doctor?")

        method die = print_endline "Aaaarghh!"; hp <- 0

    end
