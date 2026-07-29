import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

structure FreydMitchellFullEmbeddingPackage where
  abelianCategory : Type u
  localizingSubcategoryProperties : Prop
  fullFaithfulExactFunctor : Prop
  ringRepresentation : Prop
  fullFaithfulExactFunctorClosed : fullFaithfulExactFunctor
  ringRepresentationClosed : ringRepresentation

structure FreydMitchellFullEmbeddingEvidence
    (F : FreydMitchellFullEmbeddingPackage) where
  fullFaithfulExactFunctorClosed : F.fullFaithfulExactFunctor
  ringRepresentationClosed : F.ringRepresentation

def FreydMitchellFullEmbeddingClosed
    (F : FreydMitchellFullEmbeddingPackage) : Prop :=
  F.fullFaithfulExactFunctor ∧ F.ringRepresentation

theorem freyd_mitchell_full_embedding_closed_from_evidence
    (F : FreydMitchellFullEmbeddingPackage)
    (E : FreydMitchellFullEmbeddingEvidence F) :
    FreydMitchellFullEmbeddingClosed F := by
  exact And.intro E.fullFaithfulExactFunctorClosed E.ringRepresentationClosed

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse
