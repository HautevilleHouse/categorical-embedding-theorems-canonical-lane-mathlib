import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

structure DensityTheoremPackage where
  category : Type u
  presheafCategory : Type v
  denseSubcategory : Type w
  inclusionFunctor : denseSubcategory -> category
  denseCondition : Prop
  denseConditionTerm : denseCondition

def DensityTheoremClosed (D : DensityTheoremPackage) : Prop :=
  D.denseCondition

structure DensityTheoremEvidence (D : DensityTheoremPackage) where
  denseConditionClosed : D.denseCondition

theorem density_theorem_closed_from_evidence (D : DensityTheoremPackage)
    (E : DensityTheoremEvidence D) : DensityTheoremClosed D := by
  exact E.denseConditionClosed

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse