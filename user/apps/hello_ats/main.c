#include <platform/link.h>
#include <user_runtime.h>
#include <l4/ipc.h>

#include <l4io.h>

int __hello(void);

void hello_hello(void) {
    printf("hello from ats!\n");
}

static void __USER_TEXT __hello_ats(user_struct *user)
{
    __hello();
}

DECLARE_USER(
	0,
	hello_ats,
	__hello_ats,
);
