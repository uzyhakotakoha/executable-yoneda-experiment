{-# OPTIONS --cubical --safe #-}

module OGS.Expr where

open import Cubical.Foundations.Prelude
open import Cubical.Data.Nat

data Expr : Type where
  lit : ℕ → Expr
  _+_ : Expr → Expr → Expr
  _*_ : Expr → Expr → Expr

eval : Expr → ℕ
eval (lit n) = n
eval (e₁ + e₂) = eval e₁ + eval e₂
eval (e₁ * e₂) = eval e₁ * eval e₂
