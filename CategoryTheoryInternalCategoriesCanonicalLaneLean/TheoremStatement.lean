import HautevilleHouse.CategoryTheoryInternalCategoriesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

structure AdmittedObject where
  internalCategory : Type u
  internalCategoryStructure : Prop
  internalFunctor : Type v
  internalNaturalTransformation : Type w
  yonedaLemmaHolds : Prop
  conclusion : yonedaLemmaHolds

def AdmittedObjectClosed (O : AdmittedObject) : Prop :=
  O.yonedaLemmaHolds

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse