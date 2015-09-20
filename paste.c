#include "stdio.h"
#include <windows.h>
int main(){
    OpenClipboard(NULL);
    HANDLE clip = GetClipboardData(CF_TEXT);
    if(clip)
        printf("%s",clip);
    CloseClipboard();
    return 0;
}
