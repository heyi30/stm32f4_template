#include "cmsis_os.h"
#include "AttitudeTask.h"

void AttitudeTask(void const *unused) {
  for (;;) {
    osDelay(1);
  }
}