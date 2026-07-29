import HautevilleHouse.CategoricalEmbeddingTheoremsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

structure GabrielUlmerPackage where
  localPresentableCategory : Prop
  compactObjects : Prop
  indCompletion : Prop
  dualityPairing : Prop
  closureUnderLimits : Prop

structure GabrielUlmerEvidence (G : GabrielUlmerPackage) where
  localPresentableCategoryClosed : G.localPresentableCategory
  compactObjectsClosed : G.compactObjects
  indCompletionClosed : G.indCompletion
  dualityPairingClosed : G.dualityPairing
  closureUnderLimitsClosed : G.closureUnderLimits

def GabrielUlmerClosed (G : GabrielUlmerPackage) : Prop :=
  G.localPresentableCategory ∧ G.compactObjects ∧ G.indCompletion ∧ G.dualityPairing ∧ G.closureUnderLimits

theorem gabriel_ulmer_closed_from_evidence (G : GabrielUlmerPackage) (E : GabrielUlmerEvidence G) : GabrielUlmerClosed G := by
  exact And.intro E.localPresentableCategoryClosed (And.intro E.compactObjectsClosed (And.intro E.indCompletionClosed (And.intro E.dualityPairingClosed E.closureUnderLimitsClosed)))

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse