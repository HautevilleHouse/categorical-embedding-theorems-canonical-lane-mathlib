import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

structure CocompleteEmbeddingPackage where
  smallCategory : Type u
  cocompleteCategory : Type v
  embeddingFunctor : smallCategory -> cocompleteCategory
  colimitsConverge : Prop
  fullyFaithful : Prop
  colimitsConvergeTerm : colimitsConverge
  fullyFaithfulTerm : fullyFaithful

def CocompleteEmbeddingClosed (C : CocompleteEmbeddingPackage) : Prop :=
  C.colimitsConverge ∧ C.fullyFaithful

structure CocompleteEmbeddingEvidence (C : CocompleteEmbeddingPackage) where
  colimitsConvergeClosed : C.colimitsConverge
  fullyFaithfulClosed : C.fullyFaithful

theorem cocomplete_embedding_closed_from_evidence (C : CocompleteEmbeddingPackage)
    (E : CocompleteEmbeddingEvidence C) : CocompleteEmbeddingClosed C := by
  exact And.intro E.colimitsConvergeClosed E.fullyFaithfulClosed

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse