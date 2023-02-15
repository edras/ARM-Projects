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
ifeq "$(wildcard nbproject/Makefile-local-samd21.mk)" "nbproject/Makefile-local-samd21.mk"
include nbproject/Makefile-local-samd21.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=samd21
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/samd21.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/samd21.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/hardware_layer/samd21g17/hardware_layer.c ../src/app.c ../src/time.c ../src/main.c ../src/config/samd21/startup_xc32.c ../src/config/samd21/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/samd21/peripheral/port/plib_port.c ../src/config/samd21/initialization.c ../src/config/samd21/stdio/xc32_monitor.c ../src/config/samd21/interrupts.c ../src/config/samd21/peripheral/clock/plib_clock.c ../src/config/samd21/peripheral/sercom/usart/plib_sercom5_usart.c ../src/config/samd21/peripheral/systick/plib_systick.c ../src/config/samd21/peripheral/evsys/plib_evsys.c ../src/config/samd21/exceptions.c ../src/config/samd21/libc_syscalls.c ../src/config/samd21/peripheral/nvic/plib_nvic.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1231731442/hardware_layer.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/time.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1891562153/startup_xc32.o ${OBJECTDIR}/_ext/415709621/plib_nvmctrl.o ${OBJECTDIR}/_ext/356166780/plib_port.o ${OBJECTDIR}/_ext/1891562153/initialization.o ${OBJECTDIR}/_ext/1551893457/xc32_monitor.o ${OBJECTDIR}/_ext/1891562153/interrupts.o ${OBJECTDIR}/_ext/1855830157/plib_clock.o ${OBJECTDIR}/_ext/1544747410/plib_sercom5_usart.o ${OBJECTDIR}/_ext/650184719/plib_systick.o ${OBJECTDIR}/_ext/1853680671/plib_evsys.o ${OBJECTDIR}/_ext/1891562153/exceptions.o ${OBJECTDIR}/_ext/1891562153/libc_syscalls.o ${OBJECTDIR}/_ext/356113629/plib_nvic.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1231731442/hardware_layer.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/time.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1891562153/startup_xc32.o.d ${OBJECTDIR}/_ext/415709621/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/356166780/plib_port.o.d ${OBJECTDIR}/_ext/1891562153/initialization.o.d ${OBJECTDIR}/_ext/1551893457/xc32_monitor.o.d ${OBJECTDIR}/_ext/1891562153/interrupts.o.d ${OBJECTDIR}/_ext/1855830157/plib_clock.o.d ${OBJECTDIR}/_ext/1544747410/plib_sercom5_usart.o.d ${OBJECTDIR}/_ext/650184719/plib_systick.o.d ${OBJECTDIR}/_ext/1853680671/plib_evsys.o.d ${OBJECTDIR}/_ext/1891562153/exceptions.o.d ${OBJECTDIR}/_ext/1891562153/libc_syscalls.o.d ${OBJECTDIR}/_ext/356113629/plib_nvic.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1231731442/hardware_layer.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/time.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1891562153/startup_xc32.o ${OBJECTDIR}/_ext/415709621/plib_nvmctrl.o ${OBJECTDIR}/_ext/356166780/plib_port.o ${OBJECTDIR}/_ext/1891562153/initialization.o ${OBJECTDIR}/_ext/1551893457/xc32_monitor.o ${OBJECTDIR}/_ext/1891562153/interrupts.o ${OBJECTDIR}/_ext/1855830157/plib_clock.o ${OBJECTDIR}/_ext/1544747410/plib_sercom5_usart.o ${OBJECTDIR}/_ext/650184719/plib_systick.o ${OBJECTDIR}/_ext/1853680671/plib_evsys.o ${OBJECTDIR}/_ext/1891562153/exceptions.o ${OBJECTDIR}/_ext/1891562153/libc_syscalls.o ${OBJECTDIR}/_ext/356113629/plib_nvic.o

# Source Files
SOURCEFILES=../src/hardware_layer/samd21g17/hardware_layer.c ../src/app.c ../src/time.c ../src/main.c ../src/config/samd21/startup_xc32.c ../src/config/samd21/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/samd21/peripheral/port/plib_port.c ../src/config/samd21/initialization.c ../src/config/samd21/stdio/xc32_monitor.c ../src/config/samd21/interrupts.c ../src/config/samd21/peripheral/clock/plib_clock.c ../src/config/samd21/peripheral/sercom/usart/plib_sercom5_usart.c ../src/config/samd21/peripheral/systick/plib_systick.c ../src/config/samd21/peripheral/evsys/plib_evsys.c ../src/config/samd21/exceptions.c ../src/config/samd21/libc_syscalls.c ../src/config/samd21/peripheral/nvic/plib_nvic.c

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
	${MAKE}  -f nbproject/Makefile-samd21.mk ${DISTDIR}/samd21.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAMD21G17D
