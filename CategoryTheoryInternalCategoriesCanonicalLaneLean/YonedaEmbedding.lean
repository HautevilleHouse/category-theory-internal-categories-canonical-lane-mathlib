import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

structure YonedaEmbeddingPackage (C : InternalCategoryObject) where
  representableFunctor : Type u → Type v
  naturalTransformation : Type w
  yonedaLemma : Prop
  fullyFaithfulness : Prop

structure YonedaEmbeddingEvidence {C : InternalCategoryObject} (Y : YonedaEmbeddingPackage C) where
  yonedaLemmaClosed : Y.yonedaLemma
  fullyFaithfulnessClosed : Y.fullyFaithfulness

def YonedaEmbeddingClosed {C : InternalCategoryObject} (Y : YonedaEmbeddingPackage C) : Prop :=
  Y.yonedaLemma ∧ Y.fullyFaithfulness

theorem yoneda_embedding_closed_from_evidence {C : InternalCategoryObject} (Y : YonedaEmbeddingPackage C) (E : YonedaEmbeddingEvidence Y) : YonedaEmbeddingClosed Y := by
  exact And.intro E.yonedaLemmaClosed E.fullyFaithfulnessClosed

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse