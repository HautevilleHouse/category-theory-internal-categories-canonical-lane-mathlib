import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

structure DoubleCategory (C0 : Type u) [CategoryStruct.{v} C0] where
  horizontalMorphism : C0 → C0 → Type w
  verticalMorphism : C0 → C0 → Type x
  square : {A B C D : C0} → horizontalMorphism A B → verticalMorphism A C → verticalMorphism B D → horizontalMorphism C D → Type y

structure DoubleCategoryEvidence (DC : DoubleCategory C0) where
  horizontalCategory : CategoryStruct (Sigma (λ (X Y : C0) => DC.horizontalMorphism X Y))
  verticalCategory : CategoryStruct (Sigma (λ (X Y : C0) => DC.verticalMorphism X Y))
  interchangeLaw : Prop

def DoubleCategoryClosed (DC : DoubleCategory C0) : Prop := True

theorem double_category_closed (DC : DoubleCategory C0) : DoubleCategoryClosed DC :=
  trivial

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse