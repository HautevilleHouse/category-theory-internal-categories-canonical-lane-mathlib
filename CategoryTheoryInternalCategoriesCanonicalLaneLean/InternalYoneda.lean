import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

structure InternalYonedaLemmaStatement (C : InternalCategoryObject) where
  presheafType : Type u
  yonedaEmbedding : Type v
  fullFaithfulness : Prop
  bijectionOnHoms : Prop
  yonedaCoherence : Prop

structure InternalYonedaEvidence (C : InternalCategoryObject) (Y : InternalYonedaLemmaStatement C) where
  fullFaithfulnessClosed : Y.fullFaithfulness
  bijectionOnHomsClosed : Y.bijectionOnHoms
  yonedaCoherenceClosed : Y.yonedaCoherence

def InternalYonedaClosed (C : InternalCategoryObject) (Y : InternalYonedaLemmaStatement C) : Prop :=
  Y.fullFaithfulness ∧ Y.bijectionOnHoms ∧ Y.yonedaCoherence

theorem internal_yoneda_closed_from_evidence (C : InternalCategoryObject) (Y : InternalYonedaLemmaStatement C)
    (E : InternalYonedaEvidence C Y) : InternalYonedaClosed C Y := by
  exact And.intro E.fullFaithfulnessClosed
    (And.intro E.bijectionOnHomsClosed E.yonedaCoherenceClosed)

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse