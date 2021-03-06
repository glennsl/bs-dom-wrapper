
module Visibility_state = struct
  type t =
    Visible
  | Hidden
  | Prerender
  | Unloaded

  let to_string = function
    | Visible -> "visible"
    | Hidden -> "hidden"
    | Prerender -> "prerender"
    | Unloaded -> "unloaded"

  let of_string = function
    | "visible" -> Visible
    | "hidden" -> Hidden
    | "prerender" -> Prerender
    | "unloaded" -> Unloaded
    | _ -> failwith "Unknown visibilityState"

end

module Design_mode = struct
  type t =
    On
  | Off
  | Inherit

  let to_string = function
    | On -> "on"
    | Off -> "off"
    | Inherit -> "inherit"

  let of_string = function
    | "on" -> On
    | "off" -> Off
    | "inherit" -> Inherit
    | _ -> failwith "Unknown designMode"

end

module Dir = struct
  type t =
    Rtl
  | Ltr

  let to_string = function
    | Rtl -> "rtl"
    | Ltr -> "ltr"

  let of_string = function
    | "rtl" -> Rtl
    | "ltr" -> Ltr
    | _ -> failwith "Unknown dir"

end

module Ready_state = struct
  type t =
    Loading
  | Interactive
  | Complete

  let to_string = function
    | Loading -> "loading"
    | Interactive -> "interactive"
    | Complete -> "complete"

  let of_string = function
    | "loading" -> Loading
    | "interactive" -> Interactive
    | "complete" -> Complete
    | _ -> failwith "Unknown dir"

end
