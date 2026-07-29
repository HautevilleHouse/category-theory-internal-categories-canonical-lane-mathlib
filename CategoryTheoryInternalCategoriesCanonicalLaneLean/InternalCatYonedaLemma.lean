import CategoryTheoryInternalCategoriesCanonicalLaneLean.InternalCatAdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

structure YonedaLemmaPackage (C : InternalCategoryObject) where
  presheafCategory : Type
  yonedaEmbedding : C.objectClass → presheafCategory
  yonedaLemma : ∀ (F : presheafCategory) (x : C.objectClass),
    (presheafCategory.arrows (yonedaEmbedding x) F) ≅ F.obj x
  yonedaLemmaNatural : Prop
  yonedaLemmaNaturalClosed : yonedaLemmaNatural

structure YonedaLemmaEvidence (C : InternalCategoryObject) (P : YonedaLemmaPackage C) where
  yonedaLemmaClosed : ∀ (F : P.presheafCategory) (x : C.objectClass),
    (P.presheafCategory.arrows (P.yonedaEmbedding x) F) ≅ F.obj x
  yonedaLemmaNaturalClosed : P.yonedaLemmaNatural

def YonedaLemmaClosed (C : InternalCategoryObject) (P : YonedaLemmaPackage C) : Prop :=
  (∀ (F : P.presheafCategory) (x : C.objectClass),
    (P.presheafCategory.arrows (P.yonedaEmbedding x) F) ≅ F.obj x) ∧
  P.yonedaLemmaNatural

theorem yoneda_lemma_closed_from_evidence (C : InternalCategoryObject)
    (P : YonedaLemmaPackage C) (E : YonedaLemmaEvidence C P) :
    YonedaLemmaClosed C P := by
  exact And.intro E.yonedaLemmaClosed E.yonedaLemmaNaturalClosed

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse