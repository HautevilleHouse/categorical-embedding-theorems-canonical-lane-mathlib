import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoricalEmbeddingTheoremsCanonicalLaneLean.EmbeddingCategory

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

structure MitchellEmbeddingPackage where
  smallAbelianCategory : Type u
  moduleCategory : Type v
  embeddingFunctor : smallAbelianCategory → moduleCategory
  exactnessPreserved : Prop
  fullFaithfulness : Prop
  mitchellTheoremApplied : Prop

structure MitchellEmbeddingEvidence (M : MitchellEmbeddingPackage) where
  exactnessPreservedClosed : M.exactnessPreserved
  fullFaithfulnessClosed : M.fullFaithfulness
  mitchellTheoremAppliedClosed : M.mitchellTheoremApplied

def MitchellEmbeddingClosed (M : MitchellEmbeddingPackage) : Prop :=
  M.exactnessPreserved ∧ M.fullFaithfulness ∧ M.mitchellTheoremApplied

theorem mitchell_embedding_closed_from_evidence (M : MitchellEmbeddingPackage)
    (Ev : MitchellEmbeddingEvidence M) : MitchellEmbeddingClosed M := by
  exact And.intro Ev.exactnessPreservedClosed (And.intro Ev.fullFaithfulnessClosed Ev.mitchellTheoremAppliedClosed)

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse
