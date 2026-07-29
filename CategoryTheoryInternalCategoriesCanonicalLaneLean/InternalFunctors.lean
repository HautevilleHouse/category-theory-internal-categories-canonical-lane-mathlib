import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryInternalCategoriesCanonicalLaneLean.InternalCategoryDefs

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

structure InternalFunctor {C : Type u} [Category.{v} C] (X Y : InternalCategory C) where
  objectMap : X.object ⟶ Y.object
  morphismMap : X.morphism ⟶ Y.morphism
  preserves_source : Y.source ∘ morphismMap = objectMap ∘ X.source
  preserves_target : Y.target ∘ morphismMap = objectMap ∘ X.target
  preserves_identity : morphismMap ∘ X.identity = Y.identity ∘ objectMap
  preserves_composition : morphismMap ∘ X.composition = Y.composition ∘ (pullback.map morphismMap morphismMap (by exact preserves_source) (by exact preserves_target))

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse