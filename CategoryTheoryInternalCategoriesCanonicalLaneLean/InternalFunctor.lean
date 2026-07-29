import canonicalLaneMathlib.AdmissibleClass
import CategoryTheoryInternalCategoriesCanonicalLaneLean.InternalCategoryDefinitions

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

structure InternalFunctor {C : Type u} [Category.{v} C] (X Y : InternalCategory C) where
  objectMap : X.object ⟶ Y.object
  arrowMap : X.arrow ⟶ Y.arrow
  source_comm : Y.source ∘ arrowMap = objectMap ∘ X.source := by infer_instance
  target_comm : Y.target ∘ arrowMap = objectMap ∘ X.target := by infer_instance
  identity_comm : arrowMap ∘ X.identity = Y.identity ∘ objectMap := by infer_instance
  composition_comm : arrowMap ∘ X.composition = Y.composition ∘ (arrowMap ×[X.object] arrowMap) := by infer_instance

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse