(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: snadaras <snadaras@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/04/04 13:24:32 by snadaras          #+#    #+#             *)
(*   Updated: 2018/04/04 13:24:35 by snadaras         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
	let jamie = new People.people "Companion Jamie McCrimmon" in
	let inspector = new Doctor.doctor "inspector Spacetime" 42 jamie in
	print_endline inspector#to_string;
	inspector#talk;
	inspector#travel_in_time 5480 2018;
	inspector#use_sonic_screwdriver



(*
let () =

    let doc = new Doctor.doctor in
    
    doc#travel_in_time 2018 1943;
    doc#talk;
    print_endline doc#to_string;
    doc#use_sonic_screwdriver;
    doc#regenerate;

*)