%{

#define main(...) __atsmain(__VA_ARGS__)

int __hello() {
    return main(0, NULL, NULL);
}
%}

extern fun hello_hello (): () = "ext#hello_hello"

implement main0 () = let
    val _ = hello_hello ()
    val _ = hello_hello ()
    val _ = hello_hello ()
    in
    end