MP_LINKER_FILE_OPTION=,--script="..\src\config\samd21\ATSAMD21G17D.ld"
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
${OBJECTDIR}/_ext/1231731442/hardware_layer.o: ../src/hardware_layer/samd21g17/hardware_layer.c  .generated_files/flags/samd21/2ddbfb66be3d7fda88071e0b4861f78f2ff5bced .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1231731442" 
	@${RM} ${OBJECTDIR}/_ext/1231731442/hardware_layer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1231731442/hardware_layer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1231731442/hardware_layer.o.d" -o ${OBJECTDIR}/_ext/1231731442/hardware_layer.o ../src/hardware_layer/samd21g17/hardware_layer.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/samd21/b54527ae2d23aa0ece55615b0f768a193e6077ee .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/time.o: ../src/time.c  .generated_files/flags/samd21/74720fd0e265fd4a51ed15382769e7b73f3236e2 .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/time.o.d" -o ${OBJECTDIR}/_ext/1360937237/time.o ../src/time.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/samd21/e0e29af28ffc233ea8ea5d6f3381ac9caea2466b .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1891562153/startup_xc32.o: ../src/config/samd21/startup_xc32.c  .generated_files/flags/samd21/7c9a2e504b516e5c4f2ee859f7a7ec996a22d90f .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1891562153" 
	@${RM} ${OBJECTDIR}/_ext/1891562153/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1891562153/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1891562153/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1891562153/startup_xc32.o ../src/config/samd21/startup_xc32.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/415709621/plib_nvmctrl.o: ../src/config/samd21/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/samd21/763e8c239b91ebec88aa634b7da8f6eb0b611799 .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/415709621" 
	@${RM} ${OBJECTDIR}/_ext/415709621/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/415709621/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/415709621/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/415709621/plib_nvmctrl.o ../src/config/samd21/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/356166780/plib_port.o: ../src/config/samd21/peripheral/port/plib_port.c  .generated_files/flags/samd21/6138857cf5f3f7c7d7b1252d350175da8113ab .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/356166780" 
	@${RM} ${OBJECTDIR}/_ext/356166780/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/356166780/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/356166780/plib_port.o.d" -o ${OBJECTDIR}/_ext/356166780/plib_port.o ../src/config/samd21/peripheral/port/plib_port.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1891562153/initialization.o: ../src/config/samd21/initialization.c  .generated_files/flags/samd21/f4cc4b0c2f423a2469771c9da67308be0a15e926 .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1891562153" 
	@${RM} ${OBJECTDIR}/_ext/1891562153/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1891562153/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1891562153/initialization.o.d" -o ${OBJECTDIR}/_ext/1891562153/initialization.o ../src/config/samd21/initialization.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1551893457/xc32_monitor.o: ../src/config/samd21/stdio/xc32_monitor.c  .generated_files/flags/samd21/b085641fd6d498235ef2371896368a30a909f451 .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1551893457" 
	@${RM} ${OBJECTDIR}/_ext/1551893457/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1551893457/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1551893457/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1551893457/xc32_monitor.o ../src/config/samd21/stdio/xc32_monitor.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1891562153/interrupts.o: ../src/config/samd21/interrupts.c  .generated_files/flags/samd21/38308e8797d3b7e168db289c21a354cec3b689b0 .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1891562153" 
	@${RM} ${OBJECTDIR}/_ext/1891562153/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1891562153/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1891562153/interrupts.o.d" -o ${OBJECTDIR}/_ext/1891562153/interrupts.o ../src/config/samd21/interrupts.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1855830157/plib_clock.o: ../src/config/samd21/peripheral/clock/plib_clock.c  .generated_files/flags/samd21/881893b97c9afc5532d342976c7a6d574921f8b1 .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1855830157" 
	@${RM} ${OBJECTDIR}/_ext/1855830157/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1855830157/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1855830157/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1855830157/plib_clock.o ../src/config/samd21/peripheral/clock/plib_clock.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544747410/plib_sercom5_usart.o: ../src/config/samd21/peripheral/sercom/usart/plib_sercom5_usart.c  .generated_files/flags/samd21/9fb31f7afe8dbfe6697af0728ac8a3efc60116ea .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544747410" 
	@${RM} ${OBJECTDIR}/_ext/1544747410/plib_sercom5_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544747410/plib_sercom5_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544747410/plib_sercom5_usart.o.d" -o ${OBJECTDIR}/_ext/1544747410/plib_sercom5_usart.o ../src/config/samd21/peripheral/sercom/usart/plib_sercom5_usart.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/650184719/plib_systick.o: ../src/config/samd21/peripheral/systick/plib_systick.c  .generated_files/flags/samd21/64549a56080ff8153615c4b7bd47021626c1a3e8 .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/650184719" 
	@${RM} ${OBJECTDIR}/_ext/650184719/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/650184719/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/650184719/plib_systick.o.d" -o ${OBJECTDIR}/_ext/650184719/plib_systick.o ../src/config/samd21/peripheral/systick/plib_systick.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1853680671/plib_evsys.o: ../src/config/samd21/peripheral/evsys/plib_evsys.c  .generated_files/flags/samd21/b7d98374102ae0201ba5114bfa6e9bc7ff2d5441 .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1853680671" 
	@${RM} ${OBJECTDIR}/_ext/1853680671/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1853680671/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1853680671/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1853680671/plib_evsys.o ../src/config/samd21/peripheral/evsys/plib_evsys.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1891562153/exceptions.o: ../src/config/samd21/exceptions.c  .generated_files/flags/samd21/f3dbef135dbd5b6a91f30dc166e4f1384372f200 .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1891562153" 
	@${RM} ${OBJECTDIR}/_ext/1891562153/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1891562153/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1891562153/exceptions.o.d" -o ${OBJECTDIR}/_ext/1891562153/exceptions.o ../src/config/samd21/exceptions.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1891562153/libc_syscalls.o: ../src/config/samd21/libc_syscalls.c  .generated_files/flags/samd21/c53a408490ddcc16b68bbb0f14c958746f562e07 .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1891562153" 
	@${RM} ${OBJECTDIR}/_ext/1891562153/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1891562153/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1891562153/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1891562153/libc_syscalls.o ../src/config/samd21/libc_syscalls.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/356113629/plib_nvic.o: ../src/config/samd21/peripheral/nvic/plib_nvic.c  .generated_files/flags/samd21/430780fb23864cc2b1553cc1bb4c825d27695495 .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/356113629" 
	@${RM} ${OBJECTDIR}/_ext/356113629/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/356113629/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/356113629/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/356113629/plib_nvic.o ../src/config/samd21/peripheral/nvic/plib_nvic.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/1231731442/hardware_layer.o: ../src/hardware_layer/samd21g17/hardware_layer.c  .generated_files/flags/samd21/e94f52cdb2e716d174ef42e17edd539abc3637a5 .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1231731442" 
	@${RM} ${OBJECTDIR}/_ext/1231731442/hardware_layer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1231731442/hardware_layer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1231731442/hardware_layer.o.d" -o ${OBJECTDIR}/_ext/1231731442/hardware_layer.o ../src/hardware_layer/samd21g17/hardware_layer.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/samd21/63c44777db48f5ba61e2b2320e41e7a9b9e30eca .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/time.o: ../src/time.c  .generated_files/flags/samd21/5c78264a8482b292e1c75f8d830a7d10c266a21d .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/time.o.d" -o ${OBJECTDIR}/_ext/1360937237/time.o ../src/time.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/samd21/63ffda102a725e4033baa3b748a83f91aaa4855c .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1891562153/startup_xc32.o: ../src/config/samd21/startup_xc32.c  .generated_files/flags/samd21/88d3da54f3c35bf85b96503f117e13b198321802 .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1891562153" 
	@${RM} ${OBJECTDIR}/_ext/1891562153/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1891562153/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1891562153/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1891562153/startup_xc32.o ../src/config/samd21/startup_xc32.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/415709621/plib_nvmctrl.o: ../src/config/samd21/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/samd21/fcd82ebc86435e0675a115c52d92688ac9b5ce98 .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/415709621" 
	@${RM} ${OBJECTDIR}/_ext/415709621/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/415709621/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/415709621/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/415709621/plib_nvmctrl.o ../src/config/samd21/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/356166780/plib_port.o: ../src/config/samd21/peripheral/port/plib_port.c  .generated_files/flags/samd21/25f32a005991d5e6626835603787febab5566df3 .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/356166780" 
	@${RM} ${OBJECTDIR}/_ext/356166780/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/356166780/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/356166780/plib_port.o.d" -o ${OBJECTDIR}/_ext/356166780/plib_port.o ../src/config/samd21/peripheral/port/plib_port.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1891562153/initialization.o: ../src/config/samd21/initialization.c  .generated_files/flags/samd21/d0473b2b7069c68724b2337fd1a042bdac7dfa44 .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1891562153" 
	@${RM} ${OBJECTDIR}/_ext/1891562153/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1891562153/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1891562153/initialization.o.d" -o ${OBJECTDIR}/_ext/1891562153/initialization.o ../src/config/samd21/initialization.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1551893457/xc32_monitor.o: ../src/config/samd21/stdio/xc32_monitor.c  .generated_files/flags/samd21/2df380fb0849dd34b15ed2f68fe8496f610eb7d3 .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1551893457" 
	@${RM} ${OBJECTDIR}/_ext/1551893457/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1551893457/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1551893457/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1551893457/xc32_monitor.o ../src/config/samd21/stdio/xc32_monitor.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1891562153/interrupts.o: ../src/config/samd21/interrupts.c  .generated_files/flags/samd21/7ca46e82bf8632de3c5f89198a4a8e0daca171b .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1891562153" 
	@${RM} ${OBJECTDIR}/_ext/1891562153/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1891562153/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1891562153/interrupts.o.d" -o ${OBJECTDIR}/_ext/1891562153/interrupts.o ../src/config/samd21/interrupts.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1855830157/plib_clock.o: ../src/config/samd21/peripheral/clock/plib_clock.c  .generated_files/flags/samd21/a8acae031280a23e1fbae69b19ebf8d100fb9b2e .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1855830157" 
	@${RM} ${OBJECTDIR}/_ext/1855830157/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1855830157/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1855830157/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1855830157/plib_clock.o ../src/config/samd21/peripheral/clock/plib_clock.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1544747410/plib_sercom5_usart.o: ../src/config/samd21/peripheral/sercom/usart/plib_sercom5_usart.c  .generated_files/flags/samd21/fd2cb67a3ad1e9edddf4ef69b9200eba74a79630 .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1544747410" 
	@${RM} ${OBJECTDIR}/_ext/1544747410/plib_sercom5_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544747410/plib_sercom5_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544747410/plib_sercom5_usart.o.d" -o ${OBJECTDIR}/_ext/1544747410/plib_sercom5_usart.o ../src/config/samd21/peripheral/sercom/usart/plib_sercom5_usart.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/650184719/plib_systick.o: ../src/config/samd21/peripheral/systick/plib_systick.c  .generated_files/flags/samd21/58774664e9ebcb4ef1b46d1829cb428cfb9c14eb .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/650184719" 
	@${RM} ${OBJECTDIR}/_ext/650184719/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/650184719/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/650184719/plib_systick.o.d" -o ${OBJECTDIR}/_ext/650184719/plib_systick.o ../src/config/samd21/peripheral/systick/plib_systick.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1853680671/plib_evsys.o: ../src/config/samd21/peripheral/evsys/plib_evsys.c  .generated_files/flags/samd21/8153e8cf8eb037fd6e63a41bcdc0ef3ed7efaa92 .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1853680671" 
	@${RM} ${OBJECTDIR}/_ext/1853680671/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1853680671/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1853680671/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1853680671/plib_evsys.o ../src/config/samd21/peripheral/evsys/plib_evsys.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1891562153/exceptions.o: ../src/config/samd21/exceptions.c  .generated_files/flags/samd21/ba3b06acbd1489966bf2578874d84a044064f53f .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1891562153" 
	@${RM} ${OBJECTDIR}/_ext/1891562153/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1891562153/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1891562153/exceptions.o.d" -o ${OBJECTDIR}/_ext/1891562153/exceptions.o ../src/config/samd21/exceptions.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1891562153/libc_syscalls.o: ../src/config/samd21/libc_syscalls.c  .generated_files/flags/samd21/d888ff8543a4ef12f9bc6837841934fd088d3554 .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1891562153" 
	@${RM} ${OBJECTDIR}/_ext/1891562153/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1891562153/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1891562153/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1891562153/libc_syscalls.o ../src/config/samd21/libc_syscalls.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/356113629/plib_nvic.o: ../src/config/samd21/peripheral/nvic/plib_nvic.c  .generated_files/flags/samd21/f773dce17a8a9d90d5c43e3bd14748b719d2a164 .generated_files/flags/samd21/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/356113629" 
	@${RM} ${OBJECTDIR}/_ext/356113629/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/356113629/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/hardware_layer/samd21g17" -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/samd21" -I"../src/config/same51" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/ATSAME51J20A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/356113629/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/356113629/plib_nvic.o ../src/config/samd21/peripheral/nvic/plib_nvic.c    -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/samd21.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/samd21/ATSAMD21G17D.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/samd21.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samd21d"
	
else
${DISTDIR}/samd21.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/samd21/ATSAMD21G17D.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/samd21.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_samd21=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samd21d"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/samd21.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
