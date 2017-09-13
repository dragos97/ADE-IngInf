{-# LANGUAGE OverloadedStrings #-}


module Tema1 where


import Text.LaTeX
import Text.LaTeX.Base.Class

-------------------------------------------------------------------------------

template :: Monad m => LaTeXT m () -> LaTeXT m () -> LaTeXT m ()
template titulo cuerpo = do
  documentclass [] article
  author "Ramiro Pastor"
  title titulo
  document $ do
    maketitle
    cuerpo

