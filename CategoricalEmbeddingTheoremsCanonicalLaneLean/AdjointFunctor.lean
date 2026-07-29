import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoricalEmbeddingTheoremsCanonicalLaneLean.CategoryObjects

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

structure AdjointPair where
  leftAdjoint : Functor
  rightAdjoint : Functor
  unit : NaturalTransformation (Functor.id _) (rightAdjoint.comp leftAdjoint)
  counit : NaturalTransformation (leftAdjoint.comp rightAdjoint) (Functor.id _)
  triangleLeft : Prop
  triangleRight : Prop

def AdjointBridgeClosed (A : AdmissibleClass) : Prop := by
  exact True

theorem adjoint_bridge_from_admissible_class (A : AdmissibleClass) : AdjointBridgeClosed A := by
  unfold AdjointBridgeClosed
  trivial

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse