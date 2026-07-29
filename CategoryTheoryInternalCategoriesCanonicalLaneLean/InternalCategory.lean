import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

structure InternalCategory (C : Type u) [Category C] where
  object : C
  arrow : C
  source : arrow ⟶ object
  target : arrow ⟶ object
  identity : object ⟶ arrow
  composition : arrow ⟶ arrow
  source_identity : source ∘ identity = 𝟙 object := by
    simp
  target_identity : target ∘ identity = 𝟙 object := by
    simp
  source_composition : source ∘ composition = source ∘ π₂ := by
    simp
  target_composition : target ∘ composition = target ∘ π₁ := by
    simp
  associativity : (composition ⊗ 𝟙 arrow) ≫ composition = (𝟙 arrow ⊗ composition) ≫ composition := by
    simp
  unit_left : (identity ⊗ 𝟙 arrow) ≫ composition = 𝟙 arrow := by
    simp
  unit_right : (𝟙 arrow ⊗ identity) ≫ composition = 𝟙 arrow := by
    simp

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse