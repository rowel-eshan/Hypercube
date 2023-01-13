################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\cores\esp8266\umm_malloc\umm_malloc.cpp 

C_SRCS += \
C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\cores\esp8266\umm_malloc\umm_info.c \
C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\cores\esp8266\umm_malloc\umm_integrity.c \
C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\cores\esp8266\umm_malloc\umm_local.c \
C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\cores\esp8266\umm_malloc\umm_poison.c 

C_DEPS += \
.\core\core\umm_malloc\umm_info.c.d \
.\core\core\umm_malloc\umm_integrity.c.d \
.\core\core\umm_malloc\umm_local.c.d \
.\core\core\umm_malloc\umm_poison.c.d 

AR_OBJ += \
.\core\core\umm_malloc\umm_info.c.o \
.\core\core\umm_malloc\umm_integrity.c.o \
.\core\core\umm_malloc\umm_local.c.o \
.\core\core\umm_malloc\umm_malloc.cpp.o \
.\core\core\umm_malloc\umm_poison.c.o 

CPP_DEPS += \
.\core\core\umm_malloc\umm_malloc.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
core\core\umm_malloc\umm_info.c.o: C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\cores\esp8266\umm_malloc\umm_info.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"C:\Sloeber\arduinoPlugin\packages\esp8266\tools\xtensa-lx106-elf-gcc\3.0.0-newlib4.0.0-gnu23-48f7b08/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0/tools/sdk/include" "-IC:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0/tools/sdk/lwip2/include" "-IC:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0/tools/sdk/libc/xtensa-lx106-elf/include" "-IC:\Users\rowel\Documents\sloeber-workspace\ghome3\Release/core" -c -w -std=gnu17 -fstack-protector -Os -g -free -fipa-pta -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -ffunction-sections -fdata-sections -fno-exceptions  -DMMU_IRAM_SIZE=0x8000 -DMMU_ICACHE_SIZE=0x8000  -DNONOSDK22x_190703=1 -DF_CPU=80000000L -DLWIP_OPEN_SRC -DTCP_MSS=536 -DLWIP_FEATURES=1 -DLWIP_IPV6=0   -DARDUINO=10812 -DARDUINO_ESP8266_NODEMCU_ESP12E -DARDUINO_ARCH_ESP8266 "-DARDUINO_BOARD=\"ESP8266_NODEMCU_ESP12E\"" -DLED_BUILTIN=2 -DFLASHMODE_DIO  -DESP8266   -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\variants\nodemcu" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\cores\esp8266" -I"C:\Sloeber\arduinoPlugin\libraries\FastLED\3.4.0\src" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\libraries\esp8266\src" -I"C:\Users\rowel\Documents\Arduino\libraries\Adafruit_MQTT_Library" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\libraries\EEPROM" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\libraries\ESP8266WiFi\src" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\cores\esp8266" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\variants\nodemcu" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\cores\esp8266" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\variants\nodemcu" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\umm_malloc\umm_integrity.c.o: C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\cores\esp8266\umm_malloc\umm_integrity.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"C:\Sloeber\arduinoPlugin\packages\esp8266\tools\xtensa-lx106-elf-gcc\3.0.0-newlib4.0.0-gnu23-48f7b08/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0/tools/sdk/include" "-IC:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0/tools/sdk/lwip2/include" "-IC:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0/tools/sdk/libc/xtensa-lx106-elf/include" "-IC:\Users\rowel\Documents\sloeber-workspace\ghome3\Release/core" -c -w -std=gnu17 -fstack-protector -Os -g -free -fipa-pta -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -ffunction-sections -fdata-sections -fno-exceptions  -DMMU_IRAM_SIZE=0x8000 -DMMU_ICACHE_SIZE=0x8000  -DNONOSDK22x_190703=1 -DF_CPU=80000000L -DLWIP_OPEN_SRC -DTCP_MSS=536 -DLWIP_FEATURES=1 -DLWIP_IPV6=0   -DARDUINO=10812 -DARDUINO_ESP8266_NODEMCU_ESP12E -DARDUINO_ARCH_ESP8266 "-DARDUINO_BOARD=\"ESP8266_NODEMCU_ESP12E\"" -DLED_BUILTIN=2 -DFLASHMODE_DIO  -DESP8266   -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\variants\nodemcu" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\cores\esp8266" -I"C:\Sloeber\arduinoPlugin\libraries\FastLED\3.4.0\src" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\libraries\esp8266\src" -I"C:\Users\rowel\Documents\Arduino\libraries\Adafruit_MQTT_Library" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\libraries\EEPROM" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\libraries\ESP8266WiFi\src" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\cores\esp8266" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\variants\nodemcu" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\cores\esp8266" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\variants\nodemcu" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\umm_malloc\umm_local.c.o: C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\cores\esp8266\umm_malloc\umm_local.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"C:\Sloeber\arduinoPlugin\packages\esp8266\tools\xtensa-lx106-elf-gcc\3.0.0-newlib4.0.0-gnu23-48f7b08/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0/tools/sdk/include" "-IC:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0/tools/sdk/lwip2/include" "-IC:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0/tools/sdk/libc/xtensa-lx106-elf/include" "-IC:\Users\rowel\Documents\sloeber-workspace\ghome3\Release/core" -c -w -std=gnu17 -fstack-protector -Os -g -free -fipa-pta -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -ffunction-sections -fdata-sections -fno-exceptions  -DMMU_IRAM_SIZE=0x8000 -DMMU_ICACHE_SIZE=0x8000  -DNONOSDK22x_190703=1 -DF_CPU=80000000L -DLWIP_OPEN_SRC -DTCP_MSS=536 -DLWIP_FEATURES=1 -DLWIP_IPV6=0   -DARDUINO=10812 -DARDUINO_ESP8266_NODEMCU_ESP12E -DARDUINO_ARCH_ESP8266 "-DARDUINO_BOARD=\"ESP8266_NODEMCU_ESP12E\"" -DLED_BUILTIN=2 -DFLASHMODE_DIO  -DESP8266   -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\variants\nodemcu" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\cores\esp8266" -I"C:\Sloeber\arduinoPlugin\libraries\FastLED\3.4.0\src" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\libraries\esp8266\src" -I"C:\Users\rowel\Documents\Arduino\libraries\Adafruit_MQTT_Library" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\libraries\EEPROM" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\libraries\ESP8266WiFi\src" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\cores\esp8266" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\variants\nodemcu" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\cores\esp8266" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\variants\nodemcu" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\umm_malloc\umm_malloc.cpp.o: C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\cores\esp8266\umm_malloc\umm_malloc.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Sloeber\arduinoPlugin\packages\esp8266\tools\xtensa-lx106-elf-gcc\3.0.0-newlib4.0.0-gnu23-48f7b08/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0/tools/sdk/include" "-IC:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0/tools/sdk/lwip2/include" "-IC:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0/tools/sdk/libc/xtensa-lx106-elf/include" "-IC:\Users\rowel\Documents\sloeber-workspace\ghome3\Release/core" -c -w -fstack-protector -Os -g -free -fipa-pta -mlongcalls -mtext-section-literals -fno-rtti -falign-functions=4 -std=gnu++17 -MMD -ffunction-sections -fdata-sections -fno-exceptions  -DMMU_IRAM_SIZE=0x8000 -DMMU_ICACHE_SIZE=0x8000  -DNONOSDK22x_190703=1 -DF_CPU=80000000L -DLWIP_OPEN_SRC -DTCP_MSS=536 -DLWIP_FEATURES=1 -DLWIP_IPV6=0   -DARDUINO=10812 -DARDUINO_ESP8266_NODEMCU_ESP12E -DARDUINO_ARCH_ESP8266 "-DARDUINO_BOARD=\"ESP8266_NODEMCU_ESP12E\"" -DLED_BUILTIN=2 -DFLASHMODE_DIO  -DESP8266   -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\variants\nodemcu" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\cores\esp8266" -I"C:\Sloeber\arduinoPlugin\libraries\FastLED\3.4.0\src" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\libraries\esp8266\src" -I"C:\Users\rowel\Documents\Arduino\libraries\Adafruit_MQTT_Library" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\libraries\EEPROM" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\libraries\ESP8266WiFi\src" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\cores\esp8266" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\variants\nodemcu" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\cores\esp8266" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\variants\nodemcu" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\umm_malloc\umm_poison.c.o: C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\cores\esp8266\umm_malloc\umm_poison.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"C:\Sloeber\arduinoPlugin\packages\esp8266\tools\xtensa-lx106-elf-gcc\3.0.0-newlib4.0.0-gnu23-48f7b08/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0/tools/sdk/include" "-IC:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0/tools/sdk/lwip2/include" "-IC:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0/tools/sdk/libc/xtensa-lx106-elf/include" "-IC:\Users\rowel\Documents\sloeber-workspace\ghome3\Release/core" -c -w -std=gnu17 -fstack-protector -Os -g -free -fipa-pta -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -ffunction-sections -fdata-sections -fno-exceptions  -DMMU_IRAM_SIZE=0x8000 -DMMU_ICACHE_SIZE=0x8000  -DNONOSDK22x_190703=1 -DF_CPU=80000000L -DLWIP_OPEN_SRC -DTCP_MSS=536 -DLWIP_FEATURES=1 -DLWIP_IPV6=0   -DARDUINO=10812 -DARDUINO_ESP8266_NODEMCU_ESP12E -DARDUINO_ARCH_ESP8266 "-DARDUINO_BOARD=\"ESP8266_NODEMCU_ESP12E\"" -DLED_BUILTIN=2 -DFLASHMODE_DIO  -DESP8266   -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\variants\nodemcu" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\cores\esp8266" -I"C:\Sloeber\arduinoPlugin\libraries\FastLED\3.4.0\src" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\libraries\esp8266\src" -I"C:\Users\rowel\Documents\Arduino\libraries\Adafruit_MQTT_Library" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\libraries\EEPROM" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\libraries\ESP8266WiFi\src" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\cores\esp8266" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\variants\nodemcu" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\cores\esp8266" -I"C:\Sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\3.0.0\variants\nodemcu" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '


