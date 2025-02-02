(* Copyright (C) 2015-2016 Bloomberg Finance L.P.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * In addition to the permissions granted to you by the LGPL, you may combine
 * or link a "work that uses the Library" with a publicly distributed version
 * of this file to produce a combined library or application, then distribute
 * that combined work under the terms of your choosing, with no requirement
 * to comply with the obligations normally placed on you by section 4 of the
 * LGPL version 3 (or the corresponding section of a later version of the LGPL
 * should you choose to use a later version).
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA. *)

(* Will do a topological sort of the tree given [Set_string.t Map_string.t] while ignoring anything not in the given [domain]. Returns a queue of modules topologically sorted. *)
val sort_files_by_dependencies : domain:Set_string.t -> Set_string.t Map_string.t -> string Queue.t

(* Returns a topologically sorted Queue of module names found from the given main module. *)
val simple_collect_from_main :
  ?alias_map:string Hash_string.t ->
  Set_string.t Map_string.t ->
  string -> string Queue.t

(* Returns a list of extra modules which are part of the "otherlibs" stdlib to link in. *)
val get_otherlibs_dependencies : Set_string.t Map_string.t -> string -> string list
