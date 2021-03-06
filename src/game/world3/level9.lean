import game.world3.level8 -- hide
import mynat.mul -- hide
namespace mynat -- hide

/-
# Multiplication World

## Level 9: `succ_mul`

You are equipped with

* `mul_assoc (a b c : mynat) : (a * b) * c = a * (b * c)`
* `mul_comm (a b : mynat) : a * b = b * a`

Re-read the docs for `rw` so you know all the tricks.
You can see them in the "tactics" drop-down menu on the left.


-/




/- Lemma
For all natural numbers $a$ $b$ and $c$, we have
$$a(bc)=b(ac)$$
-/
lemma mul_left_comm (a b c : mynat) : a * (b * c) = b * (a * c) :=
begin [less_leaky]
  rw ←mul_assoc,
  rw mul_comm a, 
  rw mul_assoc,
  refl,



end

/-
And now I whisper a magic incantation
-/
attribute [simp] mul_assoc mul_comm mul_left_comm
/-
and all of a sudden Lean can automatically do levels which are
very boring for a human, for example
-/
example (a b c d e : mynat) :
(((a*b)*c)*d)*e=(c*((b*e)*a))*d :=
begin
  simp,
end 

/-
Coming soon -- advanced multiplication world! But until then, 
feel free to move on to world 4, power world, with the `next world` button.
-/

end mynat -- hide
