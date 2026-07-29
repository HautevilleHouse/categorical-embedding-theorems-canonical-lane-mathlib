import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalEmbeddingTheoremsCanonicalLaneLean

structure LintonTheoremPackage where
  variety : Type u
  setCategory : Type v
  forgetfulFunctor : variety -> setCategory
  algebraicStructurePreserved : Prop
  monadicity : Prop
  algebraicTerm : algebraicStructurePreserved
  monadicityTerm : monadicity

def LintonTheoremClosed (L : LintonTheoremPackage) : Prop :=
  L.algebraicStructurePreserved ∧ L.monadicity

structure LintonTheoremEvidence (L : LintonTheoremPackage) where
  algebraicStructurePreservedClosed : L.algebraicStructurePreserved
  monadicityClosed : L.monadicity

theorem linton_theorem_closed_from_evidence (L : LintonTheoremPackage)
    (E : LintonTheoremEvidence L) : LintonTheoremClosed L := by
  exact And.intro E.algebraicStructurePreservedClosed E.monadicityClosed

end CategoricalEmbeddingTheoremsCanonicalLaneLean
end HautevilleHouse