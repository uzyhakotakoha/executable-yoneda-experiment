{-# OPTIONS --cubical --safe #-}

module OGS.Core where

open import Cubical.Foundations.Prelude

Rep : ∀ {ℓ} → Type ℓ → Type (ℓsuc ℓ)
Rep A = (X : Type ℓ) → (A → X) → X

reconstruct : ∀ {ℓ} {A : Type ℓ} → Rep A → A
reconstruct F = F _ idfun

embed : ∀ {ℓ} {A : Type ℓ} → A → Rep A
embed a = λ X f → f a

reconstruct-embed : ∀ {ℓ} {A : Type ℓ} (a : A) →
                    reconstruct (embed a) ≡ a
reconstruct-embed a = refl
