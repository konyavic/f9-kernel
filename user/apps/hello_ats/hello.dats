%{

#define main(...) __atsmain(__VA_ARGS__)

int __hello() {
    return main(0, NULL, NULL);
}
%}

extern fun ats_puts (string): int = "ext#ats_puts"

implement main0 () = let
    val _ = ats_puts("hello from ats!\n")
    val _ = (1,2,3)
    in
    end

fun{
a:t@ype
} insertion_sort
(
  A: arrszref (a)
, cmp: (a, a) -> int
) : void = let
  val n = g0uint2int_size_int (A.size)
  fun ins (x: a, i: int):<cloref1> void =
    if i >= 0 then
    (
      if cmp (x, A[i]) < 0
        then (A[i+1] := A[i]; ins (x, i-1)) else A[i+1] := x
      // end of [if]
    ) else A[0] := x // end of [if]
  // end of [ins]
  fun loop (i: int):<cloref1> void =
    if i < n then (ins (A[i], i-1); loop (i+1)) else ()
  // end of [loop]
in
  loop (1)
end // end of [insertion_sort]
