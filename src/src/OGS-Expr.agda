{-# OPTIONS --cubical --safe #-}

module OGS.Optimizer where

open import Cubical.Foundations.Prelude
open import Cubical.Data.Nat
open import OGS.Expr

optimize : Expr → Expr
optimize (e + lit 0)       = optimize e
optimize (lit 0 + e)       = optimize e
optimize (e * lit 1)       = optimize e
optimize (lit 1 * e)       = optimize e
optimize (e * lit 0)       = lit 0
optimize (lit 0 * e)       = lit 0
optimize (e₁ + e₂)         = optimize e₁ + optimize e₂
optimize (e₁ * e₂)         = optimize e₁ * optimize e₂
optimize e                 = e

-- Heuristic / partial correctness (demonstration only)
opt-correct : (e : Expr) → eval (optimize e) ≡ eval e
opt-correct (lit n)        = refl
opt-correct (e + lit 0)    = opt-correct e
opt-correct (lit 0 + e)    = opt-correct e
opt-correct (e * lit 1)    = opt-correct e
opt-correct (lit 1 * e)    = opt-correct e
opt-correct (e * lit 0)    = refl
opt-correct (lit 0 * e)    = refl
opt-correct (e₁ + e₂)      = cong₂ _+_ (opt-correct e₁) (opt-correct e₂)
opt-correct (e₁ * e₂)      = cong₂ _*_ (opt-correct e₁) (opt-correct e₂)
opt-correct e              = refl
