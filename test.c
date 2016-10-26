#include <stdio.h>
#include <sys/ptrace.h>
#include <unistd.h>
#include <errno.h>

int main() {  
    long ret = ptrace(PTRACE_TRACEME, 0, NULL, NULL);
    printf("%d %d: EBUSY:%d EFAULT:%d EINVAL:%d EIO:%d EPERM:%d ESRCH:%d\n",ret,errno,EBUSY,EFAULT,EINVAL,EIO,EPERM,ESRCH);

    return 0;
}

