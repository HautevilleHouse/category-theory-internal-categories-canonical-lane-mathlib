import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

structure InternalCategory (C : Type u) [CategoryStruct.{v} C] where
  object : C
  morphism : C
  source : morphism ⟶ object
  target : morphism ⟶ object
  identity : object ⟶ morphism
  composition : (pullback source target) ⟶ morphism

structure InternalCategoryEvidence (C : Type u) [CategoryStruct.{v} C] (IC : InternalCategory C) where
  sourceTargetCompatible : IC.source ≫ IC.target = IC.source
  identitySatisfiesSourceTarget : IC.identity ≫ IC.source = 𝟙 IC.object ∧ IC.identity ≫ IC.target = 𝟙 IC.object
  associativity : Prop
  unitLaws : Prop

def InternalCategoryClosed (C : Type u) [CategoryStruct.{v} C] (IC : InternalCategory C) : Prop :=
  IC.source ≫ IC.target = IC.source ∧
  (IC.identity ≫ IC.source = 𝟙 IC.object ∧ IC.identity ≫ IC.target = 𝟙 IC.object)

theorem internal_category_closed_from_evidence (C : Type u) [CategoryStruct.{v} C] (IC : InternalCategory C) (E : InternalCategoryEvidence C IC) : InternalCategoryClosed C IC :=
  And.intro E.sourceTargetCompatible E.identitySatisfiesSourceTarget

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse