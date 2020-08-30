-- DO NOT EDIT THIS FILE!
-- direct edits will be clobbered.
-- 
-- this file is autogenerated!
-- open the parent README.org in emacs and hit   C-c C-v t   to regenerate this file.
abstract Potato = {
flags startcat = Rule ;

cat
  Rule ;        -- The start category
  Party ;       -- "farmer Meng"
  Object ;      -- "a potato"
  Action ;      -- "trade a potato", "be legal"
  Modal ;       -- "may/must/shan't …"
fun
  MkRule
    : Party      -- party
    -> Modal     -- may/must/shant
    -> Action    -- what they may/must/shan't do, e.g. "trade potatoes"
    -> Rule ;    -- "Rule 1: Meng shan't trade a potato."
-- Parties
  MkParty : String -> Party ;  -- Party name can be any string, e.g. "Meng"
  Nobody,                      -- Nobody and Everybody are special Parties
  Everybody
    : Party ;
-- Modals
  May,                      -- "may (plant a potato)"
  Must,                     -- "must (plant a potato)"
  Shant                     -- "shan't (plant a potato)"
   : Modal ;
-- Actions
  Trade,                    -- "trade a potato"
  Plant                     -- "plant a potato"
   : Object -> Action ;

-- Objects
  Potato : Object ;         -- "potato"
  Cabbage : Object ;        -- "cabbage"
}
