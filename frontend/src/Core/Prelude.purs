module Core.Prelude
  ( module Prelude
  , class_
  , style
  ) where

import Prelude

import Halogen.HTML as HH
import Halogen.HTML.Properties as HP

class_ :: forall r i. String -> HP.IProp ("class" :: String | r) i
class_ = HP.class_ <<< HH.ClassName

style :: forall r i. String -> HP.IProp ("style" :: String | r) i
style = HP.attr (HH.AttrName "style")
