import game.world4.level7 -- hide
-- incantation for importing ring into framework -- hide
import tactic.ring -- hide
meta def less_leaky.interactive.ring := tactic.interactive.ring -- hide
namespace mynat -- hide
instance : comm_semiring mynat := by structure_helper -- you just levelled up

/- 

# World 4 : Power World

## Level 8 : `add_squared`

[final boss music] 

You see something written on the stone dungeon wall:
```
begin
  rw one_eq_succ_zero,
  repeat {rw pow_succ},
  ...
```

and you can't make out the rest because there's a kind
of thing in the way that will magically disappear
but only when you've beaten the boss.

[editor's note: Actual Lean natural
numbers do have `2`, but I figured now was no time to
introduce it; the first thing you'd do with
it would be change it to `succ(1)` anyway]

-/

/- Theorem
For all naturals $a$ and $b$, we have
$$(a+b)^2=a^2+b^2+2ab.$$
-/
lemma add_squared (a b : mynat) :
  (a + b) ^ (succ(1)) = 
a ^ (succ(1)) + b^(succ(1)) + (succ(1))*a*b :=
begin [less_leaky]
  rw one_eq_succ_zero,
  repeat {rw pow_succ},
  repeat {rw pow_zero},
  ring,






















end

/- 
As the boss lies smouldering, you notice on the dungeon wall that
<a href="https://twitter.com/XenaProject/status/1190453646904958976?s=20/" target="blank">
two more lines of code are now visible under the first two...</a> (Twitter.com)

I just beat this level with 27 rewrites followed by a `refl`. 
Can you do any better? If you beat it then well done. Do you
fancy doing $(a+b)^3$ now? You might want to read 
<a href="https://xenaproject.wordpress.com/2018/06/13/ab3/" target="blank">
this Xena Project blog post</a> before you start though.
-/

/-
The next world is not yet written -- it will be an abstract function world
where several more tactics will be introduced. Coming soon.
-/

end mynat -- hide
