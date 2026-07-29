import canonicalLaneMathlib.AdmissibleClass
import CategoryTheoryInternalCategoriesCanonicalLaneLean.InternalCategoryDefinitions
import CategoryTheoryInternalCategoriesCanonicalLaneLean.InternalFunctor

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

structure InternalNaturalTransformation {C : Type u} [Category.{v} C] {X Y : InternalCategory C} (F G : InternalFunctor X Y) where
  component : X.object ⟶ Y.arrow
  source_comm : Y.source ∘ component = F.objectMap := by infer_instance
  target_comm : Y.target ∘ component = G.objectMap := by infer_instance
  naturality : Y.composition ∘ (G.arrowMap ×[X.object] component) = Y.composition ∘ (component ×[X.object] F.arrowMap) := by infer_instance

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse