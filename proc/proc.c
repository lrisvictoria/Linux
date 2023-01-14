#include "proc.h"
#include <string.h>
#include <unistd.h>

#define SIZE 102 // 数组大小
#define STYLE '='
#define FLAG '>'

void process()
{
    const char* str = "|/-\\";
    char bar[SIZE];
    memset(bar, '\0', sizeof(bar));
    int i = 0;
    while (i <= 100) {
      // printf("[%-100s][%d%%][%c]\r", bar, i, str[i % 4]); // 格式控制
      printf("\033[41;34m[%-100s\033[0m][%d%%][%c]\r", bar, i, str[i % 4]); // 格式控制
      fflush(stdout); // 刷新
      bar[i++] = STYLE; // 填充数据
      if (i != 100) {
          bar[i] = FLAG; // 如果不是最后一次则显示 >
      } 
      usleep(100000); // 休眠
    }
    printf("\n");
}
