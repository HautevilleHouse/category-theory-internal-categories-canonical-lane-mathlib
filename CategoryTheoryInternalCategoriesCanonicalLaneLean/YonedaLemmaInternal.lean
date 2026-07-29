import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

structure YonedaLemmaInternal (C : Type u) [Category C] (X : C) where
  internalHom : InternalCategory C
  yonedaEmbedding : InternalFunctor (internalHom) (internalHom)
  isomorphism : Prop
  isomorphismTerm : isomorphism

def YonedaInternalClosure (Y : YonedaLemmaInternal C X) : Prop :=
  Y.isomorphism

theorem yoneda_internal_closed (Y : YonedaLemmaInternal C X) : YonedaInternalClosure Y :=
  Y.isomorphismTerm

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse