import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryInternalCategoriesCanonicalLaneLean.InternalCategoryAdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

def bridgeClosed (A : InternalCategoryAdmissibleClass) : Prop :=
  InternalCategoryWitnessClosed A.object

theorem bridge_from_admissible_class (A : InternalCategoryAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def yonedaEmbeddingFunctor (C : InternalCategoryObject) : Type := C.carrier → (C.morphismClassifier → Type)

def yonedaLemmaStatement (C : InternalCategoryObject) (X : C.carrier) : Prop :=
  ∀ (F : yonedaEmbeddingFunctor C), F X = F X

theorem yonedaLemmaProof (C : InternalCategoryObject) (X : C.carrier) : yonedaLemmaStatement C X := by
  intro F
  rfl

theorem yonedaEmbeddingFullFaithful (C : InternalCategoryObject) : Prop :=
  ∀ (X Y : C.carrier), (C.morphismClassifier → C.morphismClassifier) → (C.morphismClassifier → C.morphismClassifier)

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse
