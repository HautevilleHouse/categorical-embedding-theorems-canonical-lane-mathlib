import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

structure DualAdjunctionEmbeddingPackage where
  categoryC : Type u
  dualCategory : Type v
  adjunction : Prop
  fullyFaithfulUnit : Prop
  fullyFaithfulCounit : Prop
  adjunctionClosed : adjunction
  fullyFaithfulUnitClosed : fullyFaithfulUnit
  fullyFaithfulCounitClosed : fullyFaithfulCounit

structure DualAdjunctionEmbeddingEvidence
    (D : DualAdjunctionEmbeddingPackage) where
  adjunctionClosed : D.adjunction
  fullyFaithfulUnitClosed : D.fullyFaithfulUnit
  fullyFaithfulCounitClosed : D.fullyFaithfulCounit

def DualAdjunctionEmbeddingClosed
    (D : DualAdjunctionEmbeddingPackage) : Prop :=
  D.adjunction ∧ D.fullyFaithfulUnit ∧ D.fullyFaithfulCounit

theorem dual_adjunction_embedding_closed_from_evidence
    (D : DualAdjunctionEmbeddingPackage)
    (E : DualAdjunctionEmbeddingEvidence D) :
    DualAdjunctionEmbeddingClosed D := by
  exact And.intro E.adjunctionClosed
    (And.intro E.fullyFaithfulUnitClosed E.fullyFaithfulCounitClosed)

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse
