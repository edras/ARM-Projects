#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-same51.mk)" "nbproject/Makefile-local-same51.mk"
include nbproject/Makefile-local-same51.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=same51
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/same51.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/same51.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/same51/exceptions.c ../src/config/same51/startup_xc32.c ../src/config/same51/interrupts.c ../src/config/same51/peripheral/tc/plib_tc0.c ../src/config/same51/peripheral/clock/plib_clock.c ../src/config/same51/stdio/xc32_monitor.c ../src/config/same51/peripheral/evsys/plib_evsys.c ../src/config/same51/peripheral/cmcc/plib_cmcc.c ../src/config/same51/peripheral/port/plib_port.c ../src/config/same51/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/same51/libc_syscalls.c ../src/config/same51/initialization.c ../src/config/same51/peripheral/sercom/usart/plib_sercom5_usart.c ../src/config/same51/peripheral/nvic/plib_nvic.c ../src/app.c ../src/time.c ../src/hardware_layer/same51j20/hardware_layer.c ../src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1891561099/exceptions.o ${OBJECTDIR}/_ext/1891561099/startup_xc32.o ${OBJECTDIR}/_ext/1891561099/interrupts.o ${OBJECTDIR}/_ext/12559160/plib_tc0.o ${OBJECTDIR}/_ext/503102699/plib_clock.o ${OBJECTDIR}/_ext/677902703/xc32_monitor.o ${OBJECTDIR}/_ext/500953213/plib_evsys.o ${OBJECTDIR}/_ext/815055459/plib_cmcc.o ${OBJECTDIR}/_ext/815445146/plib_port.o ${OBJECTDIR}/_ext/988293929/plib_nvmctrl.o ${OBJECTDIR}/_ext/1891561099/libc_syscalls.o ${OBJECTDIR}/_ext/1891561099/initialization.o ${OBJECTDIR}/_ext/1695546448/plib_sercom5_usart.o ${OBJECTDIR}/_ext/815391995/plib_nvic.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/time.o ${OBJECTDIR}/_ext/1200328821/hardware_layer.o ${OBJECTDIR}/_ext/1360937237/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1891561099/exceptions.o.d ${OBJECTDIR}/_ext/1891561099/startup_xc32.o.d ${OBJECTDIR}/_ext/1891561099/interrupts.o.d ${OBJECTDIR}/_ext/12559160/plib_tc0.o.d ${OBJECTDIR}/_ext/503102699/plib_clock.o.d ${OBJECTDIR}/_ext/677902703/xc32_monitor.o.d ${OBJECTDIR}/_ext/500953213/plib_evsys.o.d ${OBJECTDIR}/_ext/815055459/plib_cmcc.o.d ${OBJECTDIR}/_ext/815445146/plib_port.o.d ${OBJECTDIR}/_ext/988293929/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1891561099/libc_syscalls.o.d ${OBJECTDIR}/_ext/1891561099/initialization.o.d ${OBJECTDIR}/_ext/1695546448/plib_sercom5_usart.o.d ${OBJECTDIR}/_ext/815391995/plib_nvic.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/time.o.d ${OBJECTDIR}/_ext/1200328821/hardware_layer.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1891561099/exceptions.o ${OBJECTDIR}/_ext/1891561099/startup_xc32.o ${OBJECTDIR}/_ext/1891561099/interrupts.o ${OBJECTDIR}/_ext/12559160/plib_tc0.o ${OBJECTDIR}/_ext/503102699/plib_clock.o ${OBJECTDIR}/_ext/677902703/xc32_monitor.o ${OBJECTDIR}/_ext/500953213/plib_evsys.o ${OBJECTDIR}/_ext/815055459/plib_cmcc.o ${OBJECTDIR}/_ext/815445146/plib_port.o ${OBJECTDIR}/_ext/988293929/plib_nvmctrl.o ${OBJECTDIR}/_ext/1891561099/libc_syscalls.o ${OBJECTDIR}/_ext/1891561099/initialization.o ${OBJECTDIR}/_ext/1695546448/plib_sercom5_usart.o ${OBJECTDIR}/_ext/815391995/plib_nvic.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/time.o ${OBJECTDIR}/_ext/1200328821/hardware_layer.o ${OBJECTDIR}/_ext/1360937237/main.o

# Source Files
SOURCEFILES=../src/config/same51/exceptions.c ../src/config/same51/startup_xc32.c ../src/config/same51/interrupts.c ../src/config/same51/peripheral/tc/plib_tc0.c ../src/config/same51/peripheral/clock/plib_clock.c ../src/config/same51/stdio/xc32_monitor.c ../src/config/same51/peripheral/evsys/plib_evsys.c ../src/config/same51/peripheral/cmcc/plib_cmcc.c ../src/config/same51/peripheral/port/plib_port.c ../src/config/same51/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/same51/libc_syscalls.c ../src/config/same51/initialization.c ../src/config/same51/peripheral/sercom/usart/plib_sercom5_usart.c ../src/config/same51/peripheral/nvic/plib_nvic.c ../src/app.c ../src/time.c ../src/hardware_layer/same51j20/hardware_layer.c ../src/main.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-same51.mk ${DISTDIR}/same51.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAME51J20A
MP_LINKER_FILE_OPTION=,--script="..\src\config\same51\ATSAME51J20A.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1891561099/exceptions.o: ../src/config/same51/exceptions.c  .generated_files/flags/same51/6248f58852f263818e828d14409ba094b94504e1 .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1891561099" 
	@${RM} ${OBJECTDIR}/_ext/1891561099/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1891561099/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1891561099/exceptions.o.d" -o ${OBJECTDIR}/_ext/1891561099/exceptions.o ../src/config/same51/exceptions.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1891561099/startup_xc32.o: ../src/config/same51/startup_xc32.c  .generated_files/flags/same51/2e787c1e8085d7489621da2dcd6a3c2cfa86892 .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1891561099" 
	@${RM} ${OBJECTDIR}/_ext/1891561099/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1891561099/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1891561099/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1891561099/startup_xc32.o ../src/config/same51/startup_xc32.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1891561099/interrupts.o: ../src/config/same51/interrupts.c  .generated_files/flags/same51/6b9cbed109ca6a91bc7bb10801b8c4e3536a95af .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1891561099" 
	@${RM} ${OBJECTDIR}/_ext/1891561099/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1891561099/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1891561099/interrupts.o.d" -o ${OBJECTDIR}/_ext/1891561099/interrupts.o ../src/config/same51/interrupts.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/12559160/plib_tc0.o: ../src/config/same51/peripheral/tc/plib_tc0.c  .generated_files/flags/same51/b2a5f62dcc7509d5cc186d56e420097c7f17ac70 .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/12559160" 
	@${RM} ${OBJECTDIR}/_ext/12559160/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/12559160/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/12559160/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/12559160/plib_tc0.o ../src/config/same51/peripheral/tc/plib_tc0.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/503102699/plib_clock.o: ../src/config/same51/peripheral/clock/plib_clock.c  .generated_files/flags/same51/ea5e3d726df81afe4f6ba67d063ef5ae04f7abf9 .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/503102699" 
	@${RM} ${OBJECTDIR}/_ext/503102699/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/503102699/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/503102699/plib_clock.o.d" -o ${OBJECTDIR}/_ext/503102699/plib_clock.o ../src/config/same51/peripheral/clock/plib_clock.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/677902703/xc32_monitor.o: ../src/config/same51/stdio/xc32_monitor.c  .generated_files/flags/same51/601d73f3457e9387f8aba64923c6cfc45a70c42a .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/677902703" 
	@${RM} ${OBJECTDIR}/_ext/677902703/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/677902703/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/677902703/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/677902703/xc32_monitor.o ../src/config/same51/stdio/xc32_monitor.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/500953213/plib_evsys.o: ../src/config/same51/peripheral/evsys/plib_evsys.c  .generated_files/flags/same51/84c9b3fd03596c77edf7c80dcac25cf8f3899542 .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/500953213" 
	@${RM} ${OBJECTDIR}/_ext/500953213/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/500953213/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/500953213/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/500953213/plib_evsys.o ../src/config/same51/peripheral/evsys/plib_evsys.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/815055459/plib_cmcc.o: ../src/config/same51/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/same51/f8913ac6a96201eb65bc7aaccc20153ebabe8ed3 .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/815055459" 
	@${RM} ${OBJECTDIR}/_ext/815055459/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/815055459/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/815055459/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/815055459/plib_cmcc.o ../src/config/same51/peripheral/cmcc/plib_cmcc.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/815445146/plib_port.o: ../src/config/same51/peripheral/port/plib_port.c  .generated_files/flags/same51/9e585c0c1cff679da9d3e3c0ddf5a1ba8d75358b .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/815445146" 
	@${RM} ${OBJECTDIR}/_ext/815445146/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/815445146/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/815445146/plib_port.o.d" -o ${OBJECTDIR}/_ext/815445146/plib_port.o ../src/config/same51/peripheral/port/plib_port.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/988293929/plib_nvmctrl.o: ../src/config/same51/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/same51/dbe850e0ee271bb5c1ea29545eb3931c13ec3ca8 .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/988293929" 
	@${RM} ${OBJECTDIR}/_ext/988293929/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/988293929/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/988293929/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/988293929/plib_nvmctrl.o ../src/config/same51/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1891561099/libc_syscalls.o: ../src/config/same51/libc_syscalls.c  .generated_files/flags/same51/d61c5711220d39905dac8d6d2d3c89a6e7b10f45 .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1891561099" 
	@${RM} ${OBJECTDIR}/_ext/1891561099/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1891561099/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1891561099/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1891561099/libc_syscalls.o ../src/config/same51/libc_syscalls.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1891561099/initialization.o: ../src/config/same51/initialization.c  .generated_files/flags/same51/cabe9f8c8dcdfa22c510edef1370b160f1d5a4bf .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1891561099" 
	@${RM} ${OBJECTDIR}/_ext/1891561099/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1891561099/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1891561099/initialization.o.d" -o ${OBJECTDIR}/_ext/1891561099/initialization.o ../src/config/same51/initialization.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1695546448/plib_sercom5_usart.o: ../src/config/same51/peripheral/sercom/usart/plib_sercom5_usart.c  .generated_files/flags/same51/5b81359e1443789e3fcb5e5a89a1098655889dc6 .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1695546448" 
	@${RM} ${OBJECTDIR}/_ext/1695546448/plib_sercom5_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1695546448/plib_sercom5_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1695546448/plib_sercom5_usart.o.d" -o ${OBJECTDIR}/_ext/1695546448/plib_sercom5_usart.o ../src/config/same51/peripheral/sercom/usart/plib_sercom5_usart.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/815391995/plib_nvic.o: ../src/config/same51/peripheral/nvic/plib_nvic.c  .generated_files/flags/same51/23f6a08306ba967458ed43b2c8763fc1ab68b817 .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/815391995" 
	@${RM} ${OBJECTDIR}/_ext/815391995/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/815391995/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/815391995/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/815391995/plib_nvic.o ../src/config/same51/peripheral/nvic/plib_nvic.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/same51/1ae6a85f3fcd6f6db0cf929bd1b3364ac3216953 .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/time.o: ../src/time.c  .generated_files/flags/same51/966517cce62501a7267615f9309d7e4c5ddc2af8 .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/time.o.d" -o ${OBJECTDIR}/_ext/1360937237/time.o ../src/time.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1200328821/hardware_layer.o: ../src/hardware_layer/same51j20/hardware_layer.c  .generated_files/flags/same51/aeb294c5f54792c5607194633e37131a96ccc556 .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1200328821" 
	@${RM} ${OBJECTDIR}/_ext/1200328821/hardware_layer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1200328821/hardware_layer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1200328821/hardware_layer.o.d" -o ${OBJECTDIR}/_ext/1200328821/hardware_layer.o ../src/hardware_layer/same51j20/hardware_layer.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/same51/70067ab9a3fbede92749d9644fb94ceeba9a4f52 .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/1891561099/exceptions.o: ../src/config/same51/exceptions.c  .generated_files/flags/same51/70ccbf9e444fb5858291e298b92aa69ceba656f0 .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1891561099" 
	@${RM} ${OBJECTDIR}/_ext/1891561099/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1891561099/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1891561099/exceptions.o.d" -o ${OBJECTDIR}/_ext/1891561099/exceptions.o ../src/config/same51/exceptions.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1891561099/startup_xc32.o: ../src/config/same51/startup_xc32.c  .generated_files/flags/same51/b9763fef99aea9fa5c191442dc0f45b6f7ba9581 .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1891561099" 
	@${RM} ${OBJECTDIR}/_ext/1891561099/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1891561099/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1891561099/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1891561099/startup_xc32.o ../src/config/same51/startup_xc32.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1891561099/interrupts.o: ../src/config/same51/interrupts.c  .generated_files/flags/same51/ce77eef01c93cb55dddbf7a873cdd9e7d16b12c6 .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1891561099" 
	@${RM} ${OBJECTDIR}/_ext/1891561099/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1891561099/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1891561099/interrupts.o.d" -o ${OBJECTDIR}/_ext/1891561099/interrupts.o ../src/config/same51/interrupts.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/12559160/plib_tc0.o: ../src/config/same51/peripheral/tc/plib_tc0.c  .generated_files/flags/same51/a3a2225d631f23fa3eb8ba96479c98a824601207 .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/12559160" 
	@${RM} ${OBJECTDIR}/_ext/12559160/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/12559160/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/12559160/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/12559160/plib_tc0.o ../src/config/same51/peripheral/tc/plib_tc0.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/503102699/plib_clock.o: ../src/config/same51/peripheral/clock/plib_clock.c  .generated_files/flags/same51/e43602824a316efdc8a52f6d0b9f737f03d78d0d .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/503102699" 
	@${RM} ${OBJECTDIR}/_ext/503102699/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/503102699/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/503102699/plib_clock.o.d" -o ${OBJECTDIR}/_ext/503102699/plib_clock.o ../src/config/same51/peripheral/clock/plib_clock.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/677902703/xc32_monitor.o: ../src/config/same51/stdio/xc32_monitor.c  .generated_files/flags/same51/f0775d413abda8eb6d194feb5e0d3499616226bf .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/677902703" 
	@${RM} ${OBJECTDIR}/_ext/677902703/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/677902703/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/677902703/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/677902703/xc32_monitor.o ../src/config/same51/stdio/xc32_monitor.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/500953213/plib_evsys.o: ../src/config/same51/peripheral/evsys/plib_evsys.c  .generated_files/flags/same51/6fdf959ba87417ded3d083d5721abce9c247ad43 .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/500953213" 
	@${RM} ${OBJECTDIR}/_ext/500953213/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/500953213/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/500953213/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/500953213/plib_evsys.o ../src/config/same51/peripheral/evsys/plib_evsys.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/815055459/plib_cmcc.o: ../src/config/same51/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/same51/fa39f726e47d31b2885ccd20057a257614183301 .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/815055459" 
	@${RM} ${OBJECTDIR}/_ext/815055459/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/815055459/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/815055459/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/815055459/plib_cmcc.o ../src/config/same51/peripheral/cmcc/plib_cmcc.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/815445146/plib_port.o: ../src/config/same51/peripheral/port/plib_port.c  .generated_files/flags/same51/7ed3fe0cc2559863d744797bba3b7b685b7e2f1b .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/815445146" 
	@${RM} ${OBJECTDIR}/_ext/815445146/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/815445146/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/815445146/plib_port.o.d" -o ${OBJECTDIR}/_ext/815445146/plib_port.o ../src/config/same51/peripheral/port/plib_port.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/988293929/plib_nvmctrl.o: ../src/config/same51/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/same51/61615d14462c38529d84df7e4c17c32d30ff30a8 .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/988293929" 
	@${RM} ${OBJECTDIR}/_ext/988293929/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/988293929/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/988293929/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/988293929/plib_nvmctrl.o ../src/config/same51/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1891561099/libc_syscalls.o: ../src/config/same51/libc_syscalls.c  .generated_files/flags/same51/ea0c5dc3d82036ed18adca71f9fed79cf309f242 .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1891561099" 
	@${RM} ${OBJECTDIR}/_ext/1891561099/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1891561099/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1891561099/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1891561099/libc_syscalls.o ../src/config/same51/libc_syscalls.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1891561099/initialization.o: ../src/config/same51/initialization.c  .generated_files/flags/same51/e135420ab2d3da1b1e4606602067979575555fe9 .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1891561099" 
	@${RM} ${OBJECTDIR}/_ext/1891561099/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1891561099/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1891561099/initialization.o.d" -o ${OBJECTDIR}/_ext/1891561099/initialization.o ../src/config/same51/initialization.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1695546448/plib_sercom5_usart.o: ../src/config/same51/peripheral/sercom/usart/plib_sercom5_usart.c  .generated_files/flags/same51/c8596946cb84d5c63fdbf4ffcfc7aa1f14b21ab9 .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1695546448" 
	@${RM} ${OBJECTDIR}/_ext/1695546448/plib_sercom5_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1695546448/plib_sercom5_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1695546448/plib_sercom5_usart.o.d" -o ${OBJECTDIR}/_ext/1695546448/plib_sercom5_usart.o ../src/config/same51/peripheral/sercom/usart/plib_sercom5_usart.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/815391995/plib_nvic.o: ../src/config/same51/peripheral/nvic/plib_nvic.c  .generated_files/flags/same51/6a18ede0a6c2cc85658242b3dcc3d07715ab41fb .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/815391995" 
	@${RM} ${OBJECTDIR}/_ext/815391995/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/815391995/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/815391995/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/815391995/plib_nvic.o ../src/config/same51/peripheral/nvic/plib_nvic.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/same51/4175f1f8921eccb359c630055769c625f96f49e8 .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/time.o: ../src/time.c  .generated_files/flags/same51/10ea680569f21f044b93855636f971283b51e145 .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/time.o.d" -o ${OBJECTDIR}/_ext/1360937237/time.o ../src/time.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1200328821/hardware_layer.o: ../src/hardware_layer/same51j20/hardware_layer.c  .generated_files/flags/same51/2bbc57b259379fef82cac7744c2e427c0f133ef4 .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1200328821" 
	@${RM} ${OBJECTDIR}/_ext/1200328821/hardware_layer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1200328821/hardware_layer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1200328821/hardware_layer.o.d" -o ${OBJECTDIR}/_ext/1200328821/hardware_layer.o ../src/hardware_layer/same51j20/hardware_layer.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/same51/7753f082e95042bc84242ba5250544b807e44e5f .generated_files/flags/same51/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/same51j20" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/same51" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/same51.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/same51/ATSAME51J20A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/same51.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/same51.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/same51/ATSAME51J20A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/same51.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_same51=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/same51.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
