#include <nds.h>

int main(void) {
    consoleDemoInit();  // Hiển thị console trên DS

        iprintf("Hello from ArrasDS!");

            while (1) {
                    swiWaitForVBlank();  // Chờ frame tiếp theo
                        }

                            return 0;
                            }