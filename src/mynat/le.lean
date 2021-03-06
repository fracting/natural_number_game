import mynat.mul

-- this is one of *three* routes to
-- canonically_ordered_comm_semiring

namespace mynat

def le (a b : mynat) :=  ∃ (c : mynat), b = a + c

-- Third choices: 
-- | le 0 _
-- | le (succ a) (succ b) = le ab 

-- notation
instance : has_le mynat := ⟨mynat.le⟩

@[leakage] theorem le_def' : mynat.le = (≤) := rfl

theorem le_def (a b : mynat) : a ≤ b ↔ ∃ (c : mynat), b = a + c := iff.rfl

end mynat