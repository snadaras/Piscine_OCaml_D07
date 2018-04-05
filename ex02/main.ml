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


let main () =
    Random.self_init ();

    let sidekick = new People.people "Jamie McCrimmon" in
        let doctor = new Doctor.doctor "aka the doctor warrior" 42 sidekick in
            print_endline (sidekick#to_string);
            sidekick#talk;
            sidekick#die;
            print_endline (doctor#to_string);
            doctor#talk;
            doctor#travel_in_time 2018 3142;  
            doctor#use_sonic_screwdriver;
            let dalek = new Dalek.dalek in
                print_endline (dalek#to_string);
                dalek#talk;
                dalek#exterminate sidekick;
                print_endline (dalek#to_string);
                dalek#die

let () = main ()