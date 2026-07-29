import HautevilleHouse.CategoricalEmbeddingTheoremsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

structure SiteFoundationalInhabitants where
  coveringFamilies : Prop
  sheafCondition : Prop
  representability : Prop
  coveringFamiliesTerm : coveringFamilies
  sheafConditionTerm : sheafCondition
  representabilityTerm : representability

structure SheafFoundationalInhabitants where
  descent : Prop
  amalgamation : Prop
  uniqueness : Prop
  descentTerm : descent
  amalgamationTerm : amalgamation
  uniquenessTerm : uniqueness

structure SiteAndSheafFoundationalInhabitants where
  site : SiteFoundationalInhabitants
  sheaf : SheafFoundationalInhabitants

def SiteAndSheafFoundationalInhabitants.toAdmissibleClass (S : SiteAndSheafFoundationalInhabitants) : AdmissibleClass := {
  object := ()
  endpointSatisfied := S.site.representability
  remainderRecorded := S.sheaf.descent
  gateWitness := Or.inl S.site.representabilityTerm
}

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse