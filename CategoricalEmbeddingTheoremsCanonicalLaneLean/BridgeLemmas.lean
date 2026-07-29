import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EmbeddingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse
