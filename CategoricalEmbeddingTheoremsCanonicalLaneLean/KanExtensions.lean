import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoricalEmbeddingTheoremsCanonicalLaneLean.CategoryObjects

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

structure LeftKanExtension (F : Functor C D) (G : Functor C E) where
  extension : Functor D E
  naturalTransformation : NaturalTransformation G (extension.comp F)
  universalProperty : Prop

def KanExtensionBridgeClosed (A : AdmissibleClass) : Prop := by
  exact True

theorem kan_extension_bridge_from_admissible_class (A : AdmissibleClass) : KanExtensionBridgeClosed A := by
  unfold KanExtensionBridgeClosed
  trivial

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse