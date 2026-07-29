import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryInternalCategoriesCanonicalLaneLean.InternalCategoryObjects

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

structure KanExtension (C D E : InternalCategoryObject) (F : InternalFunctor C E) (K : InternalFunctor C D) where
  extension : InternalFunctor D E
  universalProperty : Prop
  universalPropertyWitness : universalProperty

def KanExtensionClosed (C D E : InternalCategoryObject) (F : InternalFunctor C E) (K : InternalFunctor C D) (Ke : KanExtension C D E F K) : Prop :=
  Ke.universalProperty

theorem kan_extension_closed (C D E : InternalCategoryObject) (F : InternalFunctor C E) (K : InternalFunctor C D) (Ke : KanExtension C D E F K) : KanExtensionClosed C D E F K Ke := by
  exact Ke.universalPropertyWitness

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse