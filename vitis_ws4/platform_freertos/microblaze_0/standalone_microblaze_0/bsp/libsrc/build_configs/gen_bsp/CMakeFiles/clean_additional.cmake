# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/raid/work/hyperbus_controller_freertos_port/vitis_ws4/platform_freertos/microblaze_0/standalone_microblaze_0/bsp/include/sleep.h"
  "/raid/work/hyperbus_controller_freertos_port/vitis_ws4/platform_freertos/microblaze_0/standalone_microblaze_0/bsp/include/xiltimer.h"
  "/raid/work/hyperbus_controller_freertos_port/vitis_ws4/platform_freertos/microblaze_0/standalone_microblaze_0/bsp/include/xtimer_config.h"
  "/raid/work/hyperbus_controller_freertos_port/vitis_ws4/platform_freertos/microblaze_0/standalone_microblaze_0/bsp/lib/libxiltimer.a"
  )
endif()
