import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoricalEmbeddingTheoremsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

structure FreydMitchellEmbeddingPackage where
  abelianCategory : Type u
  moduleCategory : Type v
  embeddingFunctor : abelianCategory → moduleCategory
  exactnessPreserved : Prop
  fullFaithful : Prop
  universalProperty : Prop

structure FreydMitchellEmbeddingEvidence (F : FreydMitchellEmbeddingPackage) where
  exactnessPreservedClosed : F.exactnessPreserved
  fullFaithfulClosed : F.fullFaithful
  universalPropertyClosed : F.universalProperty

def FreydMitchellEmbeddingClosed (F : FreydMitchellEmbeddingPackage) : Prop :=
  F.exactnessPreserved ∧ F.fullFaithful ∧ F.universalProperty

theorem freyd_mitchell_embedding_closed_from_evidence
    (F : FreydMitchellEmbeddingPackage) (E : FreydMitchellEmbeddingEvidence F) :
    FreydMitchellEmbeddingClosed F := by
  exact And.intro E.exactnessPreservedClosed
    (And.intro E.fullFaithfulClosed E.universalPropertyClosed)

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse
