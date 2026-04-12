# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/raid/work/ghl_ip/hyperbus_ai3/vitis_ws4/platform/microblaze_0/standalone_microblaze_0/bsp/include/sleep.h"
  "/raid/work/ghl_ip/hyperbus_ai3/vitis_ws4/platform/microblaze_0/standalone_microblaze_0/bsp/include/xiltimer.h"
  "/raid/work/ghl_ip/hyperbus_ai3/vitis_ws4/platform/microblaze_0/standalone_microblaze_0/bsp/include/xtimer_config.h"
  "/raid/work/ghl_ip/hyperbus_ai3/vitis_ws4/platform/microblaze_0/standalone_microblaze_0/bsp/lib/libxiltimer.a"
  )
endif()
