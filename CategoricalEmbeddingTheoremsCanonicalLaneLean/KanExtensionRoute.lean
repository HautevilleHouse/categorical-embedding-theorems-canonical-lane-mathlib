import HautevilleHouse.CategoricalEmbeddingTheoremsCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.CategoricalEmbeddingTheoremsCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.CategoricalEmbeddingTheoremsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

structure KanExtensionObligations where
  pointwiseConstruction : Prop
  uniquenessUpToIsomorphism : Prop
  adjointSituation : Prop
  preservationProperties : Prop

structure KanExtensionEvidence (R : KanExtensionObligations) where
  pointwiseConstructionClosed : R.pointwiseConstruction
  uniquenessUpToIsomorphismClosed : R.uniquenessUpToIsomorphism
  adjointSituationClosed : R.adjointSituation
  preservationPropertiesClosed : R.preservationProperties

def KanExtensionClosed (R : KanExtensionObligations) : Prop :=
  R.pointwiseConstruction ∧ R.uniquenessUpToIsomorphism ∧ R.adjointSituation ∧ R.preservationProperties

theorem kan_extension_closed_from_evidence (R : KanExtensionObligations) (E : KanExtensionEvidence R) : KanExtensionClosed R := by
  exact And.intro E.pointwiseConstructionClosed (And.intro E.uniquenessUpToIsomorphismClosed (And.intro E.adjointSituationClosed E.preservationPropertiesClosed))

structure CategoricalEmbeddingRoute (A : AdmissibleClass) where
  obligations : KanExtensionObligations
  evidence : KanExtensionEvidence obligations
  bridgeClosedFromRoute : bridgeClosed A
  gateClosedFromRoute : gateClosed A

theorem categorical_embedding_route_yields_constrained_closure (A : AdmissibleClass) (R : CategoricalEmbeddingRoute A) : ConstrainedTheoremClosure A := by
  exact And.intro R.bridgeClosedFromRoute R.gateClosedFromRoute

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse