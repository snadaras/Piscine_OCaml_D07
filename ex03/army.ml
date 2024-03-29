(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   army.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: snadaras <snadaras@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/04/04 13:26:59 by snadaras          #+#    #+#             *)
(*   Updated: 2018/04/04 13:27:08 by snadaras         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)


class ['a] army (lst: 'a list) =
object

    val mutable member = lst

    method add (elem: 'a) = member <- member @ [elem]

    method delete =
        try member <- List.tl member with
            | _ -> ()

    method print_army =
        let rec loop lst =
            match lst with
            | head::tail -> print_endline head#to_string; loop tail
            | [] -> ()
        in loop member

end
