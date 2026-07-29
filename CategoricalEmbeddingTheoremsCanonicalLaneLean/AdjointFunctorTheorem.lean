import HautevilleHouse.CategoricalEmbeddingTheoremsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

structure AdjointFunctorPackage where
  functorC : Type u → Type v
  homSetIso : Prop
  unitCounit : Prop
  uniqueness : Prop

structure AdjointFunctorEvidence (A : AdjointFunctorPackage) where
  homSetIsoClosed : A.homSetIso
  unitCounitClosed : A.unitCounit
  uniquenessClosed : A.uniqueness

def AdjointFunctorClosed (A : AdjointFunctorPackage) : Prop :=
  A.homSetIso ∧ A.unitCounit ∧ A.uniqueness

theorem adjoint_functor_closed_from_evidence (A : AdjointFunctorPackage) (E : AdjointFunctorEvidence A) : AdjointFunctorClosed A := by
  exact And.intro E.homSetIsoClosed (And.intro E.unitCounitClosed E.uniquenessClosed)

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse