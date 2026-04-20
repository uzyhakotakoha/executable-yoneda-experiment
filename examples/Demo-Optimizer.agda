{-# OPTIONS --cubical #-}

module Demo.Optimizer where

open import OGS.Expr
open import OGS.Optimizer

-- Simple test
test-optimize : eval (optimize ((lit 5 + lit 0) * lit 1)) ≡ 5
test-optimize = refl

-- Another test
test-zero : eval (optimize (lit 0 + lit 7)) ≡ 7
test-zero = refl
