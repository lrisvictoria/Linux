#include <stdio.h>

#define FOO // #define 后定义内容可为空
#define MAX 100

int main()
{
    int max = MAX;
    printf("%d\n", MAX);

    printf("hello PRINT %d\n", MAX);
    printf("hello PRINT %d\n", MAX);
    printf("hello PRINT %d\n", MAX);
    printf("hello PRINT %d\n", MAX);
    printf("hello PRINT %d\n", MAX);
    printf("hello PRINT %d\n", MAX);
    
#ifdef FOO 
    printf("yes");
#else 
    printf("no");
#endif
  
    return 0;
}
