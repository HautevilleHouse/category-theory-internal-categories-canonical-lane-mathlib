import HautevilleHouse.CategoryTheoryInternalCategoriesCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace CategoryTheoryInternalCategoriesCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  gateClosed A ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoryTheoryInternalCategoriesCanonicalLaneLean
end HautevilleHouse