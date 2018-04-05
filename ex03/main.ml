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
    let human = new People.people "Jamie McCrimmon" in
    let human_lst = [new People.people "human1"; new People.people "human2"; new People.people "human3"] in
    let doctor_lst = [new Doctor.doctor "Who1" 521 human; new Doctor.doctor "Who2" 1042 human] in
    let dalek_lst = [new Dalek.dalek; new Dalek.dalek; new Dalek.dalek] in
    let army = new Army.army human_lst in
    let army2 = new Army.army doctor_lst in
    let army3 = new Army.army dalek_lst in
    army#print_army;
    print_endline "\nadd a new warrior to army : \n";
    army#add (new People.people "human4");
    army#print_army;
    print_endline "\ndelete one warrior from army : \n";
    army#delete;
    army#print_army;
    print_endline "\nThe Doc Who army : \n";
    army2#print_army;
    print_endline "\nThe dalek army : \n";
    army3#print_army;
    army3#delete;
    army3#delete;
    army3#delete;

    print_endline "\nThe rest of dalek army after total destruction: \n";
    army3#print_army;