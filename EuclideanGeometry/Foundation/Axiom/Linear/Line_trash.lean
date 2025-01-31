import EuclideanGeometry.Foundation.Axiom.Linear.Line
import EuclideanGeometry.Foundation.Axiom.Linear.Ray_trash

namespace EuclidGeom

variable {P : Type*} [EuclideanPlane P]

theorem pt_flip_collinear {A B O : P} (h : B = pt_flip A O) : Collinear A O B := by
  apply Collinear.perm₁₃₂
  by_cases hne : A = B
  · rw [hne]
    unfold Collinear
    simp
  haveI : PtNe A B := ⟨hne⟩
  apply Line.pt_pt_linear
  sorry

end EuclidGeom
