import canonicalLaneMathlib.AdmissibleClass
import CategoryTheoryInternalCategoriesCanonicalLaneLean.InternalCategoryDefinitions
import CategoryTheoryInternalCategoriesCanonicalLaneLean.InternalFunctor
import CategoryTheoryInternalCategoriesCanonicalLaneLean.InternalNaturalTransformation

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

structure InternalCategoryAdmissibleObject where
  C : Type u
  [cat : Category.{v} C]
  internalCat : InternalCategory C
  internalCatStructure : Prop
  internalCatStructureWitness : internalCatStructure

structure InternalCategoryAdmissibleClass where
  object : InternalCategoryAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : InternalCategoryAdmissibleClass) : Prop := A.object.internalCatStructure

theorem bridge_from_admissible_class (A : InternalCategoryAdmissibleClass) : bridgeClosed A :=
  A.object.internalCatStructureWitness

def gateClosed (A : InternalCategoryAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : InternalCategoryAdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedInternalCategoryClosure (A : InternalCategoryAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_internal_category_closure (A : InternalCategoryAdmissibleClass) : ConstrainedInternalCategoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse