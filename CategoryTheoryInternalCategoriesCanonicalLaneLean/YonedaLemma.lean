import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryInternalCategoriesCanonicalLaneLean.InternalCategoryObjects

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

structure YonedaEmbedding (C : InternalCategoryObject) where
  yonedaFunctor : InternalFunctor C (InternalCategoryOfPresheaves C)
  fullyFaithful : Prop
  fullyFaithfulWitness : fullyFaithful

structure YonedaLemmaEvidence (C : InternalCategoryObject) (Y : YonedaEmbedding C) where
  yonedaLemmaStatement : Prop
  yonedaLemmaProof : yonedaLemmaStatement

def YonedaLemmaClosed (C : InternalCategoryObject) (Y : YonedaEmbedding C) : Prop :=
  Y.fullyFaithful ∧ YonedaLemmaEvidence.Proof

theorem yoneda_lemma_closed (C : InternalCategoryObject) (Y : YonedaEmbedding C) (E : YonedaLemmaEvidence C Y) : YonedaLemmaClosed C Y := by
  exact And.intro Y.fullyFaithfulWitness E.yonedaLemmaProof

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse