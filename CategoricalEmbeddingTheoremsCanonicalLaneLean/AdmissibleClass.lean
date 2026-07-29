import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

structure AdmissibleClass where
  object : EmbeddingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EmbeddingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse
