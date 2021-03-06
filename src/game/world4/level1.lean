import game.world3.level9 -- hide
import mynat.pow -- new import
namespace mynat -- hide

-- World name : Power world

/- Axiom : pow_zero (a : mynat) :
a ^ 0 = 1
-/

/- Axiom : pow_succ (a b : mynat) :
a ^ succ(b) = a ^ b * b
-/

/- 

# World 4 : Power World

A new world with seven levels. And a new import!
This import gives you the power to make powers of your
natural numbers. It is defined by recursion, just like addition and multiplication.
Here are the two new axioms:

  * `pow_zero (a : mynat) : a ^ 0 = 1`
  * `pow_succ (a b : mynat) : a ^ succ(b) = a ^ b * b`

The power function has various relations to addition and multiplication.
If you have gone through levels 1-6 of addition world and levels 1-8 of
multiplication world, then the usual tactics `induction`, `rw` and `refl`
should see you through this world. You might want to fiddle with the
drop-down menus on the left so you can see which theorems of Power World
you have proved at any given time. Addition and multiplication -- we
have a solid API for them now, i.e. if you need something about addition
or multiplication, it's probably already in the library we have built.
Collectibles are indication that we are proving the right things.

The levels in this world were designed by Sian Carey, a UROP student
at Imperial in the summer of 2019.

## Level 1  : `zero_pow_zero`
-/

/- Lemma
$0 ^ 0 = 1$.
-/
lemma zero_pow_zero : (0 : mynat) ^ (0 : mynat) = 1 :=
begin [less_leaky]
  rw pow_zero,
  refl,


end

end mynat -- hide
