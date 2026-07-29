import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

structure InternalCategory (C : Type u) [Category.{v} C] where
  object : C
  arrow : C
  source : arrow ⟶ object
  target : arrow ⟶ object
  identity : object ⟶ arrow
  composition : arrow ×[object] arrow ⟶ arrow
  source_identity : source ∘ identity = 𝟙 object := by infer_instance
  target_identity : target ∘ identity = 𝟙 object := by infer_instance
  source_composition : source ∘ composition = source ∘ π₁ := by infer_instance
  target_composition : target ∘ composition = target ∘ π₂ := by infer_instance
  associativity : composition ∘ (composition ×[object] 𝟙 arrow) = composition ∘ (𝟙 arrow ×[object] composition) := by infer_instance
  unit_left : composition ∘ (identity ×[object] 𝟙 arrow) = π₂ := by infer_instance
  unit_right : composition ∘ (𝟙 arrow ×[object] identity) = π₁ := by infer_instance

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse