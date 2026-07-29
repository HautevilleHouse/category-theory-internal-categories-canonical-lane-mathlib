import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

structure InternalCategoryObject where
  carrier : Type
  categoryStructure : Prop
  pullbacksExist : Prop
  internalFunctor : Prop
  internalNaturalTransformation : Prop
  conclusion : internalFunctor ∧ internalNaturalTransformation

def InternalCategoryWitness (O : InternalCategoryObject) : Prop :=
  O.internalFunctor ∧ O.internalNaturalTransformation

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse