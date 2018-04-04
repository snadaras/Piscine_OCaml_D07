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

        initializer print_endline ("Creation of " ^ name ^ " an instance of people, the frew sidekick" )

        val _name:string = name
        val _hp:int = 100

        method to_string = _name ^ " has " ^ (string_of_int _hp) ^ " hp"
        method talk = print_endline ("I'm " ^ _name ^ "! Do you know the Doctor?")
        method die = print_endline "Aaaargh!"

    end

    
