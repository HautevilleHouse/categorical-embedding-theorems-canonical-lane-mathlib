import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoricalEmbeddingTheoremsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

structure GrothendieckToposEmbeddingPackage where
  topos : Type u
  presheafCategory : Type v
  embeddingFunctor : topos → presheafCategory
  leftExactReflection : Prop
  coversReflected : Prop
  geometricMorphism : Prop

structure GrothendieckToposEmbeddingEvidence (G : GrothendieckToposEmbeddingPackage) where
  leftExactReflectionClosed : G.leftExactReflection
  coversReflectedClosed : G.coversReflected
  geometricMorphismClosed : G.geometricMorphism

def GrothendieckToposEmbeddingClosed (G : GrothendieckToposEmbeddingPackage) : Prop :=
  G.leftExactReflection ∧ G.coversReflected ∧ G.geometricMorphism

theorem grothendieck_topos_embedding_closed_from_evidence
    (G : GrothendieckToposEmbeddingPackage) (E : GrothendieckToposEmbeddingEvidence G) :
    GrothendieckToposEmbeddingClosed G := by
  exact And.intro E.leftExactReflectionClosed
    (And.intro E.coversReflectedClosed E.geometricMorphismClosed)

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse
