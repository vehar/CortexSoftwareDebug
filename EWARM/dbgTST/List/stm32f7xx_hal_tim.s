///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.30.1.114/W32 for ARM        10/Feb/2020  21:42:26
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\win10\f7dbg\dbgTST\Drivers\STM32F7xx_HAL_Driver\Src\stm32f7xx_hal_tim.c
//    Command line =  
//        -f C:\Users\rus08\AppData\Local\Temp\EW8EE1.tmp
//        (D:\win10\f7dbg\dbgTST\Drivers\STM32F7xx_HAL_Driver\Src\stm32f7xx_hal_tim.c
//        -D USE_HAL_DRIVER -D STM32F723xx -lC
//        D:\win10\f7dbg\dbgTST\EWARM\dbgTST\List -lA
//        D:\win10\f7dbg\dbgTST\EWARM\dbgTST\List -o
//        D:\win10\f7dbg\dbgTST\EWARM\dbgTST\Obj --debug --endian=little
//        --cpu=Cortex-M7 -e --fpu=VFPv5_sp --dlib_config "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        8.1\arm\inc\c\DLib_Config_Full.h" -I
//        D:\win10\f7dbg\dbgTST\EWARM/../Inc\ -I
//        D:\win10\f7dbg\dbgTST\EWARM/../Drivers/STM32F7xx_HAL_Driver/Inc\ -I
//        D:\win10\f7dbg\dbgTST\EWARM/../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy\
//        -I
//        D:\win10\f7dbg\dbgTST\EWARM/../Drivers/CMSIS/Device/ST/STM32F7xx/Include\
//        -I D:\win10\f7dbg\dbgTST\EWARM/../Drivers/CMSIS/Include\ -Ohz)
//    Locale       =  C
//    List file    =  
//        D:\win10\f7dbg\dbgTST\EWARM\dbgTST\List\stm32f7xx_hal_tim.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK,VFP
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1


        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// D:\win10\f7dbg\dbgTST\Drivers\STM32F7xx_HAL_Driver\Src\stm32f7xx_hal_tim.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f7xx_hal_tim.c
//    4   * @author  MCD Application Team
//    5   * @brief   TIM HAL module driver.
//    6   *          This file provides firmware functions to manage the following
//    7   *          functionalities of the Timer (TIM) peripheral:
//    8   *           + TIM Time Base Initialization
//    9   *           + TIM Time Base Start
//   10   *           + TIM Time Base Start Interruption
//   11   *           + TIM Time Base Start DMA
//   12   *           + TIM Output Compare/PWM Initialization
//   13   *           + TIM Output Compare/PWM Channel Configuration
//   14   *           + TIM Output Compare/PWM  Start
//   15   *           + TIM Output Compare/PWM  Start Interruption
//   16   *           + TIM Output Compare/PWM Start DMA
//   17   *           + TIM Input Capture Initialization
//   18   *           + TIM Input Capture Channel Configuration
//   19   *           + TIM Input Capture Start
//   20   *           + TIM Input Capture Start Interruption
//   21   *           + TIM Input Capture Start DMA
//   22   *           + TIM One Pulse Initialization
//   23   *           + TIM One Pulse Channel Configuration
//   24   *           + TIM One Pulse Start
//   25   *           + TIM Encoder Interface Initialization
//   26   *           + TIM Encoder Interface Start
//   27   *           + TIM Encoder Interface Start Interruption
//   28   *           + TIM Encoder Interface Start DMA
//   29   *           + Commutation Event configuration with Interruption and DMA
//   30   *           + TIM OCRef clear configuration
//   31   *           + TIM External Clock configuration
//   32   @verbatim
//   33   ==============================================================================
//   34                       ##### TIMER Generic features #####
//   35   ==============================================================================
//   36   [..] The Timer features include:
//   37        (#) 16-bit up, down, up/down auto-reload counter.
//   38        (#) 16-bit programmable prescaler allowing dividing (also on the fly) the
//   39            counter clock frequency either by any factor between 1 and 65536.
//   40        (#) Up to 4 independent channels for:
//   41            (++) Input Capture
//   42            (++) Output Compare
//   43            (++) PWM generation (Edge and Center-aligned Mode)
//   44            (++) One-pulse mode output
//   45        (#) Synchronization circuit to control the timer with external signals and to interconnect
//   46             several timers together.
//   47        (#) Supports incremental encoder for positioning purposes
//   48 
//   49             ##### How to use this driver #####
//   50   ==============================================================================
//   51     [..]
//   52      (#) Initialize the TIM low level resources by implementing the following functions
//   53          depending on the selected feature:
//   54            (++) Time Base : HAL_TIM_Base_MspInit()
//   55            (++) Input Capture : HAL_TIM_IC_MspInit()
//   56            (++) Output Compare : HAL_TIM_OC_MspInit()
//   57            (++) PWM generation : HAL_TIM_PWM_MspInit()
//   58            (++) One-pulse mode output : HAL_TIM_OnePulse_MspInit()
//   59            (++) Encoder mode output : HAL_TIM_Encoder_MspInit()
//   60 
//   61      (#) Initialize the TIM low level resources :
//   62         (##) Enable the TIM interface clock using __HAL_RCC_TIMx_CLK_ENABLE();
//   63         (##) TIM pins configuration
//   64             (+++) Enable the clock for the TIM GPIOs using the following function:
//   65              __HAL_RCC_GPIOx_CLK_ENABLE();
//   66             (+++) Configure these TIM pins in Alternate function mode using HAL_GPIO_Init();
//   67 
//   68      (#) The external Clock can be configured, if needed (the default clock is the
//   69          internal clock from the APBx), using the following function:
//   70          HAL_TIM_ConfigClockSource, the clock configuration should be done before
//   71          any start function.
//   72 
//   73      (#) Configure the TIM in the desired functioning mode using one of the
//   74        Initialization function of this driver:
//   75        (++) HAL_TIM_Base_Init: to use the Timer to generate a simple time base
//   76        (++) HAL_TIM_OC_Init and HAL_TIM_OC_ConfigChannel: to use the Timer to generate an
//   77             Output Compare signal.
//   78        (++) HAL_TIM_PWM_Init and HAL_TIM_PWM_ConfigChannel: to use the Timer to generate a
//   79             PWM signal.
//   80        (++) HAL_TIM_IC_Init and HAL_TIM_IC_ConfigChannel: to use the Timer to measure an
//   81             external signal.
//   82        (++) HAL_TIM_OnePulse_Init and HAL_TIM_OnePulse_ConfigChannel: to use the Timer
//   83             in One Pulse Mode.
//   84        (++) HAL_TIM_Encoder_Init: to use the Timer Encoder Interface.
//   85 
//   86      (#) Activate the TIM peripheral using one of the start functions depending from the feature used:
//   87            (++) Time Base : HAL_TIM_Base_Start(), HAL_TIM_Base_Start_DMA(), HAL_TIM_Base_Start_IT()
//   88            (++) Input Capture :  HAL_TIM_IC_Start(), HAL_TIM_IC_Start_DMA(), HAL_TIM_IC_Start_IT()
//   89            (++) Output Compare : HAL_TIM_OC_Start(), HAL_TIM_OC_Start_DMA(), HAL_TIM_OC_Start_IT()
//   90            (++) PWM generation : HAL_TIM_PWM_Start(), HAL_TIM_PWM_Start_DMA(), HAL_TIM_PWM_Start_IT()
//   91            (++) One-pulse mode output : HAL_TIM_OnePulse_Start(), HAL_TIM_OnePulse_Start_IT()
//   92            (++) Encoder mode output : HAL_TIM_Encoder_Start(), HAL_TIM_Encoder_Start_DMA(), HAL_TIM_Encoder_Start_IT().
//   93 
//   94      (#) The DMA Burst is managed with the two following functions:
//   95          HAL_TIM_DMABurst_WriteStart()
//   96          HAL_TIM_DMABurst_ReadStart()
//   97 
//   98     *** Callback registration ***
//   99   =============================================
//  100 
//  101   The compilation define  USE_HAL_TIM_REGISTER_CALLBACKS when set to 1
//  102   allows the user to configure dynamically the driver callbacks.
//  103 
//  104   Use Function @ref HAL_TIM_RegisterCallback() to register a callback.
//  105   @ref HAL_TIM_RegisterCallback() takes as parameters the HAL peripheral handle,
//  106   the Callback ID and a pointer to the user callback function.
//  107 
//  108   Use function @ref HAL_TIM_UnRegisterCallback() to reset a callback to the default
//  109   weak function.
//  110   @ref HAL_TIM_UnRegisterCallback takes as parameters the HAL peripheral handle,
//  111   and the Callback ID.
//  112 
//  113   These functions allow to register/unregister following callbacks:
//  114     (+) Base_MspInitCallback              : TIM Base Msp Init Callback.
//  115     (+) Base_MspDeInitCallback            : TIM Base Msp DeInit Callback.
//  116     (+) IC_MspInitCallback                : TIM IC Msp Init Callback.
//  117     (+) IC_MspDeInitCallback              : TIM IC Msp DeInit Callback.
//  118     (+) OC_MspInitCallback                : TIM OC Msp Init Callback.
//  119     (+) OC_MspDeInitCallback              : TIM OC Msp DeInit Callback.
//  120     (+) PWM_MspInitCallback               : TIM PWM Msp Init Callback.
//  121     (+) PWM_MspDeInitCallback             : TIM PWM Msp DeInit Callback.
//  122     (+) OnePulse_MspInitCallback          : TIM One Pulse Msp Init Callback.
//  123     (+) OnePulse_MspDeInitCallback        : TIM One Pulse Msp DeInit Callback.
//  124     (+) Encoder_MspInitCallback           : TIM Encoder Msp Init Callback.
//  125     (+) Encoder_MspDeInitCallback         : TIM Encoder Msp DeInit Callback.
//  126     (+) HallSensor_MspInitCallback        : TIM Hall Sensor Msp Init Callback.
//  127     (+) HallSensor_MspDeInitCallback      : TIM Hall Sensor Msp DeInit Callback.
//  128     (+) PeriodElapsedCallback             : TIM Period Elapsed Callback.
//  129     (+) PeriodElapsedHalfCpltCallback     : TIM Period Elapsed half complete Callback.
//  130     (+) TriggerCallback                   : TIM Trigger Callback.
//  131     (+) TriggerHalfCpltCallback           : TIM Trigger half complete Callback.
//  132     (+) IC_CaptureCallback                : TIM Input Capture Callback.
//  133     (+) IC_CaptureHalfCpltCallback        : TIM Input Capture half complete Callback.
//  134     (+) OC_DelayElapsedCallback           : TIM Output Compare Delay Elapsed Callback.
//  135     (+) PWM_PulseFinishedCallback         : TIM PWM Pulse Finished Callback.
//  136     (+) PWM_PulseFinishedHalfCpltCallback : TIM PWM Pulse Finished half complete Callback.
//  137     (+) ErrorCallback                     : TIM Error Callback.
//  138     (+) CommutationCallback               : TIM Commutation Callback.
//  139     (+) CommutationHalfCpltCallback       : TIM Commutation half complete Callback.
//  140     (+) BreakCallback                     : TIM Break Callback.
//  141     (+) Break2Callback                    : TIM Break2 Callback.
//  142 
//  143 By default, after the Init and when the state is HAL_TIM_STATE_RESET
//  144 all interrupt callbacks are set to the corresponding weak functions:
//  145   examples @ref HAL_TIM_TriggerCallback(), @ref HAL_TIM_ErrorCallback().
//  146 
//  147   Exception done for MspInit and MspDeInit functions that are reset to the legacy weak
//  148   functionalities in the Init / DeInit only when these callbacks are null
//  149   (not registered beforehand). If not, MspInit or MspDeInit are not null, the Init / DeInit
//  150     keep and use the user MspInit / MspDeInit callbacks(registered beforehand)
//  151 
//  152     Callbacks can be registered / unregistered in HAL_TIM_STATE_READY state only.
//  153     Exception done MspInit / MspDeInit that can be registered / unregistered
//  154     in HAL_TIM_STATE_READY or HAL_TIM_STATE_RESET state,
//  155     thus registered(user) MspInit / DeInit callbacks can be used during the Init / DeInit.
//  156   In that case first register the MspInit/MspDeInit user callbacks
//  157       using @ref HAL_TIM_RegisterCallback() before calling DeInit or Init function.
//  158 
//  159       When The compilation define USE_HAL_TIM_REGISTER_CALLBACKS is set to 0 or
//  160       not defined, the callback registration feature is not available and all callbacks
//  161       are set to the corresponding weak functions.
//  162 
//  163   @endverbatim
//  164   ******************************************************************************
//  165   * @attention
//  166   *
//  167   * <h2><center>&copy; Copyright (c) 2017 STMicroelectronics.
//  168   * All rights reserved.</center></h2>
//  169   *
//  170   * This software component is licensed by ST under BSD 3-Clause license,
//  171   * the "License"; You may not use this file except in compliance with the
//  172   * License. You may obtain a copy of the License at:
//  173   *                        opensource.org/licenses/BSD-3-Clause
//  174   *
//  175   ******************************************************************************
//  176   */
//  177 
//  178 /* Includes ------------------------------------------------------------------*/
//  179 #include "stm32f7xx_hal.h"
//  180 
//  181 /** @addtogroup STM32F7xx_HAL_Driver
//  182   * @{
//  183   */
//  184 
//  185 /** @defgroup TIM TIM
//  186   * @brief TIM HAL module driver
//  187   * @{
//  188   */
//  189 
//  190 #ifdef HAL_TIM_MODULE_ENABLED
//  191 
//  192 /* Private typedef -----------------------------------------------------------*/
//  193 /* Private define ------------------------------------------------------------*/
//  194 /* Private macro -------------------------------------------------------------*/
//  195 /* Private variables ---------------------------------------------------------*/
//  196 /* Private function prototypes -----------------------------------------------*/
//  197 /** @addtogroup TIM_Private_Functions
//  198   * @{
//  199   */
//  200 static void TIM_OC1_SetConfig(TIM_TypeDef *TIMx, TIM_OC_InitTypeDef *OC_Config);
//  201 static void TIM_OC3_SetConfig(TIM_TypeDef *TIMx, TIM_OC_InitTypeDef *OC_Config);
//  202 static void TIM_OC4_SetConfig(TIM_TypeDef *TIMx, TIM_OC_InitTypeDef *OC_Config);
//  203 static void TIM_OC5_SetConfig(TIM_TypeDef *TIMx, TIM_OC_InitTypeDef *OC_Config);
//  204 static void TIM_OC6_SetConfig(TIM_TypeDef *TIMx, TIM_OC_InitTypeDef *OC_Config);
//  205 static void TIM_TI1_ConfigInputStage(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICFilter);
//  206 static void TIM_TI2_SetConfig(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICSelection,
//  207                               uint32_t TIM_ICFilter);
//  208 static void TIM_TI2_ConfigInputStage(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICFilter);
//  209 static void TIM_TI3_SetConfig(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICSelection,
//  210                               uint32_t TIM_ICFilter);
//  211 static void TIM_TI4_SetConfig(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICSelection,
//  212                               uint32_t TIM_ICFilter);
//  213 static void TIM_ITRx_SetConfig(TIM_TypeDef *TIMx, uint32_t InputTriggerSource);
//  214 static void TIM_DMAPeriodElapsedCplt(DMA_HandleTypeDef *hdma);
//  215 static void TIM_DMAPeriodElapsedHalfCplt(DMA_HandleTypeDef *hdma);
//  216 static void TIM_DMATriggerCplt(DMA_HandleTypeDef *hdma);
//  217 static void TIM_DMATriggerHalfCplt(DMA_HandleTypeDef *hdma);
//  218 static HAL_StatusTypeDef TIM_SlaveTimer_SetConfig(TIM_HandleTypeDef *htim,
//  219                                      TIM_SlaveConfigTypeDef *sSlaveConfig);
//  220 /**
//  221   * @}
//  222   */
//  223 /* Exported functions --------------------------------------------------------*/
//  224 
//  225 /** @defgroup TIM_Exported_Functions TIM Exported Functions
//  226   * @{
//  227   */
//  228 
//  229 /** @defgroup TIM_Exported_Functions_Group1 TIM Time Base functions
//  230  *  @brief    Time Base functions
//  231  *
//  232 @verbatim
//  233   ==============================================================================
//  234               ##### Time Base functions #####
//  235   ==============================================================================
//  236   [..]
//  237     This section provides functions allowing to:
//  238     (+) Initialize and configure the TIM base.
//  239     (+) De-initialize the TIM base.
//  240     (+) Start the Time Base.
//  241     (+) Stop the Time Base.
//  242     (+) Start the Time Base and enable interrupt.
//  243     (+) Stop the Time Base and disable interrupt.
//  244     (+) Start the Time Base and enable DMA transfer.
//  245     (+) Stop the Time Base and disable DMA transfer.
//  246 
//  247 @endverbatim
//  248   * @{
//  249   */
//  250 /**
//  251   * @brief  Initializes the TIM Time base Unit according to the specified
//  252   *         parameters in the TIM_HandleTypeDef and initialize the associated handle.
//  253   * @note   Switching from Center Aligned counter mode to Edge counter mode (or reverse)
//  254   *         requires a timer reset to avoid unexpected direction
//  255   *         due to DIR bit readonly in center aligned mode.
//  256   *         Ex: call @ref HAL_TIM_Base_DeInit() before HAL_TIM_Base_Init()
//  257   * @param  htim TIM Base handle
//  258   * @retval HAL status
//  259   */
//  260 HAL_StatusTypeDef HAL_TIM_Base_Init(TIM_HandleTypeDef *htim)
//  261 {
//  262   /* Check the TIM handle allocation */
//  263   if (htim == NULL)
//  264   {
//  265     return HAL_ERROR;
//  266   }
//  267 
//  268   /* Check the parameters */
//  269   assert_param(IS_TIM_INSTANCE(htim->Instance));
//  270   assert_param(IS_TIM_COUNTER_MODE(htim->Init.CounterMode));
//  271   assert_param(IS_TIM_CLOCKDIVISION_DIV(htim->Init.ClockDivision));
//  272   assert_param(IS_TIM_AUTORELOAD_PRELOAD(htim->Init.AutoReloadPreload));
//  273 
//  274   if (htim->State == HAL_TIM_STATE_RESET)
//  275   {
//  276     /* Allocate lock resource and initialize it */
//  277     htim->Lock = HAL_UNLOCKED;
//  278 
//  279 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
//  280     /* Reset interrupt callbacks to legacy weak callbacks */
//  281     TIM_ResetCallback(htim);
//  282 
//  283     if (htim->Base_MspInitCallback == NULL)
//  284     {
//  285       htim->Base_MspInitCallback = HAL_TIM_Base_MspInit;
//  286     }
//  287     /* Init the low level hardware : GPIO, CLOCK, NVIC */
//  288     htim->Base_MspInitCallback(htim);
//  289 #else
//  290     /* Init the low level hardware : GPIO, CLOCK, NVIC */
//  291     HAL_TIM_Base_MspInit(htim);
//  292 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
//  293   }
//  294 
//  295   /* Set the TIM state */
//  296   htim->State = HAL_TIM_STATE_BUSY;
//  297 
//  298   /* Set the Time Base configuration */
//  299   TIM_Base_SetConfig(htim->Instance, &htim->Init);
//  300 
//  301   /* Initialize the TIM state*/
//  302   htim->State = HAL_TIM_STATE_READY;
//  303 
//  304   return HAL_OK;
//  305 }
//  306 
//  307 /**
//  308   * @brief  DeInitializes the TIM Base peripheral
//  309   * @param  htim TIM Base handle
//  310   * @retval HAL status
//  311   */
//  312 HAL_StatusTypeDef HAL_TIM_Base_DeInit(TIM_HandleTypeDef *htim)
//  313 {
//  314   /* Check the parameters */
//  315   assert_param(IS_TIM_INSTANCE(htim->Instance));
//  316 
//  317   htim->State = HAL_TIM_STATE_BUSY;
//  318 
//  319   /* Disable the TIM Peripheral Clock */
//  320   __HAL_TIM_DISABLE(htim);
//  321 
//  322 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
//  323   if (htim->Base_MspDeInitCallback == NULL)
//  324   {
//  325     htim->Base_MspDeInitCallback = HAL_TIM_Base_MspDeInit;
//  326   }
//  327   /* DeInit the low level hardware */
//  328   htim->Base_MspDeInitCallback(htim);
//  329 #else
//  330   /* DeInit the low level hardware: GPIO, CLOCK, NVIC */
//  331   HAL_TIM_Base_MspDeInit(htim);
//  332 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
//  333 
//  334   /* Change TIM state */
//  335   htim->State = HAL_TIM_STATE_RESET;
//  336 
//  337   /* Release Lock */
//  338   __HAL_UNLOCK(htim);
//  339 
//  340   return HAL_OK;
//  341 }
//  342 
//  343 /**
//  344   * @brief  Initializes the TIM Base MSP.
//  345   * @param  htim TIM Base handle
//  346   * @retval None
//  347   */
//  348 __weak void HAL_TIM_Base_MspInit(TIM_HandleTypeDef *htim)
//  349 {
//  350   /* Prevent unused argument(s) compilation warning */
//  351   UNUSED(htim);
//  352 
//  353   /* NOTE : This function should not be modified, when the callback is needed,
//  354             the HAL_TIM_Base_MspInit could be implemented in the user file
//  355    */
//  356 }
//  357 
//  358 /**
//  359   * @brief  DeInitializes TIM Base MSP.
//  360   * @param  htim TIM Base handle
//  361   * @retval None
//  362   */
//  363 __weak void HAL_TIM_Base_MspDeInit(TIM_HandleTypeDef *htim)
//  364 {
//  365   /* Prevent unused argument(s) compilation warning */
//  366   UNUSED(htim);
//  367 
//  368   /* NOTE : This function should not be modified, when the callback is needed,
//  369             the HAL_TIM_Base_MspDeInit could be implemented in the user file
//  370    */
//  371 }
//  372 
//  373 
//  374 /**
//  375   * @brief  Starts the TIM Base generation.
//  376   * @param  htim TIM Base handle
//  377   * @retval HAL status
//  378   */
//  379 HAL_StatusTypeDef HAL_TIM_Base_Start(TIM_HandleTypeDef *htim)
//  380 {
//  381   uint32_t tmpsmcr;
//  382 
//  383   /* Check the parameters */
//  384   assert_param(IS_TIM_INSTANCE(htim->Instance));
//  385 
//  386   /* Set the TIM state */
//  387   htim->State = HAL_TIM_STATE_BUSY;
//  388 
//  389   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
//  390   tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
//  391   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
//  392   {
//  393     __HAL_TIM_ENABLE(htim);
//  394   }
//  395 
//  396   /* Change the TIM state*/
//  397   htim->State = HAL_TIM_STATE_READY;
//  398 
//  399   /* Return function status */
//  400   return HAL_OK;
//  401 }
//  402 
//  403 /**
//  404   * @brief  Stops the TIM Base generation.
//  405   * @param  htim TIM Base handle
//  406   * @retval HAL status
//  407   */
//  408 HAL_StatusTypeDef HAL_TIM_Base_Stop(TIM_HandleTypeDef *htim)
//  409 {
//  410   /* Check the parameters */
//  411   assert_param(IS_TIM_INSTANCE(htim->Instance));
//  412 
//  413   /* Set the TIM state */
//  414   htim->State = HAL_TIM_STATE_BUSY;
//  415 
//  416   /* Disable the Peripheral */
//  417   __HAL_TIM_DISABLE(htim);
//  418 
//  419   /* Change the TIM state*/
//  420   htim->State = HAL_TIM_STATE_READY;
//  421 
//  422   /* Return function status */
//  423   return HAL_OK;
//  424 }
//  425 
//  426 /**
//  427   * @brief  Starts the TIM Base generation in interrupt mode.
//  428   * @param  htim TIM Base handle
//  429   * @retval HAL status
//  430   */
//  431 HAL_StatusTypeDef HAL_TIM_Base_Start_IT(TIM_HandleTypeDef *htim)
//  432 {
//  433   uint32_t tmpsmcr;
//  434 
//  435   /* Check the parameters */
//  436   assert_param(IS_TIM_INSTANCE(htim->Instance));
//  437 
//  438   /* Enable the TIM Update interrupt */
//  439   __HAL_TIM_ENABLE_IT(htim, TIM_IT_UPDATE);
//  440 
//  441   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
//  442   tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
//  443   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
//  444   {
//  445     __HAL_TIM_ENABLE(htim);
//  446   }
//  447 
//  448   /* Return function status */
//  449   return HAL_OK;
//  450 }
//  451 
//  452 /**
//  453   * @brief  Stops the TIM Base generation in interrupt mode.
//  454   * @param  htim TIM Base handle
//  455   * @retval HAL status
//  456   */
//  457 HAL_StatusTypeDef HAL_TIM_Base_Stop_IT(TIM_HandleTypeDef *htim)
//  458 {
//  459   /* Check the parameters */
//  460   assert_param(IS_TIM_INSTANCE(htim->Instance));
//  461   /* Disable the TIM Update interrupt */
//  462   __HAL_TIM_DISABLE_IT(htim, TIM_IT_UPDATE);
//  463 
//  464   /* Disable the Peripheral */
//  465   __HAL_TIM_DISABLE(htim);
//  466 
//  467   /* Return function status */
//  468   return HAL_OK;
//  469 }
//  470 
//  471 /**
//  472   * @brief  Starts the TIM Base generation in DMA mode.
//  473   * @param  htim TIM Base handle
//  474   * @param  pData The source Buffer address.
//  475   * @param  Length The length of data to be transferred from memory to peripheral.
//  476   * @retval HAL status
//  477   */
//  478 HAL_StatusTypeDef HAL_TIM_Base_Start_DMA(TIM_HandleTypeDef *htim, uint32_t *pData, uint16_t Length)
//  479 {
//  480   uint32_t tmpsmcr;
//  481 
//  482   /* Check the parameters */
//  483   assert_param(IS_TIM_DMA_INSTANCE(htim->Instance));
//  484 
//  485   if ((htim->State == HAL_TIM_STATE_BUSY))
//  486   {
//  487     return HAL_BUSY;
//  488   }
//  489   else if ((htim->State == HAL_TIM_STATE_READY))
//  490   {
//  491     if ((pData == NULL) && (Length > 0U))
//  492     {
//  493       return HAL_ERROR;
//  494     }
//  495     else
//  496     {
//  497       htim->State = HAL_TIM_STATE_BUSY;
//  498     }
//  499   }
//  500   else
//  501   {
//  502     /* nothing to do */
//  503   }
//  504 
//  505   /* Set the DMA Period elapsed callbacks */
//  506   htim->hdma[TIM_DMA_ID_UPDATE]->XferCpltCallback = TIM_DMAPeriodElapsedCplt;
//  507   htim->hdma[TIM_DMA_ID_UPDATE]->XferHalfCpltCallback = TIM_DMAPeriodElapsedHalfCplt;
//  508 
//  509   /* Set the DMA error callback */
//  510   htim->hdma[TIM_DMA_ID_UPDATE]->XferErrorCallback = TIM_DMAError ;
//  511 
//  512   /* Enable the DMA stream */
//  513   if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_UPDATE], (uint32_t)pData, (uint32_t)&htim->Instance->ARR, Length) != HAL_OK)
//  514   {
//  515     return HAL_ERROR;
//  516   }
//  517 
//  518   /* Enable the TIM Update DMA request */
//  519   __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_UPDATE);
//  520 
//  521   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
//  522   tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
//  523   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
//  524   {
//  525     __HAL_TIM_ENABLE(htim);
//  526   }
//  527 
//  528   /* Return function status */
//  529   return HAL_OK;
//  530 }
//  531 
//  532 /**
//  533   * @brief  Stops the TIM Base generation in DMA mode.
//  534   * @param  htim TIM Base handle
//  535   * @retval HAL status
//  536   */
//  537 HAL_StatusTypeDef HAL_TIM_Base_Stop_DMA(TIM_HandleTypeDef *htim)
//  538 {
//  539   /* Check the parameters */
//  540   assert_param(IS_TIM_DMA_INSTANCE(htim->Instance));
//  541 
//  542   /* Disable the TIM Update DMA request */
//  543   __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_UPDATE);
//  544 
//  545   (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_UPDATE]);
//  546 
//  547   /* Disable the Peripheral */
//  548   __HAL_TIM_DISABLE(htim);
//  549 
//  550   /* Change the htim state */
//  551   htim->State = HAL_TIM_STATE_READY;
//  552 
//  553   /* Return function status */
//  554   return HAL_OK;
//  555 }
//  556 
//  557 /**
//  558   * @}
//  559   */
//  560 
//  561 /** @defgroup TIM_Exported_Functions_Group2 TIM Output Compare functions
//  562  *  @brief    TIM Output Compare functions
//  563  *
//  564 @verbatim
//  565   ==============================================================================
//  566                   ##### TIM Output Compare functions #####
//  567   ==============================================================================
//  568   [..]
//  569     This section provides functions allowing to:
//  570     (+) Initialize and configure the TIM Output Compare.
//  571     (+) De-initialize the TIM Output Compare.
//  572     (+) Start the TIM Output Compare.
//  573     (+) Stop the TIM Output Compare.
//  574     (+) Start the TIM Output Compare and enable interrupt.
//  575     (+) Stop the TIM Output Compare and disable interrupt.
//  576     (+) Start the TIM Output Compare and enable DMA transfer.
//  577     (+) Stop the TIM Output Compare and disable DMA transfer.
//  578 
//  579 @endverbatim
//  580   * @{
//  581   */
//  582 /**
//  583   * @brief  Initializes the TIM Output Compare according to the specified
//  584   *         parameters in the TIM_HandleTypeDef and initializes the associated handle.
//  585   * @note   Switching from Center Aligned counter mode to Edge counter mode (or reverse)
//  586   *         requires a timer reset to avoid unexpected direction
//  587   *         due to DIR bit readonly in center aligned mode.
//  588   *         Ex: call @ref HAL_TIM_OC_DeInit() before HAL_TIM_OC_Init()
//  589   * @param  htim TIM Output Compare handle
//  590   * @retval HAL status
//  591   */
//  592 HAL_StatusTypeDef HAL_TIM_OC_Init(TIM_HandleTypeDef *htim)
//  593 {
//  594   /* Check the TIM handle allocation */
//  595   if (htim == NULL)
//  596   {
//  597     return HAL_ERROR;
//  598   }
//  599 
//  600   /* Check the parameters */
//  601   assert_param(IS_TIM_INSTANCE(htim->Instance));
//  602   assert_param(IS_TIM_COUNTER_MODE(htim->Init.CounterMode));
//  603   assert_param(IS_TIM_CLOCKDIVISION_DIV(htim->Init.ClockDivision));
//  604   assert_param(IS_TIM_AUTORELOAD_PRELOAD(htim->Init.AutoReloadPreload));
//  605 
//  606   if (htim->State == HAL_TIM_STATE_RESET)
//  607   {
//  608     /* Allocate lock resource and initialize it */
//  609     htim->Lock = HAL_UNLOCKED;
//  610 
//  611 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
//  612     /* Reset interrupt callbacks to legacy weak callbacks */
//  613     TIM_ResetCallback(htim);
//  614 
//  615     if (htim->OC_MspInitCallback == NULL)
//  616     {
//  617       htim->OC_MspInitCallback = HAL_TIM_OC_MspInit;
//  618     }
//  619     /* Init the low level hardware : GPIO, CLOCK, NVIC */
//  620     htim->OC_MspInitCallback(htim);
//  621 #else
//  622     /* Init the low level hardware : GPIO, CLOCK, NVIC and DMA */
//  623     HAL_TIM_OC_MspInit(htim);
//  624 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
//  625   }
//  626 
//  627   /* Set the TIM state */
//  628   htim->State = HAL_TIM_STATE_BUSY;
//  629 
//  630   /* Init the base time for the Output Compare */
//  631   TIM_Base_SetConfig(htim->Instance,  &htim->Init);
//  632 
//  633   /* Initialize the TIM state*/
//  634   htim->State = HAL_TIM_STATE_READY;
//  635 
//  636   return HAL_OK;
//  637 }
//  638 
//  639 /**
//  640   * @brief  DeInitializes the TIM peripheral
//  641   * @param  htim TIM Output Compare handle
//  642   * @retval HAL status
//  643   */
//  644 HAL_StatusTypeDef HAL_TIM_OC_DeInit(TIM_HandleTypeDef *htim)
//  645 {
//  646   /* Check the parameters */
//  647   assert_param(IS_TIM_INSTANCE(htim->Instance));
//  648 
//  649   htim->State = HAL_TIM_STATE_BUSY;
//  650 
//  651   /* Disable the TIM Peripheral Clock */
//  652   __HAL_TIM_DISABLE(htim);
//  653 
//  654 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
//  655   if (htim->OC_MspDeInitCallback == NULL)
//  656   {
//  657     htim->OC_MspDeInitCallback = HAL_TIM_OC_MspDeInit;
//  658   }
//  659   /* DeInit the low level hardware */
//  660   htim->OC_MspDeInitCallback(htim);
//  661 #else
//  662   /* DeInit the low level hardware: GPIO, CLOCK, NVIC and DMA */
//  663   HAL_TIM_OC_MspDeInit(htim);
//  664 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
//  665 
//  666   /* Change TIM state */
//  667   htim->State = HAL_TIM_STATE_RESET;
//  668 
//  669   /* Release Lock */
//  670   __HAL_UNLOCK(htim);
//  671 
//  672   return HAL_OK;
//  673 }
//  674 
//  675 /**
//  676   * @brief  Initializes the TIM Output Compare MSP.
//  677   * @param  htim TIM Output Compare handle
//  678   * @retval None
//  679   */
//  680 __weak void HAL_TIM_OC_MspInit(TIM_HandleTypeDef *htim)
//  681 {
//  682   /* Prevent unused argument(s) compilation warning */
//  683   UNUSED(htim);
//  684 
//  685   /* NOTE : This function should not be modified, when the callback is needed,
//  686             the HAL_TIM_OC_MspInit could be implemented in the user file
//  687    */
//  688 }
//  689 
//  690 /**
//  691   * @brief  DeInitializes TIM Output Compare MSP.
//  692   * @param  htim TIM Output Compare handle
//  693   * @retval None
//  694   */
//  695 __weak void HAL_TIM_OC_MspDeInit(TIM_HandleTypeDef *htim)
//  696 {
//  697   /* Prevent unused argument(s) compilation warning */
//  698   UNUSED(htim);
//  699 
//  700   /* NOTE : This function should not be modified, when the callback is needed,
//  701             the HAL_TIM_OC_MspDeInit could be implemented in the user file
//  702    */
//  703 }
//  704 
//  705 /**
//  706   * @brief  Starts the TIM Output Compare signal generation.
//  707   * @param  htim TIM Output Compare handle
//  708   * @param  Channel TIM Channel to be enabled
//  709   *          This parameter can be one of the following values:
//  710   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
//  711   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
//  712   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
//  713   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
//  714   *            @arg TIM_CHANNEL_5: TIM Channel 5 selected
//  715   *            @arg TIM_CHANNEL_6: TIM Channel 6 selected
//  716   * @retval HAL status
//  717   */
//  718 HAL_StatusTypeDef HAL_TIM_OC_Start(TIM_HandleTypeDef *htim, uint32_t Channel)
//  719 {
//  720   uint32_t tmpsmcr;
//  721 
//  722   /* Check the parameters */
//  723   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
//  724 
//  725   /* Enable the Output compare channel */
//  726   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_ENABLE);
//  727 
//  728   if (IS_TIM_BREAK_INSTANCE(htim->Instance) != RESET)
//  729   {
//  730     /* Enable the main output */
//  731     __HAL_TIM_MOE_ENABLE(htim);
//  732   }
//  733 
//  734   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
//  735   tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
//  736   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
//  737   {
//  738     __HAL_TIM_ENABLE(htim);
//  739   }
//  740 
//  741   /* Return function status */
//  742   return HAL_OK;
//  743 }
//  744 
//  745 /**
//  746   * @brief  Stops the TIM Output Compare signal generation.
//  747   * @param  htim TIM Output Compare handle
//  748   * @param  Channel TIM Channel to be disabled
//  749   *          This parameter can be one of the following values:
//  750   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
//  751   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
//  752   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
//  753   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
//  754   *            @arg TIM_CHANNEL_5: TIM Channel 5 selected
//  755   *            @arg TIM_CHANNEL_6: TIM Channel 6 selected
//  756   * @retval HAL status
//  757   */
//  758 HAL_StatusTypeDef HAL_TIM_OC_Stop(TIM_HandleTypeDef *htim, uint32_t Channel)
//  759 {
//  760   /* Check the parameters */
//  761   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
//  762 
//  763   /* Disable the Output compare channel */
//  764   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_DISABLE);
//  765 
//  766   if (IS_TIM_BREAK_INSTANCE(htim->Instance) != RESET)
//  767   {
//  768     /* Disable the Main Output */
//  769     __HAL_TIM_MOE_DISABLE(htim);
//  770   }
//  771 
//  772   /* Disable the Peripheral */
//  773   __HAL_TIM_DISABLE(htim);
//  774 
//  775   /* Return function status */
//  776   return HAL_OK;
//  777 }
//  778 
//  779 /**
//  780   * @brief  Starts the TIM Output Compare signal generation in interrupt mode.
//  781   * @param  htim TIM Output Compare handle
//  782   * @param  Channel TIM Channel to be enabled
//  783   *          This parameter can be one of the following values:
//  784   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
//  785   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
//  786   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
//  787   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
//  788   * @retval HAL status
//  789   */
//  790 HAL_StatusTypeDef HAL_TIM_OC_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
//  791 {
//  792   uint32_t tmpsmcr;
//  793 
//  794   /* Check the parameters */
//  795   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
//  796 
//  797   switch (Channel)
//  798   {
//  799     case TIM_CHANNEL_1:
//  800     {
//  801       /* Enable the TIM Capture/Compare 1 interrupt */
//  802       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC1);
//  803       break;
//  804     }
//  805 
//  806     case TIM_CHANNEL_2:
//  807     {
//  808       /* Enable the TIM Capture/Compare 2 interrupt */
//  809       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC2);
//  810       break;
//  811     }
//  812 
//  813     case TIM_CHANNEL_3:
//  814     {
//  815       /* Enable the TIM Capture/Compare 3 interrupt */
//  816       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC3);
//  817       break;
//  818     }
//  819 
//  820     case TIM_CHANNEL_4:
//  821     {
//  822       /* Enable the TIM Capture/Compare 4 interrupt */
//  823       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC4);
//  824       break;
//  825     }
//  826 
//  827     default:
//  828       break;
//  829   }
//  830 
//  831   /* Enable the Output compare channel */
//  832   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_ENABLE);
//  833 
//  834   if (IS_TIM_BREAK_INSTANCE(htim->Instance) != RESET)
//  835   {
//  836     /* Enable the main output */
//  837     __HAL_TIM_MOE_ENABLE(htim);
//  838   }
//  839 
//  840   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
//  841   tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
//  842   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
//  843   {
//  844     __HAL_TIM_ENABLE(htim);
//  845   }
//  846 
//  847   /* Return function status */
//  848   return HAL_OK;
//  849 }
//  850 
//  851 /**
//  852   * @brief  Stops the TIM Output Compare signal generation in interrupt mode.
//  853   * @param  htim TIM Output Compare handle
//  854   * @param  Channel TIM Channel to be disabled
//  855   *          This parameter can be one of the following values:
//  856   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
//  857   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
//  858   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
//  859   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
//  860   * @retval HAL status
//  861   */
//  862 HAL_StatusTypeDef HAL_TIM_OC_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
//  863 {
//  864   /* Check the parameters */
//  865   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
//  866 
//  867   switch (Channel)
//  868   {
//  869     case TIM_CHANNEL_1:
//  870     {
//  871       /* Disable the TIM Capture/Compare 1 interrupt */
//  872       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC1);
//  873       break;
//  874     }
//  875 
//  876     case TIM_CHANNEL_2:
//  877     {
//  878       /* Disable the TIM Capture/Compare 2 interrupt */
//  879       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC2);
//  880       break;
//  881     }
//  882 
//  883     case TIM_CHANNEL_3:
//  884     {
//  885       /* Disable the TIM Capture/Compare 3 interrupt */
//  886       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC3);
//  887       break;
//  888     }
//  889 
//  890     case TIM_CHANNEL_4:
//  891     {
//  892       /* Disable the TIM Capture/Compare 4 interrupt */
//  893       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC4);
//  894       break;
//  895     }
//  896 
//  897     default:
//  898       break;
//  899   }
//  900 
//  901   /* Disable the Output compare channel */
//  902   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_DISABLE);
//  903 
//  904   if (IS_TIM_BREAK_INSTANCE(htim->Instance) != RESET)
//  905   {
//  906     /* Disable the Main Output */
//  907     __HAL_TIM_MOE_DISABLE(htim);
//  908   }
//  909 
//  910   /* Disable the Peripheral */
//  911   __HAL_TIM_DISABLE(htim);
//  912 
//  913   /* Return function status */
//  914   return HAL_OK;
//  915 }
//  916 
//  917 /**
//  918   * @brief  Starts the TIM Output Compare signal generation in DMA mode.
//  919   * @param  htim TIM Output Compare handle
//  920   * @param  Channel TIM Channel to be enabled
//  921   *          This parameter can be one of the following values:
//  922   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
//  923   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
//  924   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
//  925   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
//  926   * @param  pData The source Buffer address.
//  927   * @param  Length The length of data to be transferred from memory to TIM peripheral
//  928   * @retval HAL status
//  929   */
//  930 HAL_StatusTypeDef HAL_TIM_OC_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pData, uint16_t Length)
//  931 {
//  932    uint32_t tmpsmcr;
//  933 
//  934   /* Check the parameters */
//  935   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
//  936 
//  937   if ((htim->State == HAL_TIM_STATE_BUSY))
//  938   {
//  939     return HAL_BUSY;
//  940   }
//  941   else if ((htim->State == HAL_TIM_STATE_READY))
//  942   {
//  943     if ((pData == NULL) && (Length > 0U))
//  944     {
//  945       return HAL_ERROR;
//  946     }
//  947     else
//  948     {
//  949       htim->State = HAL_TIM_STATE_BUSY;
//  950     }
//  951   }
//  952   else
//  953   {
//  954     /* nothing to do */
//  955   }
//  956 
//  957   switch (Channel)
//  958   {
//  959     case TIM_CHANNEL_1:
//  960     {
//  961       /* Set the DMA compare callbacks */
//  962       htim->hdma[TIM_DMA_ID_CC1]->XferCpltCallback = TIM_DMADelayPulseCplt;
//  963       htim->hdma[TIM_DMA_ID_CC1]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
//  964 
//  965       /* Set the DMA error callback */
//  966       htim->hdma[TIM_DMA_ID_CC1]->XferErrorCallback = TIM_DMAError ;
//  967 
//  968       /* Enable the DMA stream */
//  969       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC1], (uint32_t)pData, (uint32_t)&htim->Instance->CCR1, Length) != HAL_OK)
//  970       {
//  971         return HAL_ERROR;
//  972       }
//  973 
//  974       /* Enable the TIM Capture/Compare 1 DMA request */
//  975       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC1);
//  976       break;
//  977     }
//  978 
//  979     case TIM_CHANNEL_2:
//  980     {
//  981       /* Set the DMA compare callbacks */
//  982       htim->hdma[TIM_DMA_ID_CC2]->XferCpltCallback = TIM_DMADelayPulseCplt;
//  983       htim->hdma[TIM_DMA_ID_CC2]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
//  984 
//  985       /* Set the DMA error callback */
//  986       htim->hdma[TIM_DMA_ID_CC2]->XferErrorCallback = TIM_DMAError ;
//  987 
//  988       /* Enable the DMA stream */
//  989       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC2], (uint32_t)pData, (uint32_t)&htim->Instance->CCR2, Length) != HAL_OK)
//  990       {
//  991         return HAL_ERROR;
//  992       }
//  993 
//  994       /* Enable the TIM Capture/Compare 2 DMA request */
//  995       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC2);
//  996       break;
//  997     }
//  998 
//  999     case TIM_CHANNEL_3:
// 1000     {
// 1001       /* Set the DMA compare callbacks */
// 1002       htim->hdma[TIM_DMA_ID_CC3]->XferCpltCallback = TIM_DMADelayPulseCplt;
// 1003       htim->hdma[TIM_DMA_ID_CC3]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
// 1004 
// 1005       /* Set the DMA error callback */
// 1006       htim->hdma[TIM_DMA_ID_CC3]->XferErrorCallback = TIM_DMAError ;
// 1007 
// 1008       /* Enable the DMA stream */
// 1009       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC3], (uint32_t)pData, (uint32_t)&htim->Instance->CCR3, Length) != HAL_OK)
// 1010       {
// 1011         return HAL_ERROR;
// 1012       }
// 1013       /* Enable the TIM Capture/Compare 3 DMA request */
// 1014       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC3);
// 1015       break;
// 1016     }
// 1017 
// 1018     case TIM_CHANNEL_4:
// 1019     {
// 1020       /* Set the DMA compare callbacks */
// 1021       htim->hdma[TIM_DMA_ID_CC4]->XferCpltCallback = TIM_DMADelayPulseCplt;
// 1022       htim->hdma[TIM_DMA_ID_CC4]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
// 1023 
// 1024       /* Set the DMA error callback */
// 1025       htim->hdma[TIM_DMA_ID_CC4]->XferErrorCallback = TIM_DMAError ;
// 1026 
// 1027       /* Enable the DMA stream */
// 1028       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC4], (uint32_t)pData, (uint32_t)&htim->Instance->CCR4, Length) != HAL_OK)
// 1029       {
// 1030         return HAL_ERROR;
// 1031       }
// 1032       /* Enable the TIM Capture/Compare 4 DMA request */
// 1033       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC4);
// 1034       break;
// 1035     }
// 1036 
// 1037     default:
// 1038       break;
// 1039   }
// 1040 
// 1041   /* Enable the Output compare channel */
// 1042   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_ENABLE);
// 1043 
// 1044   if (IS_TIM_BREAK_INSTANCE(htim->Instance) != RESET)
// 1045   {
// 1046     /* Enable the main output */
// 1047     __HAL_TIM_MOE_ENABLE(htim);
// 1048   }
// 1049 
// 1050   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
// 1051   tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
// 1052   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
// 1053   {
// 1054     __HAL_TIM_ENABLE(htim);
// 1055   }
// 1056 
// 1057   /* Return function status */
// 1058   return HAL_OK;
// 1059 }
// 1060 
// 1061 /**
// 1062   * @brief  Stops the TIM Output Compare signal generation in DMA mode.
// 1063   * @param  htim TIM Output Compare handle
// 1064   * @param  Channel TIM Channel to be disabled
// 1065   *          This parameter can be one of the following values:
// 1066   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1067   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1068   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1069   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 1070   * @retval HAL status
// 1071   */
// 1072 HAL_StatusTypeDef HAL_TIM_OC_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel)
// 1073 {
// 1074   /* Check the parameters */
// 1075   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 1076 
// 1077   switch (Channel)
// 1078   {
// 1079     case TIM_CHANNEL_1:
// 1080     {
// 1081       /* Disable the TIM Capture/Compare 1 DMA request */
// 1082       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC1);
// 1083       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC1]);
// 1084       break;
// 1085     }
// 1086 
// 1087     case TIM_CHANNEL_2:
// 1088     {
// 1089       /* Disable the TIM Capture/Compare 2 DMA request */
// 1090       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC2);
// 1091       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC2]);
// 1092       break;
// 1093     }
// 1094 
// 1095     case TIM_CHANNEL_3:
// 1096     {
// 1097       /* Disable the TIM Capture/Compare 3 DMA request */
// 1098       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC3);
// 1099       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC3]);
// 1100       break;
// 1101     }
// 1102 
// 1103     case TIM_CHANNEL_4:
// 1104     {
// 1105       /* Disable the TIM Capture/Compare 4 interrupt */
// 1106       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC4);
// 1107       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC4]);
// 1108       break;
// 1109     }
// 1110 
// 1111     default:
// 1112       break;
// 1113   }
// 1114 
// 1115   /* Disable the Output compare channel */
// 1116   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_DISABLE);
// 1117 
// 1118   if (IS_TIM_BREAK_INSTANCE(htim->Instance) != RESET)
// 1119   {
// 1120     /* Disable the Main Output */
// 1121     __HAL_TIM_MOE_DISABLE(htim);
// 1122   }
// 1123 
// 1124   /* Disable the Peripheral */
// 1125   __HAL_TIM_DISABLE(htim);
// 1126 
// 1127   /* Change the htim state */
// 1128   htim->State = HAL_TIM_STATE_READY;
// 1129 
// 1130   /* Return function status */
// 1131   return HAL_OK;
// 1132 }
// 1133 
// 1134 /**
// 1135   * @}
// 1136   */
// 1137 
// 1138 /** @defgroup TIM_Exported_Functions_Group3 TIM PWM functions
// 1139  *  @brief    TIM PWM functions
// 1140  *
// 1141 @verbatim
// 1142   ==============================================================================
// 1143                           ##### TIM PWM functions #####
// 1144   ==============================================================================
// 1145   [..]
// 1146     This section provides functions allowing to:
// 1147     (+) Initialize and configure the TIM PWM.
// 1148     (+) De-initialize the TIM PWM.
// 1149     (+) Start the TIM PWM.
// 1150     (+) Stop the TIM PWM.
// 1151     (+) Start the TIM PWM and enable interrupt.
// 1152     (+) Stop the TIM PWM and disable interrupt.
// 1153     (+) Start the TIM PWM and enable DMA transfer.
// 1154     (+) Stop the TIM PWM and disable DMA transfer.
// 1155 
// 1156 @endverbatim
// 1157   * @{
// 1158   */
// 1159 /**
// 1160   * @brief  Initializes the TIM PWM Time Base according to the specified
// 1161   *         parameters in the TIM_HandleTypeDef and initializes the associated handle.
// 1162   * @note   Switching from Center Aligned counter mode to Edge counter mode (or reverse)
// 1163   *         requires a timer reset to avoid unexpected direction
// 1164   *         due to DIR bit readonly in center aligned mode.
// 1165   *         Ex: call @ref HAL_TIM_PWM_DeInit() before HAL_TIM_PWM_Init()
// 1166   * @param  htim TIM PWM handle
// 1167   * @retval HAL status
// 1168   */
// 1169 HAL_StatusTypeDef HAL_TIM_PWM_Init(TIM_HandleTypeDef *htim)
// 1170 {
// 1171   /* Check the TIM handle allocation */
// 1172   if (htim == NULL)
// 1173   {
// 1174     return HAL_ERROR;
// 1175   }
// 1176 
// 1177   /* Check the parameters */
// 1178   assert_param(IS_TIM_INSTANCE(htim->Instance));
// 1179   assert_param(IS_TIM_COUNTER_MODE(htim->Init.CounterMode));
// 1180   assert_param(IS_TIM_CLOCKDIVISION_DIV(htim->Init.ClockDivision));
// 1181   assert_param(IS_TIM_AUTORELOAD_PRELOAD(htim->Init.AutoReloadPreload));
// 1182 
// 1183   if (htim->State == HAL_TIM_STATE_RESET)
// 1184   {
// 1185     /* Allocate lock resource and initialize it */
// 1186     htim->Lock = HAL_UNLOCKED;
// 1187 
// 1188 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 1189     /* Reset interrupt callbacks to legacy weak callbacks */
// 1190     TIM_ResetCallback(htim);
// 1191 
// 1192     if (htim->PWM_MspInitCallback == NULL)
// 1193     {
// 1194       htim->PWM_MspInitCallback = HAL_TIM_PWM_MspInit;
// 1195     }
// 1196     /* Init the low level hardware : GPIO, CLOCK, NVIC */
// 1197     htim->PWM_MspInitCallback(htim);
// 1198 #else
// 1199     /* Init the low level hardware : GPIO, CLOCK, NVIC and DMA */
// 1200     HAL_TIM_PWM_MspInit(htim);
// 1201 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 1202   }
// 1203 
// 1204   /* Set the TIM state */
// 1205   htim->State = HAL_TIM_STATE_BUSY;
// 1206 
// 1207   /* Init the base time for the PWM */
// 1208   TIM_Base_SetConfig(htim->Instance, &htim->Init);
// 1209 
// 1210   /* Initialize the TIM state*/
// 1211   htim->State = HAL_TIM_STATE_READY;
// 1212 
// 1213   return HAL_OK;
// 1214 }
// 1215 
// 1216 /**
// 1217   * @brief  DeInitializes the TIM peripheral
// 1218   * @param  htim TIM PWM handle
// 1219   * @retval HAL status
// 1220   */
// 1221 HAL_StatusTypeDef HAL_TIM_PWM_DeInit(TIM_HandleTypeDef *htim)
// 1222 {
// 1223   /* Check the parameters */
// 1224   assert_param(IS_TIM_INSTANCE(htim->Instance));
// 1225 
// 1226   htim->State = HAL_TIM_STATE_BUSY;
// 1227 
// 1228   /* Disable the TIM Peripheral Clock */
// 1229   __HAL_TIM_DISABLE(htim);
// 1230 
// 1231 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 1232   if (htim->PWM_MspDeInitCallback == NULL)
// 1233   {
// 1234     htim->PWM_MspDeInitCallback = HAL_TIM_PWM_MspDeInit;
// 1235   }
// 1236   /* DeInit the low level hardware */
// 1237   htim->PWM_MspDeInitCallback(htim);
// 1238 #else
// 1239   /* DeInit the low level hardware: GPIO, CLOCK, NVIC and DMA */
// 1240   HAL_TIM_PWM_MspDeInit(htim);
// 1241 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 1242 
// 1243   /* Change TIM state */
// 1244   htim->State = HAL_TIM_STATE_RESET;
// 1245 
// 1246   /* Release Lock */
// 1247   __HAL_UNLOCK(htim);
// 1248 
// 1249   return HAL_OK;
// 1250 }
// 1251 
// 1252 /**
// 1253   * @brief  Initializes the TIM PWM MSP.
// 1254   * @param  htim TIM PWM handle
// 1255   * @retval None
// 1256   */
// 1257 __weak void HAL_TIM_PWM_MspInit(TIM_HandleTypeDef *htim)
// 1258 {
// 1259   /* Prevent unused argument(s) compilation warning */
// 1260   UNUSED(htim);
// 1261 
// 1262   /* NOTE : This function should not be modified, when the callback is needed,
// 1263             the HAL_TIM_PWM_MspInit could be implemented in the user file
// 1264    */
// 1265 }
// 1266 
// 1267 /**
// 1268   * @brief  DeInitializes TIM PWM MSP.
// 1269   * @param  htim TIM PWM handle
// 1270   * @retval None
// 1271   */
// 1272 __weak void HAL_TIM_PWM_MspDeInit(TIM_HandleTypeDef *htim)
// 1273 {
// 1274   /* Prevent unused argument(s) compilation warning */
// 1275   UNUSED(htim);
// 1276 
// 1277   /* NOTE : This function should not be modified, when the callback is needed,
// 1278             the HAL_TIM_PWM_MspDeInit could be implemented in the user file
// 1279    */
// 1280 }
// 1281 
// 1282 /**
// 1283   * @brief  Starts the PWM signal generation.
// 1284   * @param  htim TIM handle
// 1285   * @param  Channel TIM Channels to be enabled
// 1286   *          This parameter can be one of the following values:
// 1287   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1288   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1289   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1290   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 1291   *            @arg TIM_CHANNEL_5: TIM Channel 5 selected
// 1292   *            @arg TIM_CHANNEL_6: TIM Channel 6 selected
// 1293   * @retval HAL status
// 1294   */
// 1295 HAL_StatusTypeDef HAL_TIM_PWM_Start(TIM_HandleTypeDef *htim, uint32_t Channel)
// 1296 {
// 1297   uint32_t tmpsmcr;
// 1298 
// 1299   /* Check the parameters */
// 1300   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 1301 
// 1302   /* Enable the Capture compare channel */
// 1303   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_ENABLE);
// 1304 
// 1305   if (IS_TIM_BREAK_INSTANCE(htim->Instance) != RESET)
// 1306   {
// 1307     /* Enable the main output */
// 1308     __HAL_TIM_MOE_ENABLE(htim);
// 1309   }
// 1310 
// 1311   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
// 1312   tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
// 1313   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
// 1314   {
// 1315     __HAL_TIM_ENABLE(htim);
// 1316   }
// 1317 
// 1318   /* Return function status */
// 1319   return HAL_OK;
// 1320 }
// 1321 
// 1322 /**
// 1323   * @brief  Stops the PWM signal generation.
// 1324   * @param  htim TIM PWM handle
// 1325   * @param  Channel TIM Channels to be disabled
// 1326   *          This parameter can be one of the following values:
// 1327   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1328   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1329   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1330   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 1331   *            @arg TIM_CHANNEL_5: TIM Channel 5 selected
// 1332   *            @arg TIM_CHANNEL_6: TIM Channel 6 selected
// 1333   * @retval HAL status
// 1334   */
// 1335 HAL_StatusTypeDef HAL_TIM_PWM_Stop(TIM_HandleTypeDef *htim, uint32_t Channel)
// 1336 {
// 1337   /* Check the parameters */
// 1338   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 1339 
// 1340   /* Disable the Capture compare channel */
// 1341   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_DISABLE);
// 1342 
// 1343   if (IS_TIM_BREAK_INSTANCE(htim->Instance) != RESET)
// 1344   {
// 1345     /* Disable the Main Output */
// 1346     __HAL_TIM_MOE_DISABLE(htim);
// 1347   }
// 1348 
// 1349   /* Disable the Peripheral */
// 1350   __HAL_TIM_DISABLE(htim);
// 1351 
// 1352   /* Change the htim state */
// 1353   htim->State = HAL_TIM_STATE_READY;
// 1354 
// 1355   /* Return function status */
// 1356   return HAL_OK;
// 1357 }
// 1358 
// 1359 /**
// 1360   * @brief  Starts the PWM signal generation in interrupt mode.
// 1361   * @param  htim TIM PWM handle
// 1362   * @param  Channel TIM Channel to be enabled
// 1363   *          This parameter can be one of the following values:
// 1364   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1365   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1366   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1367   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 1368   * @retval HAL status
// 1369   */
// 1370 HAL_StatusTypeDef HAL_TIM_PWM_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
// 1371 {
// 1372   uint32_t tmpsmcr;
// 1373   /* Check the parameters */
// 1374   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 1375 
// 1376   switch (Channel)
// 1377   {
// 1378     case TIM_CHANNEL_1:
// 1379     {
// 1380       /* Enable the TIM Capture/Compare 1 interrupt */
// 1381       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC1);
// 1382       break;
// 1383     }
// 1384 
// 1385     case TIM_CHANNEL_2:
// 1386     {
// 1387       /* Enable the TIM Capture/Compare 2 interrupt */
// 1388       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC2);
// 1389       break;
// 1390     }
// 1391 
// 1392     case TIM_CHANNEL_3:
// 1393     {
// 1394       /* Enable the TIM Capture/Compare 3 interrupt */
// 1395       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC3);
// 1396       break;
// 1397     }
// 1398 
// 1399     case TIM_CHANNEL_4:
// 1400     {
// 1401       /* Enable the TIM Capture/Compare 4 interrupt */
// 1402       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC4);
// 1403       break;
// 1404     }
// 1405 
// 1406     default:
// 1407       break;
// 1408   }
// 1409 
// 1410   /* Enable the Capture compare channel */
// 1411   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_ENABLE);
// 1412 
// 1413   if (IS_TIM_BREAK_INSTANCE(htim->Instance) != RESET)
// 1414   {
// 1415     /* Enable the main output */
// 1416     __HAL_TIM_MOE_ENABLE(htim);
// 1417   }
// 1418 
// 1419   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
// 1420   tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
// 1421   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
// 1422   {
// 1423     __HAL_TIM_ENABLE(htim);
// 1424   }
// 1425 
// 1426   /* Return function status */
// 1427   return HAL_OK;
// 1428 }
// 1429 
// 1430 /**
// 1431   * @brief  Stops the PWM signal generation in interrupt mode.
// 1432   * @param  htim TIM PWM handle
// 1433   * @param  Channel TIM Channels to be disabled
// 1434   *          This parameter can be one of the following values:
// 1435   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1436   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1437   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1438   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 1439   * @retval HAL status
// 1440   */
// 1441 HAL_StatusTypeDef HAL_TIM_PWM_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
// 1442 {
// 1443   /* Check the parameters */
// 1444   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 1445 
// 1446   switch (Channel)
// 1447   {
// 1448     case TIM_CHANNEL_1:
// 1449     {
// 1450       /* Disable the TIM Capture/Compare 1 interrupt */
// 1451       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC1);
// 1452       break;
// 1453     }
// 1454 
// 1455     case TIM_CHANNEL_2:
// 1456     {
// 1457       /* Disable the TIM Capture/Compare 2 interrupt */
// 1458       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC2);
// 1459       break;
// 1460     }
// 1461 
// 1462     case TIM_CHANNEL_3:
// 1463     {
// 1464       /* Disable the TIM Capture/Compare 3 interrupt */
// 1465       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC3);
// 1466       break;
// 1467     }
// 1468 
// 1469     case TIM_CHANNEL_4:
// 1470     {
// 1471       /* Disable the TIM Capture/Compare 4 interrupt */
// 1472       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC4);
// 1473       break;
// 1474     }
// 1475 
// 1476     default:
// 1477       break;
// 1478   }
// 1479 
// 1480   /* Disable the Capture compare channel */
// 1481   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_DISABLE);
// 1482 
// 1483   if (IS_TIM_BREAK_INSTANCE(htim->Instance) != RESET)
// 1484   {
// 1485     /* Disable the Main Output */
// 1486     __HAL_TIM_MOE_DISABLE(htim);
// 1487   }
// 1488 
// 1489   /* Disable the Peripheral */
// 1490   __HAL_TIM_DISABLE(htim);
// 1491 
// 1492   /* Return function status */
// 1493   return HAL_OK;
// 1494 }
// 1495 
// 1496 /**
// 1497   * @brief  Starts the TIM PWM signal generation in DMA mode.
// 1498   * @param  htim TIM PWM handle
// 1499   * @param  Channel TIM Channels to be enabled
// 1500   *          This parameter can be one of the following values:
// 1501   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1502   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1503   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1504   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 1505   * @param  pData The source Buffer address.
// 1506   * @param  Length The length of data to be transferred from memory to TIM peripheral
// 1507   * @retval HAL status
// 1508   */
// 1509 HAL_StatusTypeDef HAL_TIM_PWM_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pData, uint16_t Length)
// 1510 {
// 1511   uint32_t tmpsmcr;
// 1512 
// 1513   /* Check the parameters */
// 1514   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 1515 
// 1516   if ((htim->State == HAL_TIM_STATE_BUSY))
// 1517   {
// 1518     return HAL_BUSY;
// 1519   }
// 1520   else if ((htim->State == HAL_TIM_STATE_READY))
// 1521   {
// 1522     if ((pData == NULL) && (Length > 0U))
// 1523     {
// 1524       return HAL_ERROR;
// 1525     }
// 1526     else
// 1527     {
// 1528       htim->State = HAL_TIM_STATE_BUSY;
// 1529     }
// 1530   }
// 1531   else
// 1532   {
// 1533     /* nothing to do */
// 1534   }
// 1535 
// 1536   switch (Channel)
// 1537   {
// 1538     case TIM_CHANNEL_1:
// 1539     {
// 1540       /* Set the DMA compare callbacks */
// 1541       htim->hdma[TIM_DMA_ID_CC1]->XferCpltCallback = TIM_DMADelayPulseCplt;
// 1542       htim->hdma[TIM_DMA_ID_CC1]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
// 1543 
// 1544       /* Set the DMA error callback */
// 1545       htim->hdma[TIM_DMA_ID_CC1]->XferErrorCallback = TIM_DMAError ;
// 1546 
// 1547       /* Enable the DMA stream */
// 1548       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC1], (uint32_t)pData, (uint32_t)&htim->Instance->CCR1, Length) != HAL_OK)
// 1549       {
// 1550         return HAL_ERROR;
// 1551       }
// 1552 
// 1553       /* Enable the TIM Capture/Compare 1 DMA request */
// 1554       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC1);
// 1555       break;
// 1556     }
// 1557 
// 1558     case TIM_CHANNEL_2:
// 1559     {
// 1560       /* Set the DMA compare callbacks */
// 1561       htim->hdma[TIM_DMA_ID_CC2]->XferCpltCallback = TIM_DMADelayPulseCplt;
// 1562       htim->hdma[TIM_DMA_ID_CC2]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
// 1563 
// 1564       /* Set the DMA error callback */
// 1565       htim->hdma[TIM_DMA_ID_CC2]->XferErrorCallback = TIM_DMAError ;
// 1566 
// 1567       /* Enable the DMA stream */
// 1568       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC2], (uint32_t)pData, (uint32_t)&htim->Instance->CCR2, Length) != HAL_OK)
// 1569       {
// 1570         return HAL_ERROR;
// 1571       }
// 1572       /* Enable the TIM Capture/Compare 2 DMA request */
// 1573       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC2);
// 1574       break;
// 1575     }
// 1576 
// 1577     case TIM_CHANNEL_3:
// 1578     {
// 1579       /* Set the DMA compare callbacks */
// 1580       htim->hdma[TIM_DMA_ID_CC3]->XferCpltCallback = TIM_DMADelayPulseCplt;
// 1581       htim->hdma[TIM_DMA_ID_CC3]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
// 1582 
// 1583       /* Set the DMA error callback */
// 1584       htim->hdma[TIM_DMA_ID_CC3]->XferErrorCallback = TIM_DMAError ;
// 1585 
// 1586       /* Enable the DMA stream */
// 1587       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC3], (uint32_t)pData, (uint32_t)&htim->Instance->CCR3, Length) != HAL_OK)
// 1588       {
// 1589         return HAL_ERROR;
// 1590       }
// 1591       /* Enable the TIM Output Capture/Compare 3 request */
// 1592       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC3);
// 1593       break;
// 1594     }
// 1595 
// 1596     case TIM_CHANNEL_4:
// 1597     {
// 1598       /* Set the DMA compare callbacks */
// 1599       htim->hdma[TIM_DMA_ID_CC4]->XferCpltCallback = TIM_DMADelayPulseCplt;
// 1600       htim->hdma[TIM_DMA_ID_CC4]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
// 1601 
// 1602       /* Set the DMA error callback */
// 1603       htim->hdma[TIM_DMA_ID_CC4]->XferErrorCallback = TIM_DMAError ;
// 1604 
// 1605       /* Enable the DMA stream */
// 1606       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC4], (uint32_t)pData, (uint32_t)&htim->Instance->CCR4, Length) != HAL_OK)
// 1607       {
// 1608         return HAL_ERROR;
// 1609       }
// 1610       /* Enable the TIM Capture/Compare 4 DMA request */
// 1611       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC4);
// 1612       break;
// 1613     }
// 1614 
// 1615     default:
// 1616       break;
// 1617   }
// 1618 
// 1619   /* Enable the Capture compare channel */
// 1620   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_ENABLE);
// 1621 
// 1622   if (IS_TIM_BREAK_INSTANCE(htim->Instance) != RESET)
// 1623   {
// 1624     /* Enable the main output */
// 1625     __HAL_TIM_MOE_ENABLE(htim);
// 1626   }
// 1627 
// 1628   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
// 1629   tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
// 1630   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
// 1631   {
// 1632     __HAL_TIM_ENABLE(htim);
// 1633   }
// 1634 
// 1635   /* Return function status */
// 1636   return HAL_OK;
// 1637 }
// 1638 
// 1639 /**
// 1640   * @brief  Stops the TIM PWM signal generation in DMA mode.
// 1641   * @param  htim TIM PWM handle
// 1642   * @param  Channel TIM Channels to be disabled
// 1643   *          This parameter can be one of the following values:
// 1644   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1645   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1646   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1647   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 1648   * @retval HAL status
// 1649   */
// 1650 HAL_StatusTypeDef HAL_TIM_PWM_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel)
// 1651 {
// 1652   /* Check the parameters */
// 1653   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 1654 
// 1655   switch (Channel)
// 1656   {
// 1657     case TIM_CHANNEL_1:
// 1658     {
// 1659       /* Disable the TIM Capture/Compare 1 DMA request */
// 1660       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC1);
// 1661       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC1]);
// 1662       break;
// 1663     }
// 1664 
// 1665     case TIM_CHANNEL_2:
// 1666     {
// 1667       /* Disable the TIM Capture/Compare 2 DMA request */
// 1668       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC2);
// 1669       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC2]);
// 1670       break;
// 1671     }
// 1672 
// 1673     case TIM_CHANNEL_3:
// 1674     {
// 1675       /* Disable the TIM Capture/Compare 3 DMA request */
// 1676       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC3);
// 1677       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC3]);
// 1678       break;
// 1679     }
// 1680 
// 1681     case TIM_CHANNEL_4:
// 1682     {
// 1683       /* Disable the TIM Capture/Compare 4 interrupt */
// 1684       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC4);
// 1685       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC4]);
// 1686       break;
// 1687     }
// 1688 
// 1689     default:
// 1690       break;
// 1691   }
// 1692 
// 1693   /* Disable the Capture compare channel */
// 1694   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_DISABLE);
// 1695 
// 1696   if (IS_TIM_BREAK_INSTANCE(htim->Instance) != RESET)
// 1697   {
// 1698     /* Disable the Main Output */
// 1699     __HAL_TIM_MOE_DISABLE(htim);
// 1700   }
// 1701 
// 1702   /* Disable the Peripheral */
// 1703   __HAL_TIM_DISABLE(htim);
// 1704 
// 1705   /* Change the htim state */
// 1706   htim->State = HAL_TIM_STATE_READY;
// 1707 
// 1708   /* Return function status */
// 1709   return HAL_OK;
// 1710 }
// 1711 
// 1712 /**
// 1713   * @}
// 1714   */
// 1715 
// 1716 /** @defgroup TIM_Exported_Functions_Group4 TIM Input Capture functions
// 1717  *  @brief    TIM Input Capture functions
// 1718  *
// 1719 @verbatim
// 1720   ==============================================================================
// 1721               ##### TIM Input Capture functions #####
// 1722   ==============================================================================
// 1723  [..]
// 1724    This section provides functions allowing to:
// 1725    (+) Initialize and configure the TIM Input Capture.
// 1726    (+) De-initialize the TIM Input Capture.
// 1727    (+) Start the TIM Input Capture.
// 1728    (+) Stop the TIM Input Capture.
// 1729    (+) Start the TIM Input Capture and enable interrupt.
// 1730    (+) Stop the TIM Input Capture and disable interrupt.
// 1731    (+) Start the TIM Input Capture and enable DMA transfer.
// 1732    (+) Stop the TIM Input Capture and disable DMA transfer.
// 1733 
// 1734 @endverbatim
// 1735   * @{
// 1736   */
// 1737 /**
// 1738   * @brief  Initializes the TIM Input Capture Time base according to the specified
// 1739   *         parameters in the TIM_HandleTypeDef and initializes the associated handle.
// 1740   * @note   Switching from Center Aligned counter mode to Edge counter mode (or reverse)
// 1741   *         requires a timer reset to avoid unexpected direction
// 1742   *         due to DIR bit readonly in center aligned mode.
// 1743   *         Ex: call @ref HAL_TIM_IC_DeInit() before HAL_TIM_IC_Init()
// 1744   * @param  htim TIM Input Capture handle
// 1745   * @retval HAL status
// 1746   */
// 1747 HAL_StatusTypeDef HAL_TIM_IC_Init(TIM_HandleTypeDef *htim)
// 1748 {
// 1749   /* Check the TIM handle allocation */
// 1750   if (htim == NULL)
// 1751   {
// 1752     return HAL_ERROR;
// 1753   }
// 1754 
// 1755   /* Check the parameters */
// 1756   assert_param(IS_TIM_INSTANCE(htim->Instance));
// 1757   assert_param(IS_TIM_COUNTER_MODE(htim->Init.CounterMode));
// 1758   assert_param(IS_TIM_CLOCKDIVISION_DIV(htim->Init.ClockDivision));
// 1759   assert_param(IS_TIM_AUTORELOAD_PRELOAD(htim->Init.AutoReloadPreload));
// 1760 
// 1761   if (htim->State == HAL_TIM_STATE_RESET)
// 1762   {
// 1763     /* Allocate lock resource and initialize it */
// 1764     htim->Lock = HAL_UNLOCKED;
// 1765 
// 1766 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 1767     /* Reset interrupt callbacks to legacy weak callbacks */
// 1768     TIM_ResetCallback(htim);
// 1769 
// 1770     if (htim->IC_MspInitCallback == NULL)
// 1771     {
// 1772       htim->IC_MspInitCallback = HAL_TIM_IC_MspInit;
// 1773     }
// 1774     /* Init the low level hardware : GPIO, CLOCK, NVIC */
// 1775     htim->IC_MspInitCallback(htim);
// 1776 #else
// 1777     /* Init the low level hardware : GPIO, CLOCK, NVIC and DMA */
// 1778     HAL_TIM_IC_MspInit(htim);
// 1779 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 1780   }
// 1781 
// 1782   /* Set the TIM state */
// 1783   htim->State = HAL_TIM_STATE_BUSY;
// 1784 
// 1785   /* Init the base time for the input capture */
// 1786   TIM_Base_SetConfig(htim->Instance, &htim->Init);
// 1787 
// 1788   /* Initialize the TIM state*/
// 1789   htim->State = HAL_TIM_STATE_READY;
// 1790 
// 1791   return HAL_OK;
// 1792 }
// 1793 
// 1794 /**
// 1795   * @brief  DeInitializes the TIM peripheral
// 1796   * @param  htim TIM Input Capture handle
// 1797   * @retval HAL status
// 1798   */
// 1799 HAL_StatusTypeDef HAL_TIM_IC_DeInit(TIM_HandleTypeDef *htim)
// 1800 {
// 1801   /* Check the parameters */
// 1802   assert_param(IS_TIM_INSTANCE(htim->Instance));
// 1803 
// 1804   htim->State = HAL_TIM_STATE_BUSY;
// 1805 
// 1806   /* Disable the TIM Peripheral Clock */
// 1807   __HAL_TIM_DISABLE(htim);
// 1808 
// 1809 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 1810   if (htim->IC_MspDeInitCallback == NULL)
// 1811   {
// 1812     htim->IC_MspDeInitCallback = HAL_TIM_IC_MspDeInit;
// 1813   }
// 1814   /* DeInit the low level hardware */
// 1815   htim->IC_MspDeInitCallback(htim);
// 1816 #else
// 1817   /* DeInit the low level hardware: GPIO, CLOCK, NVIC and DMA */
// 1818   HAL_TIM_IC_MspDeInit(htim);
// 1819 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 1820 
// 1821   /* Change TIM state */
// 1822   htim->State = HAL_TIM_STATE_RESET;
// 1823 
// 1824   /* Release Lock */
// 1825   __HAL_UNLOCK(htim);
// 1826 
// 1827   return HAL_OK;
// 1828 }
// 1829 
// 1830 /**
// 1831   * @brief  Initializes the TIM Input Capture MSP.
// 1832   * @param  htim TIM Input Capture handle
// 1833   * @retval None
// 1834   */
// 1835 __weak void HAL_TIM_IC_MspInit(TIM_HandleTypeDef *htim)
// 1836 {
// 1837   /* Prevent unused argument(s) compilation warning */
// 1838   UNUSED(htim);
// 1839 
// 1840   /* NOTE : This function should not be modified, when the callback is needed,
// 1841             the HAL_TIM_IC_MspInit could be implemented in the user file
// 1842    */
// 1843 }
// 1844 
// 1845 /**
// 1846   * @brief  DeInitializes TIM Input Capture MSP.
// 1847   * @param  htim TIM handle
// 1848   * @retval None
// 1849   */
// 1850 __weak void HAL_TIM_IC_MspDeInit(TIM_HandleTypeDef *htim)
// 1851 {
// 1852   /* Prevent unused argument(s) compilation warning */
// 1853   UNUSED(htim);
// 1854 
// 1855   /* NOTE : This function should not be modified, when the callback is needed,
// 1856             the HAL_TIM_IC_MspDeInit could be implemented in the user file
// 1857    */
// 1858 }
// 1859 
// 1860 /**
// 1861   * @brief  Starts the TIM Input Capture measurement.
// 1862   * @param  htim TIM Input Capture handle
// 1863   * @param  Channel TIM Channels to be enabled
// 1864   *          This parameter can be one of the following values:
// 1865   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1866   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1867   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1868   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 1869   * @retval HAL status
// 1870   */
// 1871 HAL_StatusTypeDef HAL_TIM_IC_Start(TIM_HandleTypeDef *htim, uint32_t Channel)
// 1872 {
// 1873   uint32_t tmpsmcr;
// 1874 
// 1875   /* Check the parameters */
// 1876   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 1877 
// 1878   /* Enable the Input Capture channel */
// 1879   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_ENABLE);
// 1880 
// 1881   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
// 1882   tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
// 1883   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
// 1884   {
// 1885     __HAL_TIM_ENABLE(htim);
// 1886   }
// 1887 
// 1888   /* Return function status */
// 1889   return HAL_OK;
// 1890 }
// 1891 
// 1892 /**
// 1893   * @brief  Stops the TIM Input Capture measurement.
// 1894   * @param  htim TIM Input Capture handle
// 1895   * @param  Channel TIM Channels to be disabled
// 1896   *          This parameter can be one of the following values:
// 1897   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1898   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1899   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1900   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 1901   * @retval HAL status
// 1902   */
// 1903 HAL_StatusTypeDef HAL_TIM_IC_Stop(TIM_HandleTypeDef *htim, uint32_t Channel)
// 1904 {
// 1905   /* Check the parameters */
// 1906   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 1907 
// 1908   /* Disable the Input Capture channel */
// 1909   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_DISABLE);
// 1910 
// 1911   /* Disable the Peripheral */
// 1912   __HAL_TIM_DISABLE(htim);
// 1913 
// 1914   /* Return function status */
// 1915   return HAL_OK;
// 1916 }
// 1917 
// 1918 /**
// 1919   * @brief  Starts the TIM Input Capture measurement in interrupt mode.
// 1920   * @param  htim TIM Input Capture handle
// 1921   * @param  Channel TIM Channels to be enabled
// 1922   *          This parameter can be one of the following values:
// 1923   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1924   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1925   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1926   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 1927   * @retval HAL status
// 1928   */
// 1929 HAL_StatusTypeDef HAL_TIM_IC_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
// 1930 {
// 1931   uint32_t tmpsmcr;
// 1932 
// 1933   /* Check the parameters */
// 1934   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 1935 
// 1936   switch (Channel)
// 1937   {
// 1938     case TIM_CHANNEL_1:
// 1939     {
// 1940       /* Enable the TIM Capture/Compare 1 interrupt */
// 1941       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC1);
// 1942       break;
// 1943     }
// 1944 
// 1945     case TIM_CHANNEL_2:
// 1946     {
// 1947       /* Enable the TIM Capture/Compare 2 interrupt */
// 1948       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC2);
// 1949       break;
// 1950     }
// 1951 
// 1952     case TIM_CHANNEL_3:
// 1953     {
// 1954       /* Enable the TIM Capture/Compare 3 interrupt */
// 1955       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC3);
// 1956       break;
// 1957     }
// 1958 
// 1959     case TIM_CHANNEL_4:
// 1960     {
// 1961       /* Enable the TIM Capture/Compare 4 interrupt */
// 1962       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC4);
// 1963       break;
// 1964     }
// 1965 
// 1966     default:
// 1967       break;
// 1968   }
// 1969   /* Enable the Input Capture channel */
// 1970   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_ENABLE);
// 1971 
// 1972   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
// 1973   tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
// 1974   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
// 1975   {
// 1976     __HAL_TIM_ENABLE(htim);
// 1977   }
// 1978 
// 1979   /* Return function status */
// 1980   return HAL_OK;
// 1981 }
// 1982 
// 1983 /**
// 1984   * @brief  Stops the TIM Input Capture measurement in interrupt mode.
// 1985   * @param  htim TIM Input Capture handle
// 1986   * @param  Channel TIM Channels to be disabled
// 1987   *          This parameter can be one of the following values:
// 1988   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1989   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1990   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1991   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 1992   * @retval HAL status
// 1993   */
// 1994 HAL_StatusTypeDef HAL_TIM_IC_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
// 1995 {
// 1996   /* Check the parameters */
// 1997   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 1998 
// 1999   switch (Channel)
// 2000   {
// 2001     case TIM_CHANNEL_1:
// 2002     {
// 2003       /* Disable the TIM Capture/Compare 1 interrupt */
// 2004       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC1);
// 2005       break;
// 2006     }
// 2007 
// 2008     case TIM_CHANNEL_2:
// 2009     {
// 2010       /* Disable the TIM Capture/Compare 2 interrupt */
// 2011       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC2);
// 2012       break;
// 2013     }
// 2014 
// 2015     case TIM_CHANNEL_3:
// 2016     {
// 2017       /* Disable the TIM Capture/Compare 3 interrupt */
// 2018       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC3);
// 2019       break;
// 2020     }
// 2021 
// 2022     case TIM_CHANNEL_4:
// 2023     {
// 2024       /* Disable the TIM Capture/Compare 4 interrupt */
// 2025       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC4);
// 2026       break;
// 2027     }
// 2028 
// 2029     default:
// 2030       break;
// 2031   }
// 2032 
// 2033   /* Disable the Input Capture channel */
// 2034   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_DISABLE);
// 2035 
// 2036   /* Disable the Peripheral */
// 2037   __HAL_TIM_DISABLE(htim);
// 2038 
// 2039   /* Return function status */
// 2040   return HAL_OK;
// 2041 }
// 2042 
// 2043 /**
// 2044   * @brief  Starts the TIM Input Capture measurement in DMA mode.
// 2045   * @param  htim TIM Input Capture handle
// 2046   * @param  Channel TIM Channels to be enabled
// 2047   *          This parameter can be one of the following values:
// 2048   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 2049   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 2050   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 2051   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 2052   * @param  pData The destination Buffer address.
// 2053   * @param  Length The length of data to be transferred from TIM peripheral to memory.
// 2054   * @retval HAL status
// 2055   */
// 2056 HAL_StatusTypeDef HAL_TIM_IC_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pData, uint16_t Length)
// 2057 {
// 2058   uint32_t tmpsmcr;
// 2059 
// 2060   /* Check the parameters */
// 2061   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 2062   assert_param(IS_TIM_DMA_CC_INSTANCE(htim->Instance));
// 2063 
// 2064   if ((htim->State == HAL_TIM_STATE_BUSY))
// 2065   {
// 2066     return HAL_BUSY;
// 2067   }
// 2068   else if ((htim->State == HAL_TIM_STATE_READY))
// 2069   {
// 2070     if ((pData == NULL) && (Length > 0U))
// 2071     {
// 2072       return HAL_ERROR;
// 2073     }
// 2074     else
// 2075     {
// 2076       htim->State = HAL_TIM_STATE_BUSY;
// 2077     }
// 2078   }
// 2079   else
// 2080   {
// 2081     /* nothing to do */
// 2082   }
// 2083 
// 2084   switch (Channel)
// 2085   {
// 2086     case TIM_CHANNEL_1:
// 2087     {
// 2088       /* Set the DMA capture callbacks */
// 2089       htim->hdma[TIM_DMA_ID_CC1]->XferCpltCallback = TIM_DMACaptureCplt;
// 2090       htim->hdma[TIM_DMA_ID_CC1]->XferHalfCpltCallback = TIM_DMACaptureHalfCplt;
// 2091 
// 2092       /* Set the DMA error callback */
// 2093       htim->hdma[TIM_DMA_ID_CC1]->XferErrorCallback = TIM_DMAError ;
// 2094 
// 2095       /* Enable the DMA stream */
// 2096       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC1], (uint32_t)&htim->Instance->CCR1, (uint32_t)pData, Length) != HAL_OK)
// 2097       {
// 2098         return HAL_ERROR;
// 2099       }
// 2100       /* Enable the TIM Capture/Compare 1 DMA request */
// 2101       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC1);
// 2102       break;
// 2103     }
// 2104 
// 2105     case TIM_CHANNEL_2:
// 2106     {
// 2107       /* Set the DMA capture callbacks */
// 2108       htim->hdma[TIM_DMA_ID_CC2]->XferCpltCallback = TIM_DMACaptureCplt;
// 2109       htim->hdma[TIM_DMA_ID_CC2]->XferHalfCpltCallback = TIM_DMACaptureHalfCplt;
// 2110 
// 2111       /* Set the DMA error callback */
// 2112       htim->hdma[TIM_DMA_ID_CC2]->XferErrorCallback = TIM_DMAError ;
// 2113 
// 2114       /* Enable the DMA stream */
// 2115       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC2], (uint32_t)&htim->Instance->CCR2, (uint32_t)pData, Length) != HAL_OK)
// 2116       {
// 2117         return HAL_ERROR;
// 2118       }
// 2119       /* Enable the TIM Capture/Compare 2  DMA request */
// 2120       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC2);
// 2121       break;
// 2122     }
// 2123 
// 2124     case TIM_CHANNEL_3:
// 2125     {
// 2126       /* Set the DMA capture callbacks */
// 2127       htim->hdma[TIM_DMA_ID_CC3]->XferCpltCallback = TIM_DMACaptureCplt;
// 2128       htim->hdma[TIM_DMA_ID_CC3]->XferHalfCpltCallback = TIM_DMACaptureHalfCplt;
// 2129 
// 2130       /* Set the DMA error callback */
// 2131       htim->hdma[TIM_DMA_ID_CC3]->XferErrorCallback = TIM_DMAError ;
// 2132 
// 2133       /* Enable the DMA stream */
// 2134       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC3], (uint32_t)&htim->Instance->CCR3, (uint32_t)pData, Length) != HAL_OK)
// 2135       {
// 2136         return HAL_ERROR;
// 2137       }
// 2138       /* Enable the TIM Capture/Compare 3  DMA request */
// 2139       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC3);
// 2140       break;
// 2141     }
// 2142 
// 2143     case TIM_CHANNEL_4:
// 2144     {
// 2145       /* Set the DMA capture callbacks */
// 2146       htim->hdma[TIM_DMA_ID_CC4]->XferCpltCallback = TIM_DMACaptureCplt;
// 2147       htim->hdma[TIM_DMA_ID_CC4]->XferHalfCpltCallback = TIM_DMACaptureHalfCplt;
// 2148 
// 2149       /* Set the DMA error callback */
// 2150       htim->hdma[TIM_DMA_ID_CC4]->XferErrorCallback = TIM_DMAError ;
// 2151 
// 2152       /* Enable the DMA stream */
// 2153       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC4], (uint32_t)&htim->Instance->CCR4, (uint32_t)pData, Length) != HAL_OK)
// 2154       {
// 2155         return HAL_ERROR;
// 2156       }
// 2157       /* Enable the TIM Capture/Compare 4  DMA request */
// 2158       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC4);
// 2159       break;
// 2160     }
// 2161 
// 2162     default:
// 2163       break;
// 2164   }
// 2165 
// 2166   /* Enable the Input Capture channel */
// 2167   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_ENABLE);
// 2168 
// 2169   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
// 2170   tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
// 2171   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
// 2172   {
// 2173     __HAL_TIM_ENABLE(htim);
// 2174   }
// 2175 
// 2176   /* Return function status */
// 2177   return HAL_OK;
// 2178 }
// 2179 
// 2180 /**
// 2181   * @brief  Stops the TIM Input Capture measurement in DMA mode.
// 2182   * @param  htim TIM Input Capture handle
// 2183   * @param  Channel TIM Channels to be disabled
// 2184   *          This parameter can be one of the following values:
// 2185   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 2186   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 2187   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 2188   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 2189   * @retval HAL status
// 2190   */
// 2191 HAL_StatusTypeDef HAL_TIM_IC_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel)
// 2192 {
// 2193   /* Check the parameters */
// 2194   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 2195   assert_param(IS_TIM_DMA_CC_INSTANCE(htim->Instance));
// 2196 
// 2197   switch (Channel)
// 2198   {
// 2199     case TIM_CHANNEL_1:
// 2200     {
// 2201       /* Disable the TIM Capture/Compare 1 DMA request */
// 2202       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC1);
// 2203       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC1]);
// 2204       break;
// 2205     }
// 2206 
// 2207     case TIM_CHANNEL_2:
// 2208     {
// 2209       /* Disable the TIM Capture/Compare 2 DMA request */
// 2210       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC2);
// 2211       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC2]);
// 2212       break;
// 2213     }
// 2214 
// 2215     case TIM_CHANNEL_3:
// 2216     {
// 2217       /* Disable the TIM Capture/Compare 3  DMA request */
// 2218       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC3);
// 2219       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC3]);
// 2220       break;
// 2221     }
// 2222 
// 2223     case TIM_CHANNEL_4:
// 2224     {
// 2225       /* Disable the TIM Capture/Compare 4  DMA request */
// 2226       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC4);
// 2227       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC4]);
// 2228       break;
// 2229     }
// 2230 
// 2231     default:
// 2232       break;
// 2233   }
// 2234 
// 2235   /* Disable the Input Capture channel */
// 2236   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_DISABLE);
// 2237 
// 2238   /* Disable the Peripheral */
// 2239   __HAL_TIM_DISABLE(htim);
// 2240 
// 2241   /* Change the htim state */
// 2242   htim->State = HAL_TIM_STATE_READY;
// 2243 
// 2244   /* Return function status */
// 2245   return HAL_OK;
// 2246 }
// 2247 /**
// 2248   * @}
// 2249   */
// 2250 
// 2251 /** @defgroup TIM_Exported_Functions_Group5 TIM One Pulse functions
// 2252  *  @brief    TIM One Pulse functions
// 2253  *
// 2254 @verbatim
// 2255   ==============================================================================
// 2256                         ##### TIM One Pulse functions #####
// 2257   ==============================================================================
// 2258   [..]
// 2259     This section provides functions allowing to:
// 2260     (+) Initialize and configure the TIM One Pulse.
// 2261     (+) De-initialize the TIM One Pulse.
// 2262     (+) Start the TIM One Pulse.
// 2263     (+) Stop the TIM One Pulse.
// 2264     (+) Start the TIM One Pulse and enable interrupt.
// 2265     (+) Stop the TIM One Pulse and disable interrupt.
// 2266     (+) Start the TIM One Pulse and enable DMA transfer.
// 2267     (+) Stop the TIM One Pulse and disable DMA transfer.
// 2268 
// 2269 @endverbatim
// 2270   * @{
// 2271   */
// 2272 /**
// 2273   * @brief  Initializes the TIM One Pulse Time Base according to the specified
// 2274   *         parameters in the TIM_HandleTypeDef and initializes the associated handle.
// 2275   * @note   Switching from Center Aligned counter mode to Edge counter mode (or reverse)
// 2276   *         requires a timer reset to avoid unexpected direction
// 2277   *         due to DIR bit readonly in center aligned mode.
// 2278   *         Ex: call @ref HAL_TIM_OnePulse_DeInit() before HAL_TIM_OnePulse_Init()
// 2279   * @param  htim TIM One Pulse handle
// 2280   * @param  OnePulseMode Select the One pulse mode.
// 2281   *         This parameter can be one of the following values:
// 2282   *            @arg TIM_OPMODE_SINGLE: Only one pulse will be generated.
// 2283   *            @arg TIM_OPMODE_REPETITIVE: Repetitive pulses will be generated.
// 2284   * @retval HAL status
// 2285   */
// 2286 HAL_StatusTypeDef HAL_TIM_OnePulse_Init(TIM_HandleTypeDef *htim, uint32_t OnePulseMode)
// 2287 {
// 2288   /* Check the TIM handle allocation */
// 2289   if (htim == NULL)
// 2290   {
// 2291     return HAL_ERROR;
// 2292   }
// 2293 
// 2294   /* Check the parameters */
// 2295   assert_param(IS_TIM_INSTANCE(htim->Instance));
// 2296   assert_param(IS_TIM_COUNTER_MODE(htim->Init.CounterMode));
// 2297   assert_param(IS_TIM_CLOCKDIVISION_DIV(htim->Init.ClockDivision));
// 2298   assert_param(IS_TIM_OPM_MODE(OnePulseMode));
// 2299   assert_param(IS_TIM_AUTORELOAD_PRELOAD(htim->Init.AutoReloadPreload));
// 2300 
// 2301   if (htim->State == HAL_TIM_STATE_RESET)
// 2302   {
// 2303     /* Allocate lock resource and initialize it */
// 2304     htim->Lock = HAL_UNLOCKED;
// 2305 
// 2306 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 2307     /* Reset interrupt callbacks to legacy weak callbacks */
// 2308     TIM_ResetCallback(htim);
// 2309 
// 2310     if (htim->OnePulse_MspInitCallback == NULL)
// 2311     {
// 2312       htim->OnePulse_MspInitCallback = HAL_TIM_OnePulse_MspInit;
// 2313     }
// 2314     /* Init the low level hardware : GPIO, CLOCK, NVIC */
// 2315     htim->OnePulse_MspInitCallback(htim);
// 2316 #else
// 2317     /* Init the low level hardware : GPIO, CLOCK, NVIC and DMA */
// 2318     HAL_TIM_OnePulse_MspInit(htim);
// 2319 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 2320   }
// 2321 
// 2322   /* Set the TIM state */
// 2323   htim->State = HAL_TIM_STATE_BUSY;
// 2324 
// 2325   /* Configure the Time base in the One Pulse Mode */
// 2326   TIM_Base_SetConfig(htim->Instance, &htim->Init);
// 2327 
// 2328   /* Reset the OPM Bit */
// 2329   htim->Instance->CR1 &= ~TIM_CR1_OPM;
// 2330 
// 2331   /* Configure the OPM Mode */
// 2332   htim->Instance->CR1 |= OnePulseMode;
// 2333 
// 2334   /* Initialize the TIM state*/
// 2335   htim->State = HAL_TIM_STATE_READY;
// 2336 
// 2337   return HAL_OK;
// 2338 }
// 2339 
// 2340 /**
// 2341   * @brief  DeInitializes the TIM One Pulse
// 2342   * @param  htim TIM One Pulse handle
// 2343   * @retval HAL status
// 2344   */
// 2345 HAL_StatusTypeDef HAL_TIM_OnePulse_DeInit(TIM_HandleTypeDef *htim)
// 2346 {
// 2347   /* Check the parameters */
// 2348   assert_param(IS_TIM_INSTANCE(htim->Instance));
// 2349 
// 2350   htim->State = HAL_TIM_STATE_BUSY;
// 2351 
// 2352   /* Disable the TIM Peripheral Clock */
// 2353   __HAL_TIM_DISABLE(htim);
// 2354 
// 2355 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 2356   if (htim->OnePulse_MspDeInitCallback == NULL)
// 2357   {
// 2358     htim->OnePulse_MspDeInitCallback = HAL_TIM_OnePulse_MspDeInit;
// 2359   }
// 2360   /* DeInit the low level hardware */
// 2361   htim->OnePulse_MspDeInitCallback(htim);
// 2362 #else
// 2363   /* DeInit the low level hardware: GPIO, CLOCK, NVIC */
// 2364   HAL_TIM_OnePulse_MspDeInit(htim);
// 2365 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 2366 
// 2367   /* Change TIM state */
// 2368   htim->State = HAL_TIM_STATE_RESET;
// 2369 
// 2370   /* Release Lock */
// 2371   __HAL_UNLOCK(htim);
// 2372 
// 2373   return HAL_OK;
// 2374 }
// 2375 
// 2376 /**
// 2377   * @brief  Initializes the TIM One Pulse MSP.
// 2378   * @param  htim TIM One Pulse handle
// 2379   * @retval None
// 2380   */
// 2381 __weak void HAL_TIM_OnePulse_MspInit(TIM_HandleTypeDef *htim)
// 2382 {
// 2383   /* Prevent unused argument(s) compilation warning */
// 2384   UNUSED(htim);
// 2385 
// 2386   /* NOTE : This function should not be modified, when the callback is needed,
// 2387             the HAL_TIM_OnePulse_MspInit could be implemented in the user file
// 2388    */
// 2389 }
// 2390 
// 2391 /**
// 2392   * @brief  DeInitializes TIM One Pulse MSP.
// 2393   * @param  htim TIM One Pulse handle
// 2394   * @retval None
// 2395   */
// 2396 __weak void HAL_TIM_OnePulse_MspDeInit(TIM_HandleTypeDef *htim)
// 2397 {
// 2398   /* Prevent unused argument(s) compilation warning */
// 2399   UNUSED(htim);
// 2400 
// 2401   /* NOTE : This function should not be modified, when the callback is needed,
// 2402             the HAL_TIM_OnePulse_MspDeInit could be implemented in the user file
// 2403    */
// 2404 }
// 2405 
// 2406 /**
// 2407   * @brief  Starts the TIM One Pulse signal generation.
// 2408   * @param  htim TIM One Pulse handle
// 2409   * @param  OutputChannel TIM Channels to be enabled
// 2410   *          This parameter can be one of the following values:
// 2411   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 2412   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 2413   * @retval HAL status
// 2414   */
// 2415 HAL_StatusTypeDef HAL_TIM_OnePulse_Start(TIM_HandleTypeDef *htim, uint32_t OutputChannel)
// 2416 {
// 2417   /* Prevent unused argument(s) compilation warning */
// 2418   UNUSED(OutputChannel);
// 2419 
// 2420   /* Enable the Capture compare and the Input Capture channels
// 2421     (in the OPM Mode the two possible channels that can be used are TIM_CHANNEL_1 and TIM_CHANNEL_2)
// 2422     if TIM_CHANNEL_1 is used as output, the TIM_CHANNEL_2 will be used as input and
// 2423     if TIM_CHANNEL_1 is used as input, the TIM_CHANNEL_2 will be used as output
// 2424     in all combinations, the TIM_CHANNEL_1 and TIM_CHANNEL_2 should be enabled together
// 2425 
// 2426     No need to enable the counter, it's enabled automatically by hardware
// 2427     (the counter starts in response to a stimulus and generate a pulse */
// 2428 
// 2429   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_ENABLE);
// 2430   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_ENABLE);
// 2431 
// 2432   if (IS_TIM_BREAK_INSTANCE(htim->Instance) != RESET)
// 2433   {
// 2434     /* Enable the main output */
// 2435     __HAL_TIM_MOE_ENABLE(htim);
// 2436   }
// 2437 
// 2438   /* Return function status */
// 2439   return HAL_OK;
// 2440 }
// 2441 
// 2442 /**
// 2443   * @brief  Stops the TIM One Pulse signal generation.
// 2444   * @param  htim TIM One Pulse handle
// 2445   * @param  OutputChannel TIM Channels to be disable
// 2446   *          This parameter can be one of the following values:
// 2447   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 2448   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 2449   * @retval HAL status
// 2450   */
// 2451 HAL_StatusTypeDef HAL_TIM_OnePulse_Stop(TIM_HandleTypeDef *htim, uint32_t OutputChannel)
// 2452 {
// 2453   /* Prevent unused argument(s) compilation warning */
// 2454   UNUSED(OutputChannel);
// 2455 
// 2456   /* Disable the Capture compare and the Input Capture channels
// 2457   (in the OPM Mode the two possible channels that can be used are TIM_CHANNEL_1 and TIM_CHANNEL_2)
// 2458   if TIM_CHANNEL_1 is used as output, the TIM_CHANNEL_2 will be used as input and
// 2459   if TIM_CHANNEL_1 is used as input, the TIM_CHANNEL_2 will be used as output
// 2460   in all combinations, the TIM_CHANNEL_1 and TIM_CHANNEL_2 should be disabled together */
// 2461 
// 2462   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_DISABLE);
// 2463   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_DISABLE);
// 2464 
// 2465   if (IS_TIM_BREAK_INSTANCE(htim->Instance) != RESET)
// 2466   {
// 2467     /* Disable the Main Output */
// 2468     __HAL_TIM_MOE_DISABLE(htim);
// 2469   }
// 2470 
// 2471   /* Disable the Peripheral */
// 2472   __HAL_TIM_DISABLE(htim);
// 2473 
// 2474   /* Return function status */
// 2475   return HAL_OK;
// 2476 }
// 2477 
// 2478 /**
// 2479   * @brief  Starts the TIM One Pulse signal generation in interrupt mode.
// 2480   * @param  htim TIM One Pulse handle
// 2481   * @param  OutputChannel TIM Channels to be enabled
// 2482   *          This parameter can be one of the following values:
// 2483   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 2484   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 2485   * @retval HAL status
// 2486   */
// 2487 HAL_StatusTypeDef HAL_TIM_OnePulse_Start_IT(TIM_HandleTypeDef *htim, uint32_t OutputChannel)
// 2488 {
// 2489   /* Prevent unused argument(s) compilation warning */
// 2490   UNUSED(OutputChannel);
// 2491 
// 2492   /* Enable the Capture compare and the Input Capture channels
// 2493     (in the OPM Mode the two possible channels that can be used are TIM_CHANNEL_1 and TIM_CHANNEL_2)
// 2494     if TIM_CHANNEL_1 is used as output, the TIM_CHANNEL_2 will be used as input and
// 2495     if TIM_CHANNEL_1 is used as input, the TIM_CHANNEL_2 will be used as output
// 2496     in all combinations, the TIM_CHANNEL_1 and TIM_CHANNEL_2 should be enabled together
// 2497 
// 2498     No need to enable the counter, it's enabled automatically by hardware
// 2499     (the counter starts in response to a stimulus and generate a pulse */
// 2500 
// 2501   /* Enable the TIM Capture/Compare 1 interrupt */
// 2502   __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC1);
// 2503 
// 2504   /* Enable the TIM Capture/Compare 2 interrupt */
// 2505   __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC2);
// 2506 
// 2507   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_ENABLE);
// 2508   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_ENABLE);
// 2509 
// 2510   if (IS_TIM_BREAK_INSTANCE(htim->Instance) != RESET)
// 2511   {
// 2512     /* Enable the main output */
// 2513     __HAL_TIM_MOE_ENABLE(htim);
// 2514   }
// 2515 
// 2516   /* Return function status */
// 2517   return HAL_OK;
// 2518 }
// 2519 
// 2520 /**
// 2521   * @brief  Stops the TIM One Pulse signal generation in interrupt mode.
// 2522   * @param  htim TIM One Pulse handle
// 2523   * @param  OutputChannel TIM Channels to be enabled
// 2524   *          This parameter can be one of the following values:
// 2525   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 2526   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 2527   * @retval HAL status
// 2528   */
// 2529 HAL_StatusTypeDef HAL_TIM_OnePulse_Stop_IT(TIM_HandleTypeDef *htim, uint32_t OutputChannel)
// 2530 {
// 2531   /* Prevent unused argument(s) compilation warning */
// 2532   UNUSED(OutputChannel);
// 2533 
// 2534   /* Disable the TIM Capture/Compare 1 interrupt */
// 2535   __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC1);
// 2536 
// 2537   /* Disable the TIM Capture/Compare 2 interrupt */
// 2538   __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC2);
// 2539 
// 2540   /* Disable the Capture compare and the Input Capture channels
// 2541   (in the OPM Mode the two possible channels that can be used are TIM_CHANNEL_1 and TIM_CHANNEL_2)
// 2542   if TIM_CHANNEL_1 is used as output, the TIM_CHANNEL_2 will be used as input and
// 2543   if TIM_CHANNEL_1 is used as input, the TIM_CHANNEL_2 will be used as output
// 2544   in all combinations, the TIM_CHANNEL_1 and TIM_CHANNEL_2 should be disabled together */
// 2545   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_DISABLE);
// 2546   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_DISABLE);
// 2547 
// 2548   if (IS_TIM_BREAK_INSTANCE(htim->Instance) != RESET)
// 2549   {
// 2550     /* Disable the Main Output */
// 2551     __HAL_TIM_MOE_DISABLE(htim);
// 2552   }
// 2553 
// 2554   /* Disable the Peripheral */
// 2555   __HAL_TIM_DISABLE(htim);
// 2556 
// 2557   /* Return function status */
// 2558   return HAL_OK;
// 2559 }
// 2560 
// 2561 /**
// 2562   * @}
// 2563   */
// 2564 
// 2565 /** @defgroup TIM_Exported_Functions_Group6 TIM Encoder functions
// 2566  *  @brief    TIM Encoder functions
// 2567  *
// 2568 @verbatim
// 2569   ==============================================================================
// 2570                           ##### TIM Encoder functions #####
// 2571   ==============================================================================
// 2572   [..]
// 2573     This section provides functions allowing to:
// 2574     (+) Initialize and configure the TIM Encoder.
// 2575     (+) De-initialize the TIM Encoder.
// 2576     (+) Start the TIM Encoder.
// 2577     (+) Stop the TIM Encoder.
// 2578     (+) Start the TIM Encoder and enable interrupt.
// 2579     (+) Stop the TIM Encoder and disable interrupt.
// 2580     (+) Start the TIM Encoder and enable DMA transfer.
// 2581     (+) Stop the TIM Encoder and disable DMA transfer.
// 2582 
// 2583 @endverbatim
// 2584   * @{
// 2585   */
// 2586 /**
// 2587   * @brief  Initializes the TIM Encoder Interface and initialize the associated handle.
// 2588   * @note   Switching from Center Aligned counter mode to Edge counter mode (or reverse)
// 2589   *         requires a timer reset to avoid unexpected direction
// 2590   *         due to DIR bit readonly in center aligned mode.
// 2591   *         Ex: call @ref HAL_TIM_Encoder_DeInit() before HAL_TIM_Encoder_Init()
// 2592   * @note   Encoder mode and External clock mode 2 are not compatible and must not be selected together
// 2593   *         Ex: A call for @ref HAL_TIM_Encoder_Init will erase the settings of @ref HAL_TIM_ConfigClockSource
// 2594   *         using TIM_CLOCKSOURCE_ETRMODE2 and vice versa
// 2595   * @param  htim TIM Encoder Interface handle
// 2596   * @param  sConfig TIM Encoder Interface configuration structure
// 2597   * @retval HAL status
// 2598   */
// 2599 HAL_StatusTypeDef HAL_TIM_Encoder_Init(TIM_HandleTypeDef *htim,  TIM_Encoder_InitTypeDef *sConfig)
// 2600 {
// 2601   uint32_t tmpsmcr;
// 2602   uint32_t tmpccmr1;
// 2603   uint32_t tmpccer;
// 2604 
// 2605   /* Check the TIM handle allocation */
// 2606   if (htim == NULL)
// 2607   {
// 2608     return HAL_ERROR;
// 2609   }
// 2610 
// 2611   /* Check the parameters */
// 2612   assert_param(IS_TIM_COUNTER_MODE(htim->Init.CounterMode));
// 2613   assert_param(IS_TIM_CLOCKDIVISION_DIV(htim->Init.ClockDivision));
// 2614   assert_param(IS_TIM_AUTORELOAD_PRELOAD(htim->Init.AutoReloadPreload));
// 2615   assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 2616   assert_param(IS_TIM_ENCODER_MODE(sConfig->EncoderMode));
// 2617   assert_param(IS_TIM_IC_SELECTION(sConfig->IC1Selection));
// 2618   assert_param(IS_TIM_IC_SELECTION(sConfig->IC2Selection));
// 2619   assert_param(IS_TIM_IC_POLARITY(sConfig->IC1Polarity));
// 2620   assert_param(IS_TIM_IC_POLARITY(sConfig->IC2Polarity));
// 2621   assert_param(IS_TIM_IC_PRESCALER(sConfig->IC1Prescaler));
// 2622   assert_param(IS_TIM_IC_PRESCALER(sConfig->IC2Prescaler));
// 2623   assert_param(IS_TIM_IC_FILTER(sConfig->IC1Filter));
// 2624   assert_param(IS_TIM_IC_FILTER(sConfig->IC2Filter));
// 2625 
// 2626   if (htim->State == HAL_TIM_STATE_RESET)
// 2627   {
// 2628     /* Allocate lock resource and initialize it */
// 2629     htim->Lock = HAL_UNLOCKED;
// 2630 
// 2631 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 2632     /* Reset interrupt callbacks to legacy weak callbacks */
// 2633     TIM_ResetCallback(htim);
// 2634 
// 2635     if (htim->Encoder_MspInitCallback == NULL)
// 2636     {
// 2637       htim->Encoder_MspInitCallback = HAL_TIM_Encoder_MspInit;
// 2638     }
// 2639     /* Init the low level hardware : GPIO, CLOCK, NVIC */
// 2640     htim->Encoder_MspInitCallback(htim);
// 2641 #else
// 2642     /* Init the low level hardware : GPIO, CLOCK, NVIC and DMA */
// 2643     HAL_TIM_Encoder_MspInit(htim);
// 2644 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 2645   }
// 2646 
// 2647   /* Set the TIM state */
// 2648   htim->State = HAL_TIM_STATE_BUSY;
// 2649 
// 2650   /* Reset the SMS and ECE bits */
// 2651   htim->Instance->SMCR &= ~(TIM_SMCR_SMS | TIM_SMCR_ECE);
// 2652 
// 2653   /* Configure the Time base in the Encoder Mode */
// 2654   TIM_Base_SetConfig(htim->Instance, &htim->Init);
// 2655 
// 2656   /* Get the TIMx SMCR register value */
// 2657   tmpsmcr = htim->Instance->SMCR;
// 2658 
// 2659   /* Get the TIMx CCMR1 register value */
// 2660   tmpccmr1 = htim->Instance->CCMR1;
// 2661 
// 2662   /* Get the TIMx CCER register value */
// 2663   tmpccer = htim->Instance->CCER;
// 2664 
// 2665   /* Set the encoder Mode */
// 2666   tmpsmcr |= sConfig->EncoderMode;
// 2667 
// 2668   /* Select the Capture Compare 1 and the Capture Compare 2 as input */
// 2669   tmpccmr1 &= ~(TIM_CCMR1_CC1S | TIM_CCMR1_CC2S);
// 2670   tmpccmr1 |= (sConfig->IC1Selection | (sConfig->IC2Selection << 8U));
// 2671 
// 2672   /* Set the Capture Compare 1 and the Capture Compare 2 prescalers and filters */
// 2673   tmpccmr1 &= ~(TIM_CCMR1_IC1PSC | TIM_CCMR1_IC2PSC);
// 2674   tmpccmr1 &= ~(TIM_CCMR1_IC1F | TIM_CCMR1_IC2F);
// 2675   tmpccmr1 |= sConfig->IC1Prescaler | (sConfig->IC2Prescaler << 8U);
// 2676   tmpccmr1 |= (sConfig->IC1Filter << 4U) | (sConfig->IC2Filter << 12U);
// 2677 
// 2678   /* Set the TI1 and the TI2 Polarities */
// 2679   tmpccer &= ~(TIM_CCER_CC1P | TIM_CCER_CC2P);
// 2680   tmpccer &= ~(TIM_CCER_CC1NP | TIM_CCER_CC2NP);
// 2681   tmpccer |= sConfig->IC1Polarity | (sConfig->IC2Polarity << 4U);
// 2682 
// 2683   /* Write to TIMx SMCR */
// 2684   htim->Instance->SMCR = tmpsmcr;
// 2685 
// 2686   /* Write to TIMx CCMR1 */
// 2687   htim->Instance->CCMR1 = tmpccmr1;
// 2688 
// 2689   /* Write to TIMx CCER */
// 2690   htim->Instance->CCER = tmpccer;
// 2691 
// 2692   /* Initialize the TIM state*/
// 2693   htim->State = HAL_TIM_STATE_READY;
// 2694 
// 2695   return HAL_OK;
// 2696 }
// 2697 
// 2698 
// 2699 /**
// 2700   * @brief  DeInitializes the TIM Encoder interface
// 2701   * @param  htim TIM Encoder Interface handle
// 2702   * @retval HAL status
// 2703   */
// 2704 HAL_StatusTypeDef HAL_TIM_Encoder_DeInit(TIM_HandleTypeDef *htim)
// 2705 {
// 2706   /* Check the parameters */
// 2707   assert_param(IS_TIM_INSTANCE(htim->Instance));
// 2708 
// 2709   htim->State = HAL_TIM_STATE_BUSY;
// 2710 
// 2711   /* Disable the TIM Peripheral Clock */
// 2712   __HAL_TIM_DISABLE(htim);
// 2713 
// 2714 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 2715   if (htim->Encoder_MspDeInitCallback == NULL)
// 2716   {
// 2717     htim->Encoder_MspDeInitCallback = HAL_TIM_Encoder_MspDeInit;
// 2718   }
// 2719   /* DeInit the low level hardware */
// 2720   htim->Encoder_MspDeInitCallback(htim);
// 2721 #else
// 2722   /* DeInit the low level hardware: GPIO, CLOCK, NVIC */
// 2723   HAL_TIM_Encoder_MspDeInit(htim);
// 2724 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 2725 
// 2726   /* Change TIM state */
// 2727   htim->State = HAL_TIM_STATE_RESET;
// 2728 
// 2729   /* Release Lock */
// 2730   __HAL_UNLOCK(htim);
// 2731 
// 2732   return HAL_OK;
// 2733 }
// 2734 
// 2735 /**
// 2736   * @brief  Initializes the TIM Encoder Interface MSP.
// 2737   * @param  htim TIM Encoder Interface handle
// 2738   * @retval None
// 2739   */
// 2740 __weak void HAL_TIM_Encoder_MspInit(TIM_HandleTypeDef *htim)
// 2741 {
// 2742   /* Prevent unused argument(s) compilation warning */
// 2743   UNUSED(htim);
// 2744 
// 2745   /* NOTE : This function should not be modified, when the callback is needed,
// 2746             the HAL_TIM_Encoder_MspInit could be implemented in the user file
// 2747    */
// 2748 }
// 2749 
// 2750 /**
// 2751   * @brief  DeInitializes TIM Encoder Interface MSP.
// 2752   * @param  htim TIM Encoder Interface handle
// 2753   * @retval None
// 2754   */
// 2755 __weak void HAL_TIM_Encoder_MspDeInit(TIM_HandleTypeDef *htim)
// 2756 {
// 2757   /* Prevent unused argument(s) compilation warning */
// 2758   UNUSED(htim);
// 2759 
// 2760   /* NOTE : This function should not be modified, when the callback is needed,
// 2761             the HAL_TIM_Encoder_MspDeInit could be implemented in the user file
// 2762    */
// 2763 }
// 2764 
// 2765 /**
// 2766   * @brief  Starts the TIM Encoder Interface.
// 2767   * @param  htim TIM Encoder Interface handle
// 2768   * @param  Channel TIM Channels to be enabled
// 2769   *          This parameter can be one of the following values:
// 2770   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 2771   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 2772   *            @arg TIM_CHANNEL_ALL: TIM Channel 1 and TIM Channel 2 are selected
// 2773   * @retval HAL status
// 2774   */
// 2775 HAL_StatusTypeDef HAL_TIM_Encoder_Start(TIM_HandleTypeDef *htim, uint32_t Channel)
// 2776 {
// 2777   /* Check the parameters */
// 2778   assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 2779 
// 2780   /* Enable the encoder interface channels */
// 2781   switch (Channel)
// 2782   {
// 2783     case TIM_CHANNEL_1:
// 2784     {
// 2785       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_ENABLE);
// 2786       break;
// 2787     }
// 2788 
// 2789     case TIM_CHANNEL_2:
// 2790     {
// 2791       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_ENABLE);
// 2792       break;
// 2793     }
// 2794 
// 2795     default :
// 2796     {
// 2797       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_ENABLE);
// 2798       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_ENABLE);
// 2799       break;
// 2800     }
// 2801   }
// 2802   /* Enable the Peripheral */
// 2803   __HAL_TIM_ENABLE(htim);
// 2804 
// 2805   /* Return function status */
// 2806   return HAL_OK;
// 2807 }
// 2808 
// 2809 /**
// 2810   * @brief  Stops the TIM Encoder Interface.
// 2811   * @param  htim TIM Encoder Interface handle
// 2812   * @param  Channel TIM Channels to be disabled
// 2813   *          This parameter can be one of the following values:
// 2814   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 2815   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 2816   *            @arg TIM_CHANNEL_ALL: TIM Channel 1 and TIM Channel 2 are selected
// 2817   * @retval HAL status
// 2818   */
// 2819 HAL_StatusTypeDef HAL_TIM_Encoder_Stop(TIM_HandleTypeDef *htim, uint32_t Channel)
// 2820 {
// 2821   /* Check the parameters */
// 2822   assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 2823 
// 2824   /* Disable the Input Capture channels 1 and 2
// 2825     (in the EncoderInterface the two possible channels that can be used are TIM_CHANNEL_1 and TIM_CHANNEL_2) */
// 2826   switch (Channel)
// 2827   {
// 2828     case TIM_CHANNEL_1:
// 2829     {
// 2830       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_DISABLE);
// 2831       break;
// 2832     }
// 2833 
// 2834     case TIM_CHANNEL_2:
// 2835     {
// 2836       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_DISABLE);
// 2837       break;
// 2838     }
// 2839 
// 2840     default :
// 2841     {
// 2842       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_DISABLE);
// 2843       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_DISABLE);
// 2844       break;
// 2845     }
// 2846   }
// 2847 
// 2848   /* Disable the Peripheral */
// 2849   __HAL_TIM_DISABLE(htim);
// 2850 
// 2851   /* Return function status */
// 2852   return HAL_OK;
// 2853 }
// 2854 
// 2855 /**
// 2856   * @brief  Starts the TIM Encoder Interface in interrupt mode.
// 2857   * @param  htim TIM Encoder Interface handle
// 2858   * @param  Channel TIM Channels to be enabled
// 2859   *          This parameter can be one of the following values:
// 2860   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 2861   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 2862   *            @arg TIM_CHANNEL_ALL: TIM Channel 1 and TIM Channel 2 are selected
// 2863   * @retval HAL status
// 2864   */
// 2865 HAL_StatusTypeDef HAL_TIM_Encoder_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
// 2866 {
// 2867   /* Check the parameters */
// 2868   assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 2869 
// 2870   /* Enable the encoder interface channels */
// 2871   /* Enable the capture compare Interrupts 1 and/or 2 */
// 2872   switch (Channel)
// 2873   {
// 2874     case TIM_CHANNEL_1:
// 2875     {
// 2876       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_ENABLE);
// 2877       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC1);
// 2878       break;
// 2879     }
// 2880 
// 2881     case TIM_CHANNEL_2:
// 2882     {
// 2883       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_ENABLE);
// 2884       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC2);
// 2885       break;
// 2886     }
// 2887 
// 2888     default :
// 2889     {
// 2890       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_ENABLE);
// 2891       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_ENABLE);
// 2892       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC1);
// 2893       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC2);
// 2894       break;
// 2895     }
// 2896   }
// 2897 
// 2898   /* Enable the Peripheral */
// 2899   __HAL_TIM_ENABLE(htim);
// 2900 
// 2901   /* Return function status */
// 2902   return HAL_OK;
// 2903 }
// 2904 
// 2905 /**
// 2906   * @brief  Stops the TIM Encoder Interface in interrupt mode.
// 2907   * @param  htim TIM Encoder Interface handle
// 2908   * @param  Channel TIM Channels to be disabled
// 2909   *          This parameter can be one of the following values:
// 2910   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 2911   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 2912   *            @arg TIM_CHANNEL_ALL: TIM Channel 1 and TIM Channel 2 are selected
// 2913   * @retval HAL status
// 2914   */
// 2915 HAL_StatusTypeDef HAL_TIM_Encoder_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
// 2916 {
// 2917   /* Check the parameters */
// 2918   assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 2919 
// 2920   /* Disable the Input Capture channels 1 and 2
// 2921     (in the EncoderInterface the two possible channels that can be used are TIM_CHANNEL_1 and TIM_CHANNEL_2) */
// 2922   if (Channel == TIM_CHANNEL_1)
// 2923   {
// 2924     TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_DISABLE);
// 2925 
// 2926     /* Disable the capture compare Interrupts 1 */
// 2927     __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC1);
// 2928   }
// 2929   else if (Channel == TIM_CHANNEL_2)
// 2930   {
// 2931     TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_DISABLE);
// 2932 
// 2933     /* Disable the capture compare Interrupts 2 */
// 2934     __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC2);
// 2935   }
// 2936   else
// 2937   {
// 2938     TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_DISABLE);
// 2939     TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_DISABLE);
// 2940 
// 2941     /* Disable the capture compare Interrupts 1 and 2 */
// 2942     __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC1);
// 2943     __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC2);
// 2944   }
// 2945 
// 2946   /* Disable the Peripheral */
// 2947   __HAL_TIM_DISABLE(htim);
// 2948 
// 2949   /* Change the htim state */
// 2950   htim->State = HAL_TIM_STATE_READY;
// 2951 
// 2952   /* Return function status */
// 2953   return HAL_OK;
// 2954 }
// 2955 
// 2956 /**
// 2957   * @brief  Starts the TIM Encoder Interface in DMA mode.
// 2958   * @param  htim TIM Encoder Interface handle
// 2959   * @param  Channel TIM Channels to be enabled
// 2960   *          This parameter can be one of the following values:
// 2961   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 2962   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 2963   *            @arg TIM_CHANNEL_ALL: TIM Channel 1 and TIM Channel 2 are selected
// 2964   * @param  pData1 The destination Buffer address for IC1.
// 2965   * @param  pData2 The destination Buffer address for IC2.
// 2966   * @param  Length The length of data to be transferred from TIM peripheral to memory.
// 2967   * @retval HAL status
// 2968   */
// 2969 HAL_StatusTypeDef HAL_TIM_Encoder_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pData1, uint32_t *pData2, uint16_t Length)
// 2970 {
// 2971   /* Check the parameters */
// 2972   assert_param(IS_TIM_DMA_CC_INSTANCE(htim->Instance));
// 2973 
// 2974   if ((htim->State == HAL_TIM_STATE_BUSY))
// 2975   {
// 2976     return HAL_BUSY;
// 2977   }
// 2978   else if ((htim->State == HAL_TIM_STATE_READY))
// 2979   {
// 2980     if ((((pData1 == NULL) || (pData2 == NULL))) && (Length > 0U))
// 2981     {
// 2982       return HAL_ERROR;
// 2983     }
// 2984     else
// 2985     {
// 2986       htim->State = HAL_TIM_STATE_BUSY;
// 2987     }
// 2988   }
// 2989   else
// 2990   {
// 2991     /* nothing to do */
// 2992   }
// 2993 
// 2994   switch (Channel)
// 2995   {
// 2996     case TIM_CHANNEL_1:
// 2997     {
// 2998       /* Set the DMA capture callbacks */
// 2999       htim->hdma[TIM_DMA_ID_CC1]->XferCpltCallback = TIM_DMACaptureCplt;
// 3000       htim->hdma[TIM_DMA_ID_CC1]->XferHalfCpltCallback = TIM_DMACaptureHalfCplt;
// 3001 
// 3002       /* Set the DMA error callback */
// 3003       htim->hdma[TIM_DMA_ID_CC1]->XferErrorCallback = TIM_DMAError ;
// 3004 
// 3005       /* Enable the DMA stream */
// 3006       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC1], (uint32_t)&htim->Instance->CCR1, (uint32_t)pData1, Length) != HAL_OK)
// 3007       {
// 3008         return HAL_ERROR;
// 3009       }
// 3010       /* Enable the TIM Input Capture DMA request */
// 3011       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC1);
// 3012 
// 3013       /* Enable the Peripheral */
// 3014       __HAL_TIM_ENABLE(htim);
// 3015 
// 3016       /* Enable the Capture compare channel */
// 3017       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_ENABLE);
// 3018       break;
// 3019     }
// 3020 
// 3021     case TIM_CHANNEL_2:
// 3022     {
// 3023       /* Set the DMA capture callbacks */
// 3024       htim->hdma[TIM_DMA_ID_CC2]->XferCpltCallback = TIM_DMACaptureCplt;
// 3025       htim->hdma[TIM_DMA_ID_CC2]->XferHalfCpltCallback = TIM_DMACaptureHalfCplt;
// 3026 
// 3027       /* Set the DMA error callback */
// 3028       htim->hdma[TIM_DMA_ID_CC2]->XferErrorCallback = TIM_DMAError;
// 3029       /* Enable the DMA stream */
// 3030       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC2], (uint32_t)&htim->Instance->CCR2, (uint32_t)pData2, Length) != HAL_OK)
// 3031       {
// 3032         return HAL_ERROR;
// 3033       }
// 3034       /* Enable the TIM Input Capture  DMA request */
// 3035       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC2);
// 3036 
// 3037       /* Enable the Peripheral */
// 3038       __HAL_TIM_ENABLE(htim);
// 3039 
// 3040       /* Enable the Capture compare channel */
// 3041       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_ENABLE);
// 3042       break;
// 3043     }
// 3044 
// 3045     case TIM_CHANNEL_ALL:
// 3046     {
// 3047       /* Set the DMA capture callbacks */
// 3048       htim->hdma[TIM_DMA_ID_CC1]->XferCpltCallback = TIM_DMACaptureCplt;
// 3049       htim->hdma[TIM_DMA_ID_CC1]->XferHalfCpltCallback = TIM_DMACaptureHalfCplt;
// 3050 
// 3051       /* Set the DMA error callback */
// 3052       htim->hdma[TIM_DMA_ID_CC1]->XferErrorCallback = TIM_DMAError ;
// 3053 
// 3054       /* Enable the DMA stream */
// 3055       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC1], (uint32_t)&htim->Instance->CCR1, (uint32_t)pData1, Length) != HAL_OK)
// 3056       {
// 3057         return HAL_ERROR;
// 3058       }
// 3059 
// 3060       /* Set the DMA capture callbacks */
// 3061       htim->hdma[TIM_DMA_ID_CC2]->XferCpltCallback = TIM_DMACaptureCplt;
// 3062       htim->hdma[TIM_DMA_ID_CC2]->XferHalfCpltCallback = TIM_DMACaptureHalfCplt;
// 3063 
// 3064       /* Set the DMA error callback */
// 3065       htim->hdma[TIM_DMA_ID_CC2]->XferErrorCallback = TIM_DMAError ;
// 3066 
// 3067       /* Enable the DMA stream */
// 3068       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC2], (uint32_t)&htim->Instance->CCR2, (uint32_t)pData2, Length) != HAL_OK)
// 3069       {
// 3070         return HAL_ERROR;
// 3071       }
// 3072       /* Enable the Peripheral */
// 3073       __HAL_TIM_ENABLE(htim);
// 3074 
// 3075       /* Enable the Capture compare channel */
// 3076       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_ENABLE);
// 3077       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_ENABLE);
// 3078 
// 3079       /* Enable the TIM Input Capture  DMA request */
// 3080       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC1);
// 3081       /* Enable the TIM Input Capture  DMA request */
// 3082       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC2);
// 3083       break;
// 3084     }
// 3085 
// 3086     default:
// 3087       break;
// 3088   }
// 3089   /* Return function status */
// 3090   return HAL_OK;
// 3091 }
// 3092 
// 3093 /**
// 3094   * @brief  Stops the TIM Encoder Interface in DMA mode.
// 3095   * @param  htim TIM Encoder Interface handle
// 3096   * @param  Channel TIM Channels to be enabled
// 3097   *          This parameter can be one of the following values:
// 3098   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 3099   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 3100   *            @arg TIM_CHANNEL_ALL: TIM Channel 1 and TIM Channel 2 are selected
// 3101   * @retval HAL status
// 3102   */
// 3103 HAL_StatusTypeDef HAL_TIM_Encoder_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel)
// 3104 {
// 3105   /* Check the parameters */
// 3106   assert_param(IS_TIM_DMA_CC_INSTANCE(htim->Instance));
// 3107 
// 3108   /* Disable the Input Capture channels 1 and 2
// 3109     (in the EncoderInterface the two possible channels that can be used are TIM_CHANNEL_1 and TIM_CHANNEL_2) */
// 3110   if (Channel == TIM_CHANNEL_1)
// 3111   {
// 3112     TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_DISABLE);
// 3113 
// 3114     /* Disable the capture compare DMA Request 1 */
// 3115     __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC1);
// 3116     (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC1]);
// 3117   }
// 3118   else if (Channel == TIM_CHANNEL_2)
// 3119   {
// 3120     TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_DISABLE);
// 3121 
// 3122     /* Disable the capture compare DMA Request 2 */
// 3123     __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC2);
// 3124     (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC2]);
// 3125   }
// 3126   else
// 3127   {
// 3128     TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_DISABLE);
// 3129     TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_DISABLE);
// 3130 
// 3131     /* Disable the capture compare DMA Request 1 and 2 */
// 3132     __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC1);
// 3133     __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC2);
// 3134     (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC1]);
// 3135     (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC2]);
// 3136   }
// 3137 
// 3138   /* Disable the Peripheral */
// 3139   __HAL_TIM_DISABLE(htim);
// 3140 
// 3141   /* Change the htim state */
// 3142   htim->State = HAL_TIM_STATE_READY;
// 3143 
// 3144   /* Return function status */
// 3145   return HAL_OK;
// 3146 }
// 3147 
// 3148 /**
// 3149   * @}
// 3150   */
// 3151 /** @defgroup TIM_Exported_Functions_Group7 TIM IRQ handler management
// 3152  *  @brief    TIM IRQ handler management
// 3153  *
// 3154 @verbatim
// 3155   ==============================================================================
// 3156                         ##### IRQ handler management #####
// 3157   ==============================================================================
// 3158   [..]
// 3159     This section provides Timer IRQ handler function.
// 3160 
// 3161 @endverbatim
// 3162   * @{
// 3163   */
// 3164 /**
// 3165   * @brief  This function handles TIM interrupts requests.
// 3166   * @param  htim TIM  handle
// 3167   * @retval None
// 3168   */
// 3169 void HAL_TIM_IRQHandler(TIM_HandleTypeDef *htim)
// 3170 {
// 3171   /* Capture compare 1 event */
// 3172   if (__HAL_TIM_GET_FLAG(htim, TIM_FLAG_CC1) != RESET)
// 3173   {
// 3174     if (__HAL_TIM_GET_IT_SOURCE(htim, TIM_IT_CC1) != RESET)
// 3175     {
// 3176       {
// 3177         __HAL_TIM_CLEAR_IT(htim, TIM_IT_CC1);
// 3178         htim->Channel = HAL_TIM_ACTIVE_CHANNEL_1;
// 3179 
// 3180         /* Input capture event */
// 3181         if ((htim->Instance->CCMR1 & TIM_CCMR1_CC1S) != 0x00U)
// 3182         {
// 3183 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 3184           htim->IC_CaptureCallback(htim);
// 3185 #else
// 3186           HAL_TIM_IC_CaptureCallback(htim);
// 3187 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 3188         }
// 3189         /* Output compare event */
// 3190         else
// 3191         {
// 3192 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 3193           htim->OC_DelayElapsedCallback(htim);
// 3194           htim->PWM_PulseFinishedCallback(htim);
// 3195 #else
// 3196           HAL_TIM_OC_DelayElapsedCallback(htim);
// 3197           HAL_TIM_PWM_PulseFinishedCallback(htim);
// 3198 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 3199         }
// 3200         htim->Channel = HAL_TIM_ACTIVE_CHANNEL_CLEARED;
// 3201       }
// 3202     }
// 3203   }
// 3204   /* Capture compare 2 event */
// 3205   if (__HAL_TIM_GET_FLAG(htim, TIM_FLAG_CC2) != RESET)
// 3206   {
// 3207     if (__HAL_TIM_GET_IT_SOURCE(htim, TIM_IT_CC2) != RESET)
// 3208     {
// 3209       __HAL_TIM_CLEAR_IT(htim, TIM_IT_CC2);
// 3210       htim->Channel = HAL_TIM_ACTIVE_CHANNEL_2;
// 3211       /* Input capture event */
// 3212       if ((htim->Instance->CCMR1 & TIM_CCMR1_CC2S) != 0x00U)
// 3213       {
// 3214 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 3215         htim->IC_CaptureCallback(htim);
// 3216 #else
// 3217         HAL_TIM_IC_CaptureCallback(htim);
// 3218 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 3219       }
// 3220       /* Output compare event */
// 3221       else
// 3222       {
// 3223 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 3224         htim->OC_DelayElapsedCallback(htim);
// 3225         htim->PWM_PulseFinishedCallback(htim);
// 3226 #else
// 3227         HAL_TIM_OC_DelayElapsedCallback(htim);
// 3228         HAL_TIM_PWM_PulseFinishedCallback(htim);
// 3229 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 3230       }
// 3231       htim->Channel = HAL_TIM_ACTIVE_CHANNEL_CLEARED;
// 3232     }
// 3233   }
// 3234   /* Capture compare 3 event */
// 3235   if (__HAL_TIM_GET_FLAG(htim, TIM_FLAG_CC3) != RESET)
// 3236   {
// 3237     if (__HAL_TIM_GET_IT_SOURCE(htim, TIM_IT_CC3) != RESET)
// 3238     {
// 3239       __HAL_TIM_CLEAR_IT(htim, TIM_IT_CC3);
// 3240       htim->Channel = HAL_TIM_ACTIVE_CHANNEL_3;
// 3241       /* Input capture event */
// 3242       if ((htim->Instance->CCMR2 & TIM_CCMR2_CC3S) != 0x00U)
// 3243       {
// 3244 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 3245         htim->IC_CaptureCallback(htim);
// 3246 #else
// 3247         HAL_TIM_IC_CaptureCallback(htim);
// 3248 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 3249       }
// 3250       /* Output compare event */
// 3251       else
// 3252       {
// 3253 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 3254         htim->OC_DelayElapsedCallback(htim);
// 3255         htim->PWM_PulseFinishedCallback(htim);
// 3256 #else
// 3257         HAL_TIM_OC_DelayElapsedCallback(htim);
// 3258         HAL_TIM_PWM_PulseFinishedCallback(htim);
// 3259 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 3260       }
// 3261       htim->Channel = HAL_TIM_ACTIVE_CHANNEL_CLEARED;
// 3262     }
// 3263   }
// 3264   /* Capture compare 4 event */
// 3265   if (__HAL_TIM_GET_FLAG(htim, TIM_FLAG_CC4) != RESET)
// 3266   {
// 3267     if (__HAL_TIM_GET_IT_SOURCE(htim, TIM_IT_CC4) != RESET)
// 3268     {
// 3269       __HAL_TIM_CLEAR_IT(htim, TIM_IT_CC4);
// 3270       htim->Channel = HAL_TIM_ACTIVE_CHANNEL_4;
// 3271       /* Input capture event */
// 3272       if ((htim->Instance->CCMR2 & TIM_CCMR2_CC4S) != 0x00U)
// 3273       {
// 3274 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 3275         htim->IC_CaptureCallback(htim);
// 3276 #else
// 3277         HAL_TIM_IC_CaptureCallback(htim);
// 3278 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 3279       }
// 3280       /* Output compare event */
// 3281       else
// 3282       {
// 3283 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 3284         htim->OC_DelayElapsedCallback(htim);
// 3285         htim->PWM_PulseFinishedCallback(htim);
// 3286 #else
// 3287         HAL_TIM_OC_DelayElapsedCallback(htim);
// 3288         HAL_TIM_PWM_PulseFinishedCallback(htim);
// 3289 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 3290       }
// 3291       htim->Channel = HAL_TIM_ACTIVE_CHANNEL_CLEARED;
// 3292     }
// 3293   }
// 3294   /* TIM Update event */
// 3295   if (__HAL_TIM_GET_FLAG(htim, TIM_FLAG_UPDATE) != RESET)
// 3296   {
// 3297     if (__HAL_TIM_GET_IT_SOURCE(htim, TIM_IT_UPDATE) != RESET)
// 3298     {
// 3299       __HAL_TIM_CLEAR_IT(htim, TIM_IT_UPDATE);
// 3300 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 3301       htim->PeriodElapsedCallback(htim);
// 3302 #else
// 3303       HAL_TIM_PeriodElapsedCallback(htim);
// 3304 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 3305     }
// 3306   }
// 3307   /* TIM Break input event */
// 3308   if (__HAL_TIM_GET_FLAG(htim, TIM_FLAG_BREAK) != RESET)
// 3309   {
// 3310     if (__HAL_TIM_GET_IT_SOURCE(htim, TIM_IT_BREAK) != RESET)
// 3311     {
// 3312       __HAL_TIM_CLEAR_IT(htim, TIM_IT_BREAK);
// 3313 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 3314       htim->BreakCallback(htim);
// 3315 #else
// 3316       HAL_TIMEx_BreakCallback(htim);
// 3317 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 3318     }
// 3319   }
// 3320   /* TIM Break2 input event */
// 3321   if (__HAL_TIM_GET_FLAG(htim, TIM_FLAG_BREAK2) != RESET)
// 3322   {
// 3323     if (__HAL_TIM_GET_IT_SOURCE(htim, TIM_IT_BREAK) != RESET)
// 3324     {
// 3325       __HAL_TIM_CLEAR_FLAG(htim, TIM_FLAG_BREAK2);
// 3326 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 3327       htim->Break2Callback(htim);
// 3328 #else
// 3329       HAL_TIMEx_Break2Callback(htim);
// 3330 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 3331     }
// 3332   }
// 3333   /* TIM Trigger detection event */
// 3334   if (__HAL_TIM_GET_FLAG(htim, TIM_FLAG_TRIGGER) != RESET)
// 3335   {
// 3336     if (__HAL_TIM_GET_IT_SOURCE(htim, TIM_IT_TRIGGER) != RESET)
// 3337     {
// 3338       __HAL_TIM_CLEAR_IT(htim, TIM_IT_TRIGGER);
// 3339 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 3340       htim->TriggerCallback(htim);
// 3341 #else
// 3342       HAL_TIM_TriggerCallback(htim);
// 3343 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 3344     }
// 3345   }
// 3346   /* TIM commutation event */
// 3347   if (__HAL_TIM_GET_FLAG(htim, TIM_FLAG_COM) != RESET)
// 3348   {
// 3349     if (__HAL_TIM_GET_IT_SOURCE(htim, TIM_IT_COM) != RESET)
// 3350     {
// 3351       __HAL_TIM_CLEAR_IT(htim, TIM_FLAG_COM);
// 3352 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 3353       htim->CommutationCallback(htim);
// 3354 #else
// 3355       HAL_TIMEx_CommutCallback(htim);
// 3356 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 3357     }
// 3358   }
// 3359 }
// 3360 
// 3361 /**
// 3362   * @}
// 3363   */
// 3364 
// 3365 /** @defgroup TIM_Exported_Functions_Group8 TIM Peripheral Control functions
// 3366  *  @brief    TIM Peripheral Control functions
// 3367  *
// 3368 @verbatim
// 3369   ==============================================================================
// 3370                    ##### Peripheral Control functions #####
// 3371   ==============================================================================
// 3372  [..]
// 3373    This section provides functions allowing to:
// 3374       (+) Configure The Input Output channels for OC, PWM, IC or One Pulse mode.
// 3375       (+) Configure External Clock source.
// 3376       (+) Configure Complementary channels, break features and dead time.
// 3377       (+) Configure Master and the Slave synchronization.
// 3378       (+) Configure the DMA Burst Mode.
// 3379 
// 3380 @endverbatim
// 3381   * @{
// 3382   */
// 3383 
// 3384 /**
// 3385   * @brief  Initializes the TIM Output Compare Channels according to the specified
// 3386   *         parameters in the TIM_OC_InitTypeDef.
// 3387   * @param  htim TIM Output Compare handle
// 3388   * @param  sConfig TIM Output Compare configuration structure
// 3389   * @param  Channel TIM Channels to configure
// 3390   *          This parameter can be one of the following values:
// 3391   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 3392   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 3393   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 3394   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 3395   *            @arg TIM_CHANNEL_5: TIM Channel 5 selected
// 3396   *            @arg TIM_CHANNEL_6: TIM Channel 6 selected
// 3397   * @retval HAL status
// 3398   */
// 3399 HAL_StatusTypeDef HAL_TIM_OC_ConfigChannel(TIM_HandleTypeDef *htim,
// 3400                                            TIM_OC_InitTypeDef *sConfig,
// 3401                                            uint32_t Channel)
// 3402 {
// 3403   /* Check the parameters */
// 3404   assert_param(IS_TIM_CHANNELS(Channel));
// 3405   assert_param(IS_TIM_OC_MODE(sConfig->OCMode));
// 3406   assert_param(IS_TIM_OC_POLARITY(sConfig->OCPolarity));
// 3407 
// 3408   /* Process Locked */
// 3409   __HAL_LOCK(htim);
// 3410 
// 3411   htim->State = HAL_TIM_STATE_BUSY;
// 3412 
// 3413   switch (Channel)
// 3414   {
// 3415     case TIM_CHANNEL_1:
// 3416     {
// 3417       /* Check the parameters */
// 3418       assert_param(IS_TIM_CC1_INSTANCE(htim->Instance));
// 3419 
// 3420       /* Configure the TIM Channel 1 in Output Compare */
// 3421       TIM_OC1_SetConfig(htim->Instance, sConfig);
// 3422       break;
// 3423     }
// 3424 
// 3425     case TIM_CHANNEL_2:
// 3426     {
// 3427       /* Check the parameters */
// 3428       assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 3429 
// 3430       /* Configure the TIM Channel 2 in Output Compare */
// 3431       TIM_OC2_SetConfig(htim->Instance, sConfig);
// 3432       break;
// 3433     }
// 3434 
// 3435     case TIM_CHANNEL_3:
// 3436     {
// 3437       /* Check the parameters */
// 3438       assert_param(IS_TIM_CC3_INSTANCE(htim->Instance));
// 3439 
// 3440       /* Configure the TIM Channel 3 in Output Compare */
// 3441       TIM_OC3_SetConfig(htim->Instance, sConfig);
// 3442       break;
// 3443     }
// 3444 
// 3445     case TIM_CHANNEL_4:
// 3446     {
// 3447       /* Check the parameters */
// 3448       assert_param(IS_TIM_CC4_INSTANCE(htim->Instance));
// 3449 
// 3450       /* Configure the TIM Channel 4 in Output Compare */
// 3451       TIM_OC4_SetConfig(htim->Instance, sConfig);
// 3452       break;
// 3453     }
// 3454 
// 3455     case TIM_CHANNEL_5:
// 3456     {
// 3457       /* Check the parameters */
// 3458       assert_param(IS_TIM_CC5_INSTANCE(htim->Instance));
// 3459 
// 3460       /* Configure the TIM Channel 5 in Output Compare */
// 3461       TIM_OC5_SetConfig(htim->Instance, sConfig);
// 3462       break;
// 3463     }
// 3464 
// 3465     case TIM_CHANNEL_6:
// 3466     {
// 3467       /* Check the parameters */
// 3468       assert_param(IS_TIM_CC6_INSTANCE(htim->Instance));
// 3469 
// 3470       /* Configure the TIM Channel 6 in Output Compare */
// 3471       TIM_OC6_SetConfig(htim->Instance, sConfig);
// 3472       break;
// 3473     }
// 3474 
// 3475     default:
// 3476       break;
// 3477   }
// 3478 
// 3479   htim->State = HAL_TIM_STATE_READY;
// 3480 
// 3481   __HAL_UNLOCK(htim);
// 3482 
// 3483   return HAL_OK;
// 3484 }
// 3485 
// 3486 /**
// 3487   * @brief  Initializes the TIM Input Capture Channels according to the specified
// 3488   *         parameters in the TIM_IC_InitTypeDef.
// 3489   * @param  htim TIM IC handle
// 3490   * @param  sConfig TIM Input Capture configuration structure
// 3491   * @param  Channel TIM Channel to configure
// 3492   *          This parameter can be one of the following values:
// 3493   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 3494   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 3495   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 3496   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 3497   * @retval HAL status
// 3498   */
// 3499 HAL_StatusTypeDef HAL_TIM_IC_ConfigChannel(TIM_HandleTypeDef *htim, TIM_IC_InitTypeDef *sConfig, uint32_t Channel)
// 3500 {
// 3501   /* Check the parameters */
// 3502   assert_param(IS_TIM_CC1_INSTANCE(htim->Instance));
// 3503   assert_param(IS_TIM_IC_POLARITY(sConfig->ICPolarity));
// 3504   assert_param(IS_TIM_IC_SELECTION(sConfig->ICSelection));
// 3505   assert_param(IS_TIM_IC_PRESCALER(sConfig->ICPrescaler));
// 3506   assert_param(IS_TIM_IC_FILTER(sConfig->ICFilter));
// 3507 
// 3508   /* Process Locked */
// 3509   __HAL_LOCK(htim);
// 3510 
// 3511   htim->State = HAL_TIM_STATE_BUSY;
// 3512 
// 3513   if (Channel == TIM_CHANNEL_1)
// 3514   {
// 3515     /* TI1 Configuration */
// 3516     TIM_TI1_SetConfig(htim->Instance,
// 3517                       sConfig->ICPolarity,
// 3518                       sConfig->ICSelection,
// 3519                       sConfig->ICFilter);
// 3520 
// 3521     /* Reset the IC1PSC Bits */
// 3522     htim->Instance->CCMR1 &= ~TIM_CCMR1_IC1PSC;
// 3523 
// 3524     /* Set the IC1PSC value */
// 3525     htim->Instance->CCMR1 |= sConfig->ICPrescaler;
// 3526   }
// 3527   else if (Channel == TIM_CHANNEL_2)
// 3528   {
// 3529     /* TI2 Configuration */
// 3530     assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 3531 
// 3532     TIM_TI2_SetConfig(htim->Instance,
// 3533                       sConfig->ICPolarity,
// 3534                       sConfig->ICSelection,
// 3535                       sConfig->ICFilter);
// 3536 
// 3537     /* Reset the IC2PSC Bits */
// 3538     htim->Instance->CCMR1 &= ~TIM_CCMR1_IC2PSC;
// 3539 
// 3540     /* Set the IC2PSC value */
// 3541     htim->Instance->CCMR1 |= (sConfig->ICPrescaler << 8U);
// 3542   }
// 3543   else if (Channel == TIM_CHANNEL_3)
// 3544   {
// 3545     /* TI3 Configuration */
// 3546     assert_param(IS_TIM_CC3_INSTANCE(htim->Instance));
// 3547 
// 3548     TIM_TI3_SetConfig(htim->Instance,
// 3549                       sConfig->ICPolarity,
// 3550                       sConfig->ICSelection,
// 3551                       sConfig->ICFilter);
// 3552 
// 3553     /* Reset the IC3PSC Bits */
// 3554     htim->Instance->CCMR2 &= ~TIM_CCMR2_IC3PSC;
// 3555 
// 3556     /* Set the IC3PSC value */
// 3557     htim->Instance->CCMR2 |= sConfig->ICPrescaler;
// 3558   }
// 3559   else
// 3560   {
// 3561     /* TI4 Configuration */
// 3562     assert_param(IS_TIM_CC4_INSTANCE(htim->Instance));
// 3563 
// 3564     TIM_TI4_SetConfig(htim->Instance,
// 3565                       sConfig->ICPolarity,
// 3566                       sConfig->ICSelection,
// 3567                       sConfig->ICFilter);
// 3568 
// 3569     /* Reset the IC4PSC Bits */
// 3570     htim->Instance->CCMR2 &= ~TIM_CCMR2_IC4PSC;
// 3571 
// 3572     /* Set the IC4PSC value */
// 3573     htim->Instance->CCMR2 |= (sConfig->ICPrescaler << 8U);
// 3574   }
// 3575 
// 3576   htim->State = HAL_TIM_STATE_READY;
// 3577 
// 3578   __HAL_UNLOCK(htim);
// 3579 
// 3580   return HAL_OK;
// 3581 }
// 3582 
// 3583 /**
// 3584   * @brief  Initializes the TIM PWM  channels according to the specified
// 3585   *         parameters in the TIM_OC_InitTypeDef.
// 3586   * @param  htim TIM PWM handle
// 3587   * @param  sConfig TIM PWM configuration structure
// 3588   * @param  Channel TIM Channels to be configured
// 3589   *          This parameter can be one of the following values:
// 3590   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 3591   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 3592   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 3593   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 3594   *            @arg TIM_CHANNEL_5: TIM Channel 5 selected
// 3595   *            @arg TIM_CHANNEL_6: TIM Channel 6 selected
// 3596   * @retval HAL status
// 3597   */
// 3598 HAL_StatusTypeDef HAL_TIM_PWM_ConfigChannel(TIM_HandleTypeDef *htim,
// 3599                                             TIM_OC_InitTypeDef *sConfig,
// 3600                                             uint32_t Channel)
// 3601 {
// 3602   /* Check the parameters */
// 3603   assert_param(IS_TIM_CHANNELS(Channel));
// 3604   assert_param(IS_TIM_PWM_MODE(sConfig->OCMode));
// 3605   assert_param(IS_TIM_OC_POLARITY(sConfig->OCPolarity));
// 3606   assert_param(IS_TIM_FAST_STATE(sConfig->OCFastMode));
// 3607 
// 3608   /* Process Locked */
// 3609   __HAL_LOCK(htim);
// 3610 
// 3611   htim->State = HAL_TIM_STATE_BUSY;
// 3612 
// 3613   switch (Channel)
// 3614   {
// 3615     case TIM_CHANNEL_1:
// 3616     {
// 3617       /* Check the parameters */
// 3618       assert_param(IS_TIM_CC1_INSTANCE(htim->Instance));
// 3619 
// 3620       /* Configure the Channel 1 in PWM mode */
// 3621       TIM_OC1_SetConfig(htim->Instance, sConfig);
// 3622 
// 3623       /* Set the Preload enable bit for channel1 */
// 3624       htim->Instance->CCMR1 |= TIM_CCMR1_OC1PE;
// 3625 
// 3626       /* Configure the Output Fast mode */
// 3627       htim->Instance->CCMR1 &= ~TIM_CCMR1_OC1FE;
// 3628       htim->Instance->CCMR1 |= sConfig->OCFastMode;
// 3629       break;
// 3630     }
// 3631 
// 3632     case TIM_CHANNEL_2:
// 3633     {
// 3634       /* Check the parameters */
// 3635       assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 3636 
// 3637       /* Configure the Channel 2 in PWM mode */
// 3638       TIM_OC2_SetConfig(htim->Instance, sConfig);
// 3639 
// 3640       /* Set the Preload enable bit for channel2 */
// 3641       htim->Instance->CCMR1 |= TIM_CCMR1_OC2PE;
// 3642 
// 3643       /* Configure the Output Fast mode */
// 3644       htim->Instance->CCMR1 &= ~TIM_CCMR1_OC2FE;
// 3645       htim->Instance->CCMR1 |= sConfig->OCFastMode << 8U;
// 3646       break;
// 3647     }
// 3648 
// 3649     case TIM_CHANNEL_3:
// 3650     {
// 3651       /* Check the parameters */
// 3652       assert_param(IS_TIM_CC3_INSTANCE(htim->Instance));
// 3653 
// 3654       /* Configure the Channel 3 in PWM mode */
// 3655       TIM_OC3_SetConfig(htim->Instance, sConfig);
// 3656 
// 3657       /* Set the Preload enable bit for channel3 */
// 3658       htim->Instance->CCMR2 |= TIM_CCMR2_OC3PE;
// 3659 
// 3660       /* Configure the Output Fast mode */
// 3661       htim->Instance->CCMR2 &= ~TIM_CCMR2_OC3FE;
// 3662       htim->Instance->CCMR2 |= sConfig->OCFastMode;
// 3663       break;
// 3664     }
// 3665 
// 3666     case TIM_CHANNEL_4:
// 3667     {
// 3668       /* Check the parameters */
// 3669       assert_param(IS_TIM_CC4_INSTANCE(htim->Instance));
// 3670 
// 3671       /* Configure the Channel 4 in PWM mode */
// 3672       TIM_OC4_SetConfig(htim->Instance, sConfig);
// 3673 
// 3674       /* Set the Preload enable bit for channel4 */
// 3675       htim->Instance->CCMR2 |= TIM_CCMR2_OC4PE;
// 3676 
// 3677       /* Configure the Output Fast mode */
// 3678       htim->Instance->CCMR2 &= ~TIM_CCMR2_OC4FE;
// 3679       htim->Instance->CCMR2 |= sConfig->OCFastMode << 8U;
// 3680       break;
// 3681     }
// 3682 
// 3683     case TIM_CHANNEL_5:
// 3684     {
// 3685       /* Check the parameters */
// 3686       assert_param(IS_TIM_CC5_INSTANCE(htim->Instance));
// 3687 
// 3688       /* Configure the Channel 5 in PWM mode */
// 3689       TIM_OC5_SetConfig(htim->Instance, sConfig);
// 3690 
// 3691       /* Set the Preload enable bit for channel5*/
// 3692       htim->Instance->CCMR3 |= TIM_CCMR3_OC5PE;
// 3693 
// 3694       /* Configure the Output Fast mode */
// 3695       htim->Instance->CCMR3 &= ~TIM_CCMR3_OC5FE;
// 3696       htim->Instance->CCMR3 |= sConfig->OCFastMode;
// 3697       break;
// 3698     }
// 3699 
// 3700     case TIM_CHANNEL_6:
// 3701     {
// 3702       /* Check the parameters */
// 3703       assert_param(IS_TIM_CC6_INSTANCE(htim->Instance));
// 3704 
// 3705       /* Configure the Channel 6 in PWM mode */
// 3706       TIM_OC6_SetConfig(htim->Instance, sConfig);
// 3707 
// 3708       /* Set the Preload enable bit for channel6 */
// 3709       htim->Instance->CCMR3 |= TIM_CCMR3_OC6PE;
// 3710 
// 3711       /* Configure the Output Fast mode */
// 3712       htim->Instance->CCMR3 &= ~TIM_CCMR3_OC6FE;
// 3713       htim->Instance->CCMR3 |= sConfig->OCFastMode << 8U;
// 3714       break;
// 3715     }
// 3716 
// 3717     default:
// 3718       break;
// 3719   }
// 3720 
// 3721   htim->State = HAL_TIM_STATE_READY;
// 3722 
// 3723   __HAL_UNLOCK(htim);
// 3724 
// 3725   return HAL_OK;
// 3726 }
// 3727 
// 3728 /**
// 3729   * @brief  Initializes the TIM One Pulse Channels according to the specified
// 3730   *         parameters in the TIM_OnePulse_InitTypeDef.
// 3731   * @param  htim TIM One Pulse handle
// 3732   * @param  sConfig TIM One Pulse configuration structure
// 3733   * @param  OutputChannel TIM output channel to configure
// 3734   *          This parameter can be one of the following values:
// 3735   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 3736   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 3737   * @param  InputChannel TIM input Channel to configure
// 3738   *          This parameter can be one of the following values:
// 3739   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 3740   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 3741   * @retval HAL status
// 3742   */
// 3743 HAL_StatusTypeDef HAL_TIM_OnePulse_ConfigChannel(TIM_HandleTypeDef *htim,  TIM_OnePulse_InitTypeDef *sConfig, uint32_t OutputChannel,  uint32_t InputChannel)
// 3744 {
// 3745   TIM_OC_InitTypeDef temp1;
// 3746 
// 3747   /* Check the parameters */
// 3748   assert_param(IS_TIM_OPM_CHANNELS(OutputChannel));
// 3749   assert_param(IS_TIM_OPM_CHANNELS(InputChannel));
// 3750 
// 3751   if (OutputChannel != InputChannel)
// 3752   {
// 3753     /* Process Locked */
// 3754     __HAL_LOCK(htim);
// 3755 
// 3756     htim->State = HAL_TIM_STATE_BUSY;
// 3757 
// 3758     /* Extract the Output compare configuration from sConfig structure */
// 3759     temp1.OCMode = sConfig->OCMode;
// 3760     temp1.Pulse = sConfig->Pulse;
// 3761     temp1.OCPolarity = sConfig->OCPolarity;
// 3762     temp1.OCNPolarity = sConfig->OCNPolarity;
// 3763     temp1.OCIdleState = sConfig->OCIdleState;
// 3764     temp1.OCNIdleState = sConfig->OCNIdleState;
// 3765 
// 3766     switch (OutputChannel)
// 3767     {
// 3768       case TIM_CHANNEL_1:
// 3769       {
// 3770         assert_param(IS_TIM_CC1_INSTANCE(htim->Instance));
// 3771 
// 3772         TIM_OC1_SetConfig(htim->Instance, &temp1);
// 3773         break;
// 3774       }
// 3775       case TIM_CHANNEL_2:
// 3776       {
// 3777         assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 3778 
// 3779         TIM_OC2_SetConfig(htim->Instance, &temp1);
// 3780         break;
// 3781       }
// 3782       default:
// 3783         break;
// 3784     }
// 3785 
// 3786     switch (InputChannel)
// 3787     {
// 3788       case TIM_CHANNEL_1:
// 3789       {
// 3790         assert_param(IS_TIM_CC1_INSTANCE(htim->Instance));
// 3791 
// 3792         TIM_TI1_SetConfig(htim->Instance, sConfig->ICPolarity,
// 3793                           sConfig->ICSelection, sConfig->ICFilter);
// 3794 
// 3795         /* Reset the IC1PSC Bits */
// 3796         htim->Instance->CCMR1 &= ~TIM_CCMR1_IC1PSC;
// 3797 
// 3798         /* Select the Trigger source */
// 3799         htim->Instance->SMCR &= ~TIM_SMCR_TS;
// 3800         htim->Instance->SMCR |= TIM_TS_TI1FP1;
// 3801 
// 3802         /* Select the Slave Mode */
// 3803         htim->Instance->SMCR &= ~TIM_SMCR_SMS;
// 3804         htim->Instance->SMCR |= TIM_SLAVEMODE_TRIGGER;
// 3805         break;
// 3806       }
// 3807       case TIM_CHANNEL_2:
// 3808       {
// 3809         assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 3810 
// 3811         TIM_TI2_SetConfig(htim->Instance, sConfig->ICPolarity,
// 3812                           sConfig->ICSelection, sConfig->ICFilter);
// 3813 
// 3814         /* Reset the IC2PSC Bits */
// 3815         htim->Instance->CCMR1 &= ~TIM_CCMR1_IC2PSC;
// 3816 
// 3817         /* Select the Trigger source */
// 3818         htim->Instance->SMCR &= ~TIM_SMCR_TS;
// 3819         htim->Instance->SMCR |= TIM_TS_TI2FP2;
// 3820 
// 3821         /* Select the Slave Mode */
// 3822         htim->Instance->SMCR &= ~TIM_SMCR_SMS;
// 3823         htim->Instance->SMCR |= TIM_SLAVEMODE_TRIGGER;
// 3824         break;
// 3825       }
// 3826 
// 3827       default:
// 3828         break;
// 3829     }
// 3830 
// 3831     htim->State = HAL_TIM_STATE_READY;
// 3832 
// 3833     __HAL_UNLOCK(htim);
// 3834 
// 3835     return HAL_OK;
// 3836   }
// 3837   else
// 3838   {
// 3839     return HAL_ERROR;
// 3840   }
// 3841 }
// 3842 
// 3843 /**
// 3844   * @brief  Configure the DMA Burst to transfer Data from the memory to the TIM peripheral
// 3845   * @param  htim TIM handle
// 3846   * @param  BurstBaseAddress TIM Base address from where the DMA  will start the Data write
// 3847   *         This parameter can be one of the following values:
// 3848   *            @arg TIM_DMABASE_CR1
// 3849   *            @arg TIM_DMABASE_CR2
// 3850   *            @arg TIM_DMABASE_SMCR
// 3851   *            @arg TIM_DMABASE_DIER
// 3852   *            @arg TIM_DMABASE_SR
// 3853   *            @arg TIM_DMABASE_EGR
// 3854   *            @arg TIM_DMABASE_CCMR1
// 3855   *            @arg TIM_DMABASE_CCMR2
// 3856   *            @arg TIM_DMABASE_CCER
// 3857   *            @arg TIM_DMABASE_CNT
// 3858   *            @arg TIM_DMABASE_PSC
// 3859   *            @arg TIM_DMABASE_ARR
// 3860   *            @arg TIM_DMABASE_RCR
// 3861   *            @arg TIM_DMABASE_CCR1
// 3862   *            @arg TIM_DMABASE_CCR2
// 3863   *            @arg TIM_DMABASE_CCR3
// 3864   *            @arg TIM_DMABASE_CCR4
// 3865   *            @arg TIM_DMABASE_BDTR
// 3866   *            @arg TIM_DMABASE_OR
// 3867   *            @arg TIM_DMABASE_CCMR3 
// 3868   *            @arg TIM_DMABASE_CCR5 
// 3869   *            @arg TIM_DMABASE_CCR6 
// 3870   *            @arg TIM_DMABASE_AF1  (*)
// 3871   *            @arg TIM_DMABASE_AF2  (*)
// 3872   *         (*) value not defined in all devices
// 3873   * @param  BurstRequestSrc TIM DMA Request sources
// 3874   *         This parameter can be one of the following values:
// 3875   *            @arg TIM_DMA_UPDATE: TIM update Interrupt source
// 3876   *            @arg TIM_DMA_CC1: TIM Capture Compare 1 DMA source
// 3877   *            @arg TIM_DMA_CC2: TIM Capture Compare 2 DMA source
// 3878   *            @arg TIM_DMA_CC3: TIM Capture Compare 3 DMA source
// 3879   *            @arg TIM_DMA_CC4: TIM Capture Compare 4 DMA source
// 3880   *            @arg TIM_DMA_COM: TIM Commutation DMA source
// 3881   *            @arg TIM_DMA_TRIGGER: TIM Trigger DMA source
// 3882   * @param  BurstBuffer The Buffer address.
// 3883   * @param  BurstLength DMA Burst length. This parameter can be one value
// 3884   *         between: TIM_DMABURSTLENGTH_1TRANSFER and TIM_DMABURSTLENGTH_18TRANSFERS.
// 3885   * @note   This function should be used only when BurstLength is equal to DMA data transfer length.
// 3886   * @retval HAL status
// 3887   */
// 3888 HAL_StatusTypeDef HAL_TIM_DMABurst_WriteStart(TIM_HandleTypeDef *htim, uint32_t BurstBaseAddress, uint32_t BurstRequestSrc,
// 3889                                               uint32_t *BurstBuffer, uint32_t  BurstLength)
// 3890 {
// 3891   /* Check the parameters */
// 3892   assert_param(IS_TIM_DMABURST_INSTANCE(htim->Instance));
// 3893   assert_param(IS_TIM_DMA_BASE(BurstBaseAddress));
// 3894   assert_param(IS_TIM_DMA_SOURCE(BurstRequestSrc));
// 3895   assert_param(IS_TIM_DMA_LENGTH(BurstLength));
// 3896 
// 3897   if ((htim->State == HAL_TIM_STATE_BUSY))
// 3898   {
// 3899     return HAL_BUSY;
// 3900   }
// 3901   else if ((htim->State == HAL_TIM_STATE_READY))
// 3902   {
// 3903     if ((BurstBuffer == NULL) && (BurstLength > 0U))
// 3904     {
// 3905       return HAL_ERROR;
// 3906     }
// 3907     else
// 3908     {
// 3909       htim->State = HAL_TIM_STATE_BUSY;
// 3910     }
// 3911   }
// 3912   else
// 3913   {
// 3914     /* nothing to do */
// 3915   }
// 3916   switch (BurstRequestSrc)
// 3917   {
// 3918     case TIM_DMA_UPDATE:
// 3919     {
// 3920       /* Set the DMA Period elapsed callbacks */
// 3921       htim->hdma[TIM_DMA_ID_UPDATE]->XferCpltCallback = TIM_DMAPeriodElapsedCplt;
// 3922       htim->hdma[TIM_DMA_ID_UPDATE]->XferHalfCpltCallback = TIM_DMAPeriodElapsedHalfCplt;
// 3923 
// 3924       /* Set the DMA error callback */
// 3925       htim->hdma[TIM_DMA_ID_UPDATE]->XferErrorCallback = TIM_DMAError ;
// 3926 
// 3927       /* Enable the DMA stream */
// 3928       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_UPDATE], (uint32_t)BurstBuffer, (uint32_t)&htim->Instance->DMAR, ((BurstLength) >> 8U) + 1U) != HAL_OK)
// 3929       {
// 3930         return HAL_ERROR;
// 3931       }
// 3932       break;
// 3933     }
// 3934     case TIM_DMA_CC1:
// 3935     {
// 3936       /* Set the DMA compare callbacks */
// 3937       htim->hdma[TIM_DMA_ID_CC1]->XferCpltCallback = TIM_DMADelayPulseCplt;
// 3938       htim->hdma[TIM_DMA_ID_CC1]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
// 3939 
// 3940       /* Set the DMA error callback */
// 3941       htim->hdma[TIM_DMA_ID_CC1]->XferErrorCallback = TIM_DMAError ;
// 3942 
// 3943       /* Enable the DMA stream */
// 3944       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC1], (uint32_t)BurstBuffer, (uint32_t)&htim->Instance->DMAR, ((BurstLength) >> 8U) + 1U) != HAL_OK)
// 3945       {
// 3946         return HAL_ERROR;
// 3947       }
// 3948       break;
// 3949     }
// 3950     case TIM_DMA_CC2:
// 3951     {
// 3952       /* Set the DMA compare callbacks */
// 3953       htim->hdma[TIM_DMA_ID_CC2]->XferCpltCallback = TIM_DMADelayPulseCplt;
// 3954       htim->hdma[TIM_DMA_ID_CC2]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
// 3955 
// 3956       /* Set the DMA error callback */
// 3957       htim->hdma[TIM_DMA_ID_CC2]->XferErrorCallback = TIM_DMAError ;
// 3958 
// 3959       /* Enable the DMA stream */
// 3960       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC2], (uint32_t)BurstBuffer, (uint32_t)&htim->Instance->DMAR, ((BurstLength) >> 8U) + 1U) != HAL_OK)
// 3961       {
// 3962         return HAL_ERROR;
// 3963       }
// 3964       break;
// 3965     }
// 3966     case TIM_DMA_CC3:
// 3967     {
// 3968       /* Set the DMA compare callbacks */
// 3969       htim->hdma[TIM_DMA_ID_CC3]->XferCpltCallback = TIM_DMADelayPulseCplt;
// 3970       htim->hdma[TIM_DMA_ID_CC3]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
// 3971 
// 3972       /* Set the DMA error callback */
// 3973       htim->hdma[TIM_DMA_ID_CC3]->XferErrorCallback = TIM_DMAError ;
// 3974 
// 3975       /* Enable the DMA stream */
// 3976       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC3], (uint32_t)BurstBuffer, (uint32_t)&htim->Instance->DMAR, ((BurstLength) >> 8U) + 1U) != HAL_OK)
// 3977       {
// 3978         return HAL_ERROR;
// 3979       }
// 3980       break;
// 3981     }
// 3982     case TIM_DMA_CC4:
// 3983     {
// 3984       /* Set the DMA compare callbacks */
// 3985       htim->hdma[TIM_DMA_ID_CC4]->XferCpltCallback = TIM_DMADelayPulseCplt;
// 3986       htim->hdma[TIM_DMA_ID_CC4]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
// 3987 
// 3988       /* Set the DMA error callback */
// 3989       htim->hdma[TIM_DMA_ID_CC4]->XferErrorCallback = TIM_DMAError ;
// 3990 
// 3991       /* Enable the DMA stream */
// 3992       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC4], (uint32_t)BurstBuffer, (uint32_t)&htim->Instance->DMAR, ((BurstLength) >> 8U) + 1U) != HAL_OK)
// 3993       {
// 3994         return HAL_ERROR;
// 3995       }
// 3996       break;
// 3997     }
// 3998     case TIM_DMA_COM:
// 3999     {
// 4000       /* Set the DMA commutation callbacks */
// 4001       htim->hdma[TIM_DMA_ID_COMMUTATION]->XferCpltCallback =  TIMEx_DMACommutationCplt;
// 4002       htim->hdma[TIM_DMA_ID_COMMUTATION]->XferHalfCpltCallback =  TIMEx_DMACommutationHalfCplt;
// 4003 
// 4004       /* Set the DMA error callback */
// 4005       htim->hdma[TIM_DMA_ID_COMMUTATION]->XferErrorCallback = TIM_DMAError ;
// 4006 
// 4007       /* Enable the DMA stream */
// 4008       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_COMMUTATION], (uint32_t)BurstBuffer, (uint32_t)&htim->Instance->DMAR, ((BurstLength) >> 8U) + 1U) != HAL_OK)
// 4009       {
// 4010         return HAL_ERROR;
// 4011       }
// 4012       break;
// 4013     }
// 4014     case TIM_DMA_TRIGGER:
// 4015     {
// 4016       /* Set the DMA trigger callbacks */
// 4017       htim->hdma[TIM_DMA_ID_TRIGGER]->XferCpltCallback = TIM_DMATriggerCplt;
// 4018       htim->hdma[TIM_DMA_ID_TRIGGER]->XferHalfCpltCallback = TIM_DMATriggerHalfCplt;
// 4019 
// 4020       /* Set the DMA error callback */
// 4021       htim->hdma[TIM_DMA_ID_TRIGGER]->XferErrorCallback = TIM_DMAError ;
// 4022 
// 4023       /* Enable the DMA stream */
// 4024       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_TRIGGER], (uint32_t)BurstBuffer, (uint32_t)&htim->Instance->DMAR, ((BurstLength) >> 8U) + 1U) != HAL_OK)
// 4025       {
// 4026         return HAL_ERROR;
// 4027       }
// 4028       break;
// 4029     }
// 4030     default:
// 4031       break;
// 4032   }
// 4033   /* configure the DMA Burst Mode */
// 4034   htim->Instance->DCR = (BurstBaseAddress | BurstLength);
// 4035 
// 4036   /* Enable the TIM DMA Request */
// 4037   __HAL_TIM_ENABLE_DMA(htim, BurstRequestSrc);
// 4038 
// 4039   htim->State = HAL_TIM_STATE_READY;
// 4040 
// 4041   /* Return function status */
// 4042   return HAL_OK;
// 4043 }
// 4044 
// 4045 /**
// 4046   * @brief  Stops the TIM DMA Burst mode
// 4047   * @param  htim TIM handle
// 4048   * @param  BurstRequestSrc TIM DMA Request sources to disable
// 4049   * @retval HAL status
// 4050   */
// 4051 HAL_StatusTypeDef HAL_TIM_DMABurst_WriteStop(TIM_HandleTypeDef *htim, uint32_t BurstRequestSrc)
// 4052 {
// 4053   HAL_StatusTypeDef status = HAL_OK;
// 4054   /* Check the parameters */
// 4055   assert_param(IS_TIM_DMA_SOURCE(BurstRequestSrc));
// 4056 
// 4057   /* Abort the DMA transfer (at least disable the DMA stream) */
// 4058   switch (BurstRequestSrc)
// 4059   {
// 4060     case TIM_DMA_UPDATE:
// 4061     {
// 4062       status = HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_UPDATE]);
// 4063       break;
// 4064     }
// 4065     case TIM_DMA_CC1:
// 4066     {
// 4067       status = HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC1]);
// 4068       break;
// 4069     }
// 4070     case TIM_DMA_CC2:
// 4071     {
// 4072       status = HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC2]);
// 4073       break;
// 4074     }
// 4075     case TIM_DMA_CC3:
// 4076     {
// 4077       status =  HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC3]);
// 4078       break;
// 4079     }
// 4080     case TIM_DMA_CC4:
// 4081     {
// 4082       status = HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC4]);
// 4083       break;
// 4084     }
// 4085     case TIM_DMA_COM:
// 4086     {
// 4087       status = HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_COMMUTATION]);
// 4088       break;
// 4089     }
// 4090     case TIM_DMA_TRIGGER:
// 4091     {
// 4092       status = HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_TRIGGER]);
// 4093       break;
// 4094     }
// 4095     default:
// 4096       break;
// 4097   }
// 4098 
// 4099   if (HAL_OK == status)
// 4100   {
// 4101     /* Disable the TIM Update DMA request */
// 4102     __HAL_TIM_DISABLE_DMA(htim, BurstRequestSrc);
// 4103   }
// 4104 
// 4105   /* Return function status */
// 4106   return status;
// 4107 }
// 4108 
// 4109 /**
// 4110   * @brief  Configure the DMA Burst to transfer Data from the TIM peripheral to the memory
// 4111   * @param  htim TIM handle
// 4112   * @param  BurstBaseAddress TIM Base address from where the DMA  will start the Data read
// 4113   *         This parameter can be one of the following values:
// 4114   *            @arg TIM_DMABASE_CR1
// 4115   *            @arg TIM_DMABASE_CR2
// 4116   *            @arg TIM_DMABASE_SMCR
// 4117   *            @arg TIM_DMABASE_DIER
// 4118   *            @arg TIM_DMABASE_SR
// 4119   *            @arg TIM_DMABASE_EGR
// 4120   *            @arg TIM_DMABASE_CCMR1
// 4121   *            @arg TIM_DMABASE_CCMR2
// 4122   *            @arg TIM_DMABASE_CCER
// 4123   *            @arg TIM_DMABASE_CNT
// 4124   *            @arg TIM_DMABASE_PSC
// 4125   *            @arg TIM_DMABASE_ARR
// 4126   *            @arg TIM_DMABASE_RCR
// 4127   *            @arg TIM_DMABASE_CCR1
// 4128   *            @arg TIM_DMABASE_CCR2
// 4129   *            @arg TIM_DMABASE_CCR3
// 4130   *            @arg TIM_DMABASE_CCR4
// 4131   *            @arg TIM_DMABASE_BDTR
// 4132   *            @arg TIM_DMABASE_OR
// 4133   *            @arg TIM_DMABASE_CCMR3 
// 4134   *            @arg TIM_DMABASE_CCR5 
// 4135   *            @arg TIM_DMABASE_CCR6 
// 4136   *            @arg TIM_DMABASE_AF1  (*)
// 4137   *            @arg TIM_DMABASE_AF2  (*)
// 4138   *         (*) value not defined in all devices
// 4139   * @param  BurstRequestSrc TIM DMA Request sources
// 4140   *         This parameter can be one of the following values:
// 4141   *            @arg TIM_DMA_UPDATE: TIM update Interrupt source
// 4142   *            @arg TIM_DMA_CC1: TIM Capture Compare 1 DMA source
// 4143   *            @arg TIM_DMA_CC2: TIM Capture Compare 2 DMA source
// 4144   *            @arg TIM_DMA_CC3: TIM Capture Compare 3 DMA source
// 4145   *            @arg TIM_DMA_CC4: TIM Capture Compare 4 DMA source
// 4146   *            @arg TIM_DMA_COM: TIM Commutation DMA source
// 4147   *            @arg TIM_DMA_TRIGGER: TIM Trigger DMA source
// 4148   * @param  BurstBuffer The Buffer address.
// 4149   * @param  BurstLength DMA Burst length. This parameter can be one value
// 4150   *         between: TIM_DMABURSTLENGTH_1TRANSFER and TIM_DMABURSTLENGTH_18TRANSFERS.
// 4151   * @note   This function should be used only when BurstLength is equal to DMA data transfer length.
// 4152   * @retval HAL status
// 4153   */
// 4154 HAL_StatusTypeDef HAL_TIM_DMABurst_ReadStart(TIM_HandleTypeDef *htim, uint32_t BurstBaseAddress, uint32_t BurstRequestSrc,
// 4155                                              uint32_t  *BurstBuffer, uint32_t  BurstLength)
// 4156 {
// 4157   /* Check the parameters */
// 4158   assert_param(IS_TIM_DMABURST_INSTANCE(htim->Instance));
// 4159   assert_param(IS_TIM_DMA_BASE(BurstBaseAddress));
// 4160   assert_param(IS_TIM_DMA_SOURCE(BurstRequestSrc));
// 4161   assert_param(IS_TIM_DMA_LENGTH(BurstLength));
// 4162 
// 4163   if ((htim->State == HAL_TIM_STATE_BUSY))
// 4164   {
// 4165     return HAL_BUSY;
// 4166   }
// 4167   else if ((htim->State == HAL_TIM_STATE_READY))
// 4168   {
// 4169     if ((BurstBuffer == NULL) && (BurstLength > 0U))
// 4170     {
// 4171       return HAL_ERROR;
// 4172     }
// 4173     else
// 4174     {
// 4175       htim->State = HAL_TIM_STATE_BUSY;
// 4176     }
// 4177   }
// 4178   else
// 4179   {
// 4180     /* nothing to do */
// 4181   }
// 4182   switch (BurstRequestSrc)
// 4183   {
// 4184     case TIM_DMA_UPDATE:
// 4185     {
// 4186       /* Set the DMA Period elapsed callbacks */
// 4187       htim->hdma[TIM_DMA_ID_UPDATE]->XferCpltCallback = TIM_DMAPeriodElapsedCplt;
// 4188       htim->hdma[TIM_DMA_ID_UPDATE]->XferHalfCpltCallback = TIM_DMAPeriodElapsedHalfCplt;
// 4189 
// 4190       /* Set the DMA error callback */
// 4191       htim->hdma[TIM_DMA_ID_UPDATE]->XferErrorCallback = TIM_DMAError ;
// 4192 
// 4193       /* Enable the DMA stream */
// 4194       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_UPDATE], (uint32_t)&htim->Instance->DMAR, (uint32_t)BurstBuffer, ((BurstLength) >> 8U) + 1U) != HAL_OK)
// 4195       {
// 4196         return HAL_ERROR;
// 4197       }
// 4198       break;
// 4199     }
// 4200     case TIM_DMA_CC1:
// 4201     {
// 4202       /* Set the DMA capture callbacks */
// 4203       htim->hdma[TIM_DMA_ID_CC1]->XferCpltCallback = TIM_DMACaptureCplt;
// 4204       htim->hdma[TIM_DMA_ID_CC1]->XferHalfCpltCallback = TIM_DMACaptureHalfCplt;
// 4205 
// 4206       /* Set the DMA error callback */
// 4207       htim->hdma[TIM_DMA_ID_CC1]->XferErrorCallback = TIM_DMAError ;
// 4208 
// 4209       /* Enable the DMA stream */
// 4210       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC1], (uint32_t)&htim->Instance->DMAR, (uint32_t)BurstBuffer, ((BurstLength) >> 8U) + 1U) != HAL_OK)
// 4211       {
// 4212         return HAL_ERROR;
// 4213       }
// 4214       break;
// 4215     }
// 4216     case TIM_DMA_CC2:
// 4217     {
// 4218       /* Set the DMA capture/compare callbacks */
// 4219       htim->hdma[TIM_DMA_ID_CC2]->XferCpltCallback = TIM_DMACaptureCplt;
// 4220       htim->hdma[TIM_DMA_ID_CC2]->XferHalfCpltCallback = TIM_DMACaptureHalfCplt;
// 4221 
// 4222       /* Set the DMA error callback */
// 4223       htim->hdma[TIM_DMA_ID_CC2]->XferErrorCallback = TIM_DMAError ;
// 4224 
// 4225       /* Enable the DMA stream */
// 4226       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC2], (uint32_t)&htim->Instance->DMAR, (uint32_t)BurstBuffer, ((BurstLength) >> 8U) + 1U) != HAL_OK)
// 4227       {
// 4228         return HAL_ERROR;
// 4229       }
// 4230       break;
// 4231     }
// 4232     case TIM_DMA_CC3:
// 4233     {
// 4234       /* Set the DMA capture callbacks */
// 4235       htim->hdma[TIM_DMA_ID_CC3]->XferCpltCallback = TIM_DMACaptureCplt;
// 4236       htim->hdma[TIM_DMA_ID_CC3]->XferHalfCpltCallback = TIM_DMACaptureHalfCplt;
// 4237 
// 4238       /* Set the DMA error callback */
// 4239       htim->hdma[TIM_DMA_ID_CC3]->XferErrorCallback = TIM_DMAError ;
// 4240 
// 4241       /* Enable the DMA stream */
// 4242       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC3], (uint32_t)&htim->Instance->DMAR, (uint32_t)BurstBuffer, ((BurstLength) >> 8U) + 1U) != HAL_OK)
// 4243       {
// 4244         return HAL_ERROR;
// 4245       }
// 4246       break;
// 4247     }
// 4248     case TIM_DMA_CC4:
// 4249     {
// 4250       /* Set the DMA capture callbacks */
// 4251       htim->hdma[TIM_DMA_ID_CC4]->XferCpltCallback = TIM_DMACaptureCplt;
// 4252       htim->hdma[TIM_DMA_ID_CC4]->XferHalfCpltCallback = TIM_DMACaptureHalfCplt;
// 4253 
// 4254       /* Set the DMA error callback */
// 4255       htim->hdma[TIM_DMA_ID_CC4]->XferErrorCallback = TIM_DMAError ;
// 4256 
// 4257       /* Enable the DMA stream */
// 4258       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC4], (uint32_t)&htim->Instance->DMAR, (uint32_t)BurstBuffer, ((BurstLength) >> 8U) + 1U) != HAL_OK)
// 4259       {
// 4260         return HAL_ERROR;
// 4261       }
// 4262       break;
// 4263     }
// 4264     case TIM_DMA_COM:
// 4265     {
// 4266       /* Set the DMA commutation callbacks */
// 4267       htim->hdma[TIM_DMA_ID_COMMUTATION]->XferCpltCallback =  TIMEx_DMACommutationCplt;
// 4268       htim->hdma[TIM_DMA_ID_COMMUTATION]->XferHalfCpltCallback =  TIMEx_DMACommutationHalfCplt;
// 4269 
// 4270       /* Set the DMA error callback */
// 4271       htim->hdma[TIM_DMA_ID_COMMUTATION]->XferErrorCallback = TIM_DMAError ;
// 4272 
// 4273       /* Enable the DMA stream */
// 4274       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_COMMUTATION], (uint32_t)&htim->Instance->DMAR, (uint32_t)BurstBuffer, ((BurstLength) >> 8U) + 1U) != HAL_OK)
// 4275       {
// 4276         return HAL_ERROR;
// 4277       }
// 4278       break;
// 4279     }
// 4280     case TIM_DMA_TRIGGER:
// 4281     {
// 4282       /* Set the DMA trigger callbacks */
// 4283       htim->hdma[TIM_DMA_ID_TRIGGER]->XferCpltCallback = TIM_DMATriggerCplt;
// 4284       htim->hdma[TIM_DMA_ID_TRIGGER]->XferHalfCpltCallback = TIM_DMATriggerHalfCplt;
// 4285 
// 4286       /* Set the DMA error callback */
// 4287       htim->hdma[TIM_DMA_ID_TRIGGER]->XferErrorCallback = TIM_DMAError ;
// 4288 
// 4289       /* Enable the DMA stream */
// 4290       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_TRIGGER], (uint32_t)&htim->Instance->DMAR, (uint32_t)BurstBuffer, ((BurstLength) >> 8U) + 1U) != HAL_OK)
// 4291       {
// 4292         return HAL_ERROR;
// 4293       }
// 4294       break;
// 4295     }
// 4296     default:
// 4297       break;
// 4298   }
// 4299 
// 4300   /* configure the DMA Burst Mode */
// 4301   htim->Instance->DCR = (BurstBaseAddress | BurstLength);
// 4302 
// 4303   /* Enable the TIM DMA Request */
// 4304   __HAL_TIM_ENABLE_DMA(htim, BurstRequestSrc);
// 4305 
// 4306   htim->State = HAL_TIM_STATE_READY;
// 4307 
// 4308   /* Return function status */
// 4309   return HAL_OK;
// 4310 }
// 4311 
// 4312 /**
// 4313   * @brief  Stop the DMA burst reading
// 4314   * @param  htim TIM handle
// 4315   * @param  BurstRequestSrc TIM DMA Request sources to disable.
// 4316   * @retval HAL status
// 4317   */
// 4318 HAL_StatusTypeDef HAL_TIM_DMABurst_ReadStop(TIM_HandleTypeDef *htim, uint32_t BurstRequestSrc)
// 4319 {
// 4320   HAL_StatusTypeDef status = HAL_OK;
// 4321   /* Check the parameters */
// 4322   assert_param(IS_TIM_DMA_SOURCE(BurstRequestSrc));
// 4323 
// 4324   /* Abort the DMA transfer (at least disable the DMA stream) */
// 4325   switch (BurstRequestSrc)
// 4326   {
// 4327     case TIM_DMA_UPDATE:
// 4328     {
// 4329       status = HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_UPDATE]);
// 4330       break;
// 4331     }
// 4332     case TIM_DMA_CC1:
// 4333     {
// 4334       status = HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC1]);
// 4335       break;
// 4336     }
// 4337     case TIM_DMA_CC2:
// 4338     {
// 4339       status = HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC2]);
// 4340       break;
// 4341     }
// 4342     case TIM_DMA_CC3:
// 4343     {
// 4344       status = HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC3]);
// 4345       break;
// 4346     }
// 4347     case TIM_DMA_CC4:
// 4348     {
// 4349       status = HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC4]);
// 4350       break;
// 4351     }
// 4352     case TIM_DMA_COM:
// 4353     {
// 4354       status = HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_COMMUTATION]);
// 4355       break;
// 4356     }
// 4357     case TIM_DMA_TRIGGER:
// 4358     {
// 4359       status = HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_TRIGGER]);
// 4360       break;
// 4361     }
// 4362     default:
// 4363       break;
// 4364   }
// 4365 
// 4366   if (HAL_OK == status)
// 4367   {
// 4368     /* Disable the TIM Update DMA request */
// 4369     __HAL_TIM_DISABLE_DMA(htim, BurstRequestSrc);
// 4370   }
// 4371 
// 4372   /* Return function status */
// 4373   return status;
// 4374 }
// 4375 
// 4376 /**
// 4377   * @brief  Generate a software event
// 4378   * @param  htim TIM handle
// 4379   * @param  EventSource specifies the event source.
// 4380   *          This parameter can be one of the following values:
// 4381   *            @arg TIM_EVENTSOURCE_UPDATE: Timer update Event source
// 4382   *            @arg TIM_EVENTSOURCE_CC1: Timer Capture Compare 1 Event source
// 4383   *            @arg TIM_EVENTSOURCE_CC2: Timer Capture Compare 2 Event source
// 4384   *            @arg TIM_EVENTSOURCE_CC3: Timer Capture Compare 3 Event source
// 4385   *            @arg TIM_EVENTSOURCE_CC4: Timer Capture Compare 4 Event source
// 4386   *            @arg TIM_EVENTSOURCE_COM: Timer COM event source
// 4387   *            @arg TIM_EVENTSOURCE_TRIGGER: Timer Trigger Event source
// 4388   *            @arg TIM_EVENTSOURCE_BREAK: Timer Break event source
// 4389   *            @arg TIM_EVENTSOURCE_BREAK2: Timer Break2 event source
// 4390   * @note   Basic timers can only generate an update event.
// 4391   * @note   TIM_EVENTSOURCE_COM is relevant only with advanced timer instances.
// 4392   * @note   TIM_EVENTSOURCE_BREAK and TIM_EVENTSOURCE_BREAK2 are relevant
// 4393   *         only for timer instances supporting break input(s).
// 4394   * @retval HAL status
// 4395   */
// 4396 
// 4397 HAL_StatusTypeDef HAL_TIM_GenerateEvent(TIM_HandleTypeDef *htim, uint32_t EventSource)
// 4398 {
// 4399   /* Check the parameters */
// 4400   assert_param(IS_TIM_INSTANCE(htim->Instance));
// 4401   assert_param(IS_TIM_EVENT_SOURCE(EventSource));
// 4402 
// 4403   /* Process Locked */
// 4404   __HAL_LOCK(htim);
// 4405 
// 4406   /* Change the TIM state */
// 4407   htim->State = HAL_TIM_STATE_BUSY;
// 4408 
// 4409   /* Set the event sources */
// 4410   htim->Instance->EGR = EventSource;
// 4411 
// 4412   /* Change the TIM state */
// 4413   htim->State = HAL_TIM_STATE_READY;
// 4414 
// 4415   __HAL_UNLOCK(htim);
// 4416 
// 4417   /* Return function status */
// 4418   return HAL_OK;
// 4419 }
// 4420 
// 4421 /**
// 4422   * @brief  Configures the OCRef clear feature
// 4423   * @param  htim TIM handle
// 4424   * @param  sClearInputConfig pointer to a TIM_ClearInputConfigTypeDef structure that
// 4425   *         contains the OCREF clear feature and parameters for the TIM peripheral.
// 4426   * @param  Channel specifies the TIM Channel
// 4427   *          This parameter can be one of the following values:
// 4428   *            @arg TIM_CHANNEL_1: TIM Channel 1
// 4429   *            @arg TIM_CHANNEL_2: TIM Channel 2
// 4430   *            @arg TIM_CHANNEL_3: TIM Channel 3
// 4431   *            @arg TIM_CHANNEL_4: TIM Channel 4
// 4432   *            @arg TIM_CHANNEL_5: TIM Channel 5
// 4433   *            @arg TIM_CHANNEL_6: TIM Channel 6
// 4434   * @retval HAL status
// 4435   */
// 4436 HAL_StatusTypeDef HAL_TIM_ConfigOCrefClear(TIM_HandleTypeDef *htim,
// 4437                                            TIM_ClearInputConfigTypeDef *sClearInputConfig,
// 4438                                            uint32_t Channel)
// 4439 {
// 4440   /* Check the parameters */
// 4441   assert_param(IS_TIM_OCXREF_CLEAR_INSTANCE(htim->Instance));
// 4442   assert_param(IS_TIM_CLEARINPUT_SOURCE(sClearInputConfig->ClearInputSource));
// 4443 
// 4444   /* Process Locked */
// 4445   __HAL_LOCK(htim);
// 4446 
// 4447   htim->State = HAL_TIM_STATE_BUSY;
// 4448 
// 4449   switch (sClearInputConfig->ClearInputSource)
// 4450   {
// 4451     case TIM_CLEARINPUTSOURCE_NONE:
// 4452     {
// 4453       /* Clear the OCREF clear selection bit and the the ETR Bits */
// 4454       CLEAR_BIT(htim->Instance->SMCR, (TIM_SMCR_ETF | TIM_SMCR_ETPS | TIM_SMCR_ECE | TIM_SMCR_ETP));
// 4455       break;
// 4456     }
// 4457 
// 4458     case TIM_CLEARINPUTSOURCE_ETR:
// 4459     {
// 4460       /* Check the parameters */
// 4461       assert_param(IS_TIM_CLEARINPUT_POLARITY(sClearInputConfig->ClearInputPolarity));
// 4462       assert_param(IS_TIM_CLEARINPUT_PRESCALER(sClearInputConfig->ClearInputPrescaler));
// 4463       assert_param(IS_TIM_CLEARINPUT_FILTER(sClearInputConfig->ClearInputFilter));
// 4464 
// 4465       /* When OCRef clear feature is used with ETR source, ETR prescaler must be off */
// 4466       if (sClearInputConfig->ClearInputPrescaler != TIM_CLEARINPUTPRESCALER_DIV1)
// 4467       {
// 4468           htim->State = HAL_TIM_STATE_READY;
// 4469         __HAL_UNLOCK(htim);
// 4470         return HAL_ERROR;
// 4471       }
// 4472 
// 4473       TIM_ETR_SetConfig(htim->Instance,
// 4474                         sClearInputConfig->ClearInputPrescaler,
// 4475                         sClearInputConfig->ClearInputPolarity,
// 4476                         sClearInputConfig->ClearInputFilter);
// 4477       break;
// 4478     }
// 4479 
// 4480     default:
// 4481       break;
// 4482   }
// 4483 
// 4484   switch (Channel)
// 4485   {
// 4486     case TIM_CHANNEL_1:
// 4487     {
// 4488       if (sClearInputConfig->ClearInputState != (uint32_t)DISABLE)
// 4489       {
// 4490         /* Enable the OCREF clear feature for Channel 1 */
// 4491         SET_BIT(htim->Instance->CCMR1, TIM_CCMR1_OC1CE);
// 4492       }
// 4493       else
// 4494       {
// 4495         /* Disable the OCREF clear feature for Channel 1 */
// 4496         CLEAR_BIT(htim->Instance->CCMR1, TIM_CCMR1_OC1CE);
// 4497       }
// 4498       break;
// 4499     }
// 4500     case TIM_CHANNEL_2:
// 4501     {
// 4502       if (sClearInputConfig->ClearInputState != (uint32_t)DISABLE)
// 4503       {
// 4504         /* Enable the OCREF clear feature for Channel 2 */
// 4505         SET_BIT(htim->Instance->CCMR1, TIM_CCMR1_OC2CE);
// 4506       }
// 4507       else
// 4508       {
// 4509         /* Disable the OCREF clear feature for Channel 2 */
// 4510         CLEAR_BIT(htim->Instance->CCMR1, TIM_CCMR1_OC2CE);
// 4511       }
// 4512       break;
// 4513     }
// 4514     case TIM_CHANNEL_3:
// 4515     {
// 4516       if (sClearInputConfig->ClearInputState != (uint32_t)DISABLE)
// 4517       {
// 4518         /* Enable the OCREF clear feature for Channel 3 */
// 4519         SET_BIT(htim->Instance->CCMR2, TIM_CCMR2_OC3CE);
// 4520       }
// 4521       else
// 4522       {
// 4523         /* Disable the OCREF clear feature for Channel 3 */
// 4524         CLEAR_BIT(htim->Instance->CCMR2, TIM_CCMR2_OC3CE);
// 4525       }
// 4526       break;
// 4527     }
// 4528     case TIM_CHANNEL_4:
// 4529     {
// 4530       if (sClearInputConfig->ClearInputState != (uint32_t)DISABLE)
// 4531       {
// 4532         /* Enable the OCREF clear feature for Channel 4 */
// 4533         SET_BIT(htim->Instance->CCMR2, TIM_CCMR2_OC4CE);
// 4534       }
// 4535       else
// 4536       {
// 4537         /* Disable the OCREF clear feature for Channel 4 */
// 4538         CLEAR_BIT(htim->Instance->CCMR2, TIM_CCMR2_OC4CE);
// 4539       }
// 4540       break;
// 4541     }
// 4542     case TIM_CHANNEL_5:
// 4543     {
// 4544       if (sClearInputConfig->ClearInputState != (uint32_t)DISABLE)
// 4545       {
// 4546         /* Enable the OCREF clear feature for Channel 5 */
// 4547         SET_BIT(htim->Instance->CCMR3, TIM_CCMR3_OC5CE);
// 4548       }
// 4549       else
// 4550       {
// 4551         /* Disable the OCREF clear feature for Channel 5 */
// 4552         CLEAR_BIT(htim->Instance->CCMR3, TIM_CCMR3_OC5CE);
// 4553       }
// 4554       break;
// 4555     }
// 4556     case TIM_CHANNEL_6:
// 4557     {
// 4558       if (sClearInputConfig->ClearInputState != (uint32_t)DISABLE)
// 4559       {
// 4560         /* Enable the OCREF clear feature for Channel 6 */
// 4561         SET_BIT(htim->Instance->CCMR3, TIM_CCMR3_OC6CE);
// 4562       }
// 4563       else
// 4564       {
// 4565         /* Disable the OCREF clear feature for Channel 6 */
// 4566         CLEAR_BIT(htim->Instance->CCMR3, TIM_CCMR3_OC6CE);
// 4567       }
// 4568       break;
// 4569     }
// 4570     default:
// 4571       break;
// 4572   }
// 4573 
// 4574   htim->State = HAL_TIM_STATE_READY;
// 4575 
// 4576   __HAL_UNLOCK(htim);
// 4577 
// 4578   return HAL_OK;
// 4579 }
// 4580 
// 4581 /**
// 4582   * @brief   Configures the clock source to be used
// 4583   * @param  htim TIM handle
// 4584   * @param  sClockSourceConfig pointer to a TIM_ClockConfigTypeDef structure that
// 4585   *         contains the clock source information for the TIM peripheral.
// 4586   * @retval HAL status
// 4587   */
// 4588 HAL_StatusTypeDef HAL_TIM_ConfigClockSource(TIM_HandleTypeDef *htim, TIM_ClockConfigTypeDef *sClockSourceConfig)
// 4589 {
// 4590   uint32_t tmpsmcr;
// 4591 
// 4592   /* Process Locked */
// 4593   __HAL_LOCK(htim);
// 4594 
// 4595   htim->State = HAL_TIM_STATE_BUSY;
// 4596 
// 4597   /* Check the parameters */
// 4598   assert_param(IS_TIM_CLOCKSOURCE(sClockSourceConfig->ClockSource));
// 4599 
// 4600   /* Reset the SMS, TS, ECE, ETPS and ETRF bits */
// 4601   tmpsmcr = htim->Instance->SMCR;
// 4602   tmpsmcr &= ~(TIM_SMCR_SMS | TIM_SMCR_TS);
// 4603   tmpsmcr &= ~(TIM_SMCR_ETF | TIM_SMCR_ETPS | TIM_SMCR_ECE | TIM_SMCR_ETP);
// 4604   htim->Instance->SMCR = tmpsmcr;
// 4605 
// 4606   switch (sClockSourceConfig->ClockSource)
// 4607   {
// 4608     case TIM_CLOCKSOURCE_INTERNAL:
// 4609     {
// 4610       assert_param(IS_TIM_INSTANCE(htim->Instance));
// 4611       break;
// 4612     }
// 4613 
// 4614     case TIM_CLOCKSOURCE_ETRMODE1:
// 4615     {
// 4616       /* Check whether or not the timer instance supports external trigger input mode 1 (ETRF)*/
// 4617       assert_param(IS_TIM_CLOCKSOURCE_ETRMODE1_INSTANCE(htim->Instance));
// 4618 
// 4619       /* Check ETR input conditioning related parameters */
// 4620       assert_param(IS_TIM_CLOCKPRESCALER(sClockSourceConfig->ClockPrescaler));
// 4621       assert_param(IS_TIM_CLOCKPOLARITY(sClockSourceConfig->ClockPolarity));
// 4622       assert_param(IS_TIM_CLOCKFILTER(sClockSourceConfig->ClockFilter));
// 4623 
// 4624       /* Configure the ETR Clock source */
// 4625       TIM_ETR_SetConfig(htim->Instance,
// 4626                         sClockSourceConfig->ClockPrescaler,
// 4627                         sClockSourceConfig->ClockPolarity,
// 4628                         sClockSourceConfig->ClockFilter);
// 4629 
// 4630       /* Select the External clock mode1 and the ETRF trigger */
// 4631       tmpsmcr = htim->Instance->SMCR;
// 4632       tmpsmcr |= (TIM_SLAVEMODE_EXTERNAL1 | TIM_CLOCKSOURCE_ETRMODE1);
// 4633       /* Write to TIMx SMCR */
// 4634       htim->Instance->SMCR = tmpsmcr;
// 4635       break;
// 4636     }
// 4637 
// 4638     case TIM_CLOCKSOURCE_ETRMODE2:
// 4639     {
// 4640       /* Check whether or not the timer instance supports external trigger input mode 2 (ETRF)*/
// 4641       assert_param(IS_TIM_CLOCKSOURCE_ETRMODE2_INSTANCE(htim->Instance));
// 4642 
// 4643       /* Check ETR input conditioning related parameters */
// 4644       assert_param(IS_TIM_CLOCKPRESCALER(sClockSourceConfig->ClockPrescaler));
// 4645       assert_param(IS_TIM_CLOCKPOLARITY(sClockSourceConfig->ClockPolarity));
// 4646       assert_param(IS_TIM_CLOCKFILTER(sClockSourceConfig->ClockFilter));
// 4647 
// 4648       /* Configure the ETR Clock source */
// 4649       TIM_ETR_SetConfig(htim->Instance,
// 4650                         sClockSourceConfig->ClockPrescaler,
// 4651                         sClockSourceConfig->ClockPolarity,
// 4652                         sClockSourceConfig->ClockFilter);
// 4653       /* Enable the External clock mode2 */
// 4654       htim->Instance->SMCR |= TIM_SMCR_ECE;
// 4655       break;
// 4656     }
// 4657 
// 4658     case TIM_CLOCKSOURCE_TI1:
// 4659     {
// 4660       /* Check whether or not the timer instance supports external clock mode 1 */
// 4661       assert_param(IS_TIM_CLOCKSOURCE_TIX_INSTANCE(htim->Instance));
// 4662 
// 4663       /* Check TI1 input conditioning related parameters */
// 4664       assert_param(IS_TIM_CLOCKPOLARITY(sClockSourceConfig->ClockPolarity));
// 4665       assert_param(IS_TIM_CLOCKFILTER(sClockSourceConfig->ClockFilter));
// 4666 
// 4667       TIM_TI1_ConfigInputStage(htim->Instance,
// 4668                                sClockSourceConfig->ClockPolarity,
// 4669                                sClockSourceConfig->ClockFilter);
// 4670       TIM_ITRx_SetConfig(htim->Instance, TIM_CLOCKSOURCE_TI1);
// 4671       break;
// 4672     }
// 4673 
// 4674     case TIM_CLOCKSOURCE_TI2:
// 4675     {
// 4676       /* Check whether or not the timer instance supports external clock mode 1 (ETRF)*/
// 4677       assert_param(IS_TIM_CLOCKSOURCE_TIX_INSTANCE(htim->Instance));
// 4678 
// 4679       /* Check TI2 input conditioning related parameters */
// 4680       assert_param(IS_TIM_CLOCKPOLARITY(sClockSourceConfig->ClockPolarity));
// 4681       assert_param(IS_TIM_CLOCKFILTER(sClockSourceConfig->ClockFilter));
// 4682 
// 4683       TIM_TI2_ConfigInputStage(htim->Instance,
// 4684                                sClockSourceConfig->ClockPolarity,
// 4685                                sClockSourceConfig->ClockFilter);
// 4686       TIM_ITRx_SetConfig(htim->Instance, TIM_CLOCKSOURCE_TI2);
// 4687       break;
// 4688     }
// 4689 
// 4690     case TIM_CLOCKSOURCE_TI1ED:
// 4691     {
// 4692       /* Check whether or not the timer instance supports external clock mode 1 */
// 4693       assert_param(IS_TIM_CLOCKSOURCE_TIX_INSTANCE(htim->Instance));
// 4694 
// 4695       /* Check TI1 input conditioning related parameters */
// 4696       assert_param(IS_TIM_CLOCKPOLARITY(sClockSourceConfig->ClockPolarity));
// 4697       assert_param(IS_TIM_CLOCKFILTER(sClockSourceConfig->ClockFilter));
// 4698 
// 4699       TIM_TI1_ConfigInputStage(htim->Instance,
// 4700                                sClockSourceConfig->ClockPolarity,
// 4701                                sClockSourceConfig->ClockFilter);
// 4702       TIM_ITRx_SetConfig(htim->Instance, TIM_CLOCKSOURCE_TI1ED);
// 4703       break;
// 4704     }
// 4705 
// 4706     case TIM_CLOCKSOURCE_ITR0:
// 4707     case TIM_CLOCKSOURCE_ITR1:
// 4708     case TIM_CLOCKSOURCE_ITR2:
// 4709     case TIM_CLOCKSOURCE_ITR3:
// 4710     {
// 4711       /* Check whether or not the timer instance supports internal trigger input */
// 4712       assert_param(IS_TIM_CLOCKSOURCE_ITRX_INSTANCE(htim->Instance));
// 4713 
// 4714       TIM_ITRx_SetConfig(htim->Instance, sClockSourceConfig->ClockSource);
// 4715       break;
// 4716     }
// 4717 
// 4718     default:
// 4719       break;
// 4720   }
// 4721   htim->State = HAL_TIM_STATE_READY;
// 4722 
// 4723   __HAL_UNLOCK(htim);
// 4724 
// 4725   return HAL_OK;
// 4726 }
// 4727 
// 4728 /**
// 4729   * @brief  Selects the signal connected to the TI1 input: direct from CH1_input
// 4730   *         or a XOR combination between CH1_input, CH2_input & CH3_input
// 4731   * @param  htim TIM handle.
// 4732   * @param  TI1_Selection Indicate whether or not channel 1 is connected to the
// 4733   *         output of a XOR gate.
// 4734   *          This parameter can be one of the following values:
// 4735   *            @arg TIM_TI1SELECTION_CH1: The TIMx_CH1 pin is connected to TI1 input
// 4736   *            @arg TIM_TI1SELECTION_XORCOMBINATION: The TIMx_CH1, CH2 and CH3
// 4737   *            pins are connected to the TI1 input (XOR combination)
// 4738   * @retval HAL status
// 4739   */
// 4740 HAL_StatusTypeDef HAL_TIM_ConfigTI1Input(TIM_HandleTypeDef *htim, uint32_t TI1_Selection)
// 4741 {
// 4742   uint32_t tmpcr2;
// 4743 
// 4744   /* Check the parameters */
// 4745   assert_param(IS_TIM_XOR_INSTANCE(htim->Instance));
// 4746   assert_param(IS_TIM_TI1SELECTION(TI1_Selection));
// 4747 
// 4748   /* Get the TIMx CR2 register value */
// 4749   tmpcr2 = htim->Instance->CR2;
// 4750 
// 4751   /* Reset the TI1 selection */
// 4752   tmpcr2 &= ~TIM_CR2_TI1S;
// 4753 
// 4754   /* Set the TI1 selection */
// 4755   tmpcr2 |= TI1_Selection;
// 4756 
// 4757   /* Write to TIMxCR2 */
// 4758   htim->Instance->CR2 = tmpcr2;
// 4759 
// 4760   return HAL_OK;
// 4761 }
// 4762 
// 4763 /**
// 4764   * @brief  Configures the TIM in Slave mode
// 4765   * @param  htim TIM handle.
// 4766   * @param  sSlaveConfig pointer to a TIM_SlaveConfigTypeDef structure that
// 4767   *         contains the selected trigger (internal trigger input, filtered
// 4768   *         timer input or external trigger input) and the Slave mode
// 4769   *         (Disable, Reset, Gated, Trigger, External clock mode 1).
// 4770   * @retval HAL status
// 4771   */
// 4772 HAL_StatusTypeDef HAL_TIM_SlaveConfigSynchro(TIM_HandleTypeDef *htim, TIM_SlaveConfigTypeDef *sSlaveConfig)
// 4773 {
// 4774   /* Check the parameters */
// 4775   assert_param(IS_TIM_SLAVE_INSTANCE(htim->Instance));
// 4776   assert_param(IS_TIM_SLAVE_MODE(sSlaveConfig->SlaveMode));
// 4777   assert_param(IS_TIM_TRIGGER_SELECTION(sSlaveConfig->InputTrigger));
// 4778 
// 4779   __HAL_LOCK(htim);
// 4780 
// 4781   htim->State = HAL_TIM_STATE_BUSY;
// 4782 
// 4783   if(TIM_SlaveTimer_SetConfig(htim, sSlaveConfig) != HAL_OK)
// 4784   {
// 4785       htim->State = HAL_TIM_STATE_READY;
// 4786     __HAL_UNLOCK(htim);
// 4787     return HAL_ERROR;
// 4788   }
// 4789 
// 4790   /* Disable Trigger Interrupt */
// 4791   __HAL_TIM_DISABLE_IT(htim, TIM_IT_TRIGGER);
// 4792 
// 4793   /* Disable Trigger DMA request */
// 4794   __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_TRIGGER);
// 4795 
// 4796   htim->State = HAL_TIM_STATE_READY;
// 4797 
// 4798   __HAL_UNLOCK(htim);
// 4799 
// 4800   return HAL_OK;
// 4801 }
// 4802 
// 4803 /**
// 4804   * @brief  Configures the TIM in Slave mode in interrupt mode
// 4805   * @param  htim TIM handle.
// 4806   * @param  sSlaveConfig pointer to a TIM_SlaveConfigTypeDef structure that
// 4807   *         contains the selected trigger (internal trigger input, filtered
// 4808   *         timer input or external trigger input) and the Slave mode
// 4809   *         (Disable, Reset, Gated, Trigger, External clock mode 1).
// 4810   * @retval HAL status
// 4811   */
// 4812 HAL_StatusTypeDef HAL_TIM_SlaveConfigSynchro_IT(TIM_HandleTypeDef *htim,
// 4813                                                         TIM_SlaveConfigTypeDef *sSlaveConfig)
// 4814 {
// 4815   /* Check the parameters */
// 4816   assert_param(IS_TIM_SLAVE_INSTANCE(htim->Instance));
// 4817   assert_param(IS_TIM_SLAVE_MODE(sSlaveConfig->SlaveMode));
// 4818   assert_param(IS_TIM_TRIGGER_SELECTION(sSlaveConfig->InputTrigger));
// 4819 
// 4820   __HAL_LOCK(htim);
// 4821 
// 4822   htim->State = HAL_TIM_STATE_BUSY;
// 4823 
// 4824   if(TIM_SlaveTimer_SetConfig(htim, sSlaveConfig) != HAL_OK)
// 4825   {
// 4826       htim->State = HAL_TIM_STATE_READY;
// 4827     __HAL_UNLOCK(htim);
// 4828     return HAL_ERROR;
// 4829   }
// 4830 
// 4831   /* Enable Trigger Interrupt */
// 4832   __HAL_TIM_ENABLE_IT(htim, TIM_IT_TRIGGER);
// 4833 
// 4834   /* Disable Trigger DMA request */
// 4835   __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_TRIGGER);
// 4836 
// 4837   htim->State = HAL_TIM_STATE_READY;
// 4838 
// 4839   __HAL_UNLOCK(htim);
// 4840 
// 4841   return HAL_OK;
// 4842 }
// 4843 
// 4844 /**
// 4845   * @brief  Read the captured value from Capture Compare unit
// 4846   * @param  htim TIM handle.
// 4847   * @param  Channel TIM Channels to be enabled
// 4848   *          This parameter can be one of the following values:
// 4849   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 4850   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 4851   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 4852   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 4853   * @retval Captured value
// 4854   */
// 4855 uint32_t HAL_TIM_ReadCapturedValue(TIM_HandleTypeDef *htim, uint32_t Channel)
// 4856 {
// 4857   uint32_t tmpreg = 0U;
// 4858 
// 4859   switch (Channel)
// 4860   {
// 4861     case TIM_CHANNEL_1:
// 4862     {
// 4863       /* Check the parameters */
// 4864       assert_param(IS_TIM_CC1_INSTANCE(htim->Instance));
// 4865 
// 4866       /* Return the capture 1 value */
// 4867       tmpreg =  htim->Instance->CCR1;
// 4868 
// 4869       break;
// 4870     }
// 4871     case TIM_CHANNEL_2:
// 4872     {
// 4873       /* Check the parameters */
// 4874       assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 4875 
// 4876       /* Return the capture 2 value */
// 4877       tmpreg =   htim->Instance->CCR2;
// 4878 
// 4879       break;
// 4880     }
// 4881 
// 4882     case TIM_CHANNEL_3:
// 4883     {
// 4884       /* Check the parameters */
// 4885       assert_param(IS_TIM_CC3_INSTANCE(htim->Instance));
// 4886 
// 4887       /* Return the capture 3 value */
// 4888       tmpreg =   htim->Instance->CCR3;
// 4889 
// 4890       break;
// 4891     }
// 4892 
// 4893     case TIM_CHANNEL_4:
// 4894     {
// 4895       /* Check the parameters */
// 4896       assert_param(IS_TIM_CC4_INSTANCE(htim->Instance));
// 4897 
// 4898       /* Return the capture 4 value */
// 4899       tmpreg =   htim->Instance->CCR4;
// 4900 
// 4901       break;
// 4902     }
// 4903 
// 4904     default:
// 4905       break;
// 4906   }
// 4907 
// 4908   return tmpreg;
// 4909 }
// 4910 
// 4911 /**
// 4912   * @}
// 4913   */
// 4914 
// 4915 /** @defgroup TIM_Exported_Functions_Group9 TIM Callbacks functions
// 4916  *  @brief    TIM Callbacks functions
// 4917  *
// 4918 @verbatim
// 4919   ==============================================================================
// 4920                         ##### TIM Callbacks functions #####
// 4921   ==============================================================================
// 4922  [..]
// 4923    This section provides TIM callback functions:
// 4924    (+) TIM Period elapsed callback
// 4925    (+) TIM Output Compare callback
// 4926    (+) TIM Input capture callback
// 4927    (+) TIM Trigger callback
// 4928    (+) TIM Error callback
// 4929 
// 4930 @endverbatim
// 4931   * @{
// 4932   */
// 4933 
// 4934 /**
// 4935   * @brief  Period elapsed callback in non-blocking mode
// 4936   * @param  htim TIM handle
// 4937   * @retval None
// 4938   */
// 4939 __weak void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
// 4940 {
// 4941   /* Prevent unused argument(s) compilation warning */
// 4942   UNUSED(htim);
// 4943 
// 4944   /* NOTE : This function should not be modified, when the callback is needed,
// 4945             the HAL_TIM_PeriodElapsedCallback could be implemented in the user file
// 4946    */
// 4947 }
// 4948 
// 4949 /**
// 4950   * @brief  Period elapsed half complete callback in non-blocking mode
// 4951   * @param  htim TIM handle
// 4952   * @retval None
// 4953   */
// 4954 __weak void HAL_TIM_PeriodElapsedHalfCpltCallback(TIM_HandleTypeDef *htim)
// 4955 {
// 4956   /* Prevent unused argument(s) compilation warning */
// 4957   UNUSED(htim);
// 4958 
// 4959   /* NOTE : This function should not be modified, when the callback is needed,
// 4960             the HAL_TIM_PeriodElapsedHalfCpltCallback could be implemented in the user file
// 4961    */
// 4962 }
// 4963 
// 4964 /**
// 4965   * @brief  Output Compare callback in non-blocking mode
// 4966   * @param  htim TIM OC handle
// 4967   * @retval None
// 4968   */
// 4969 __weak void HAL_TIM_OC_DelayElapsedCallback(TIM_HandleTypeDef *htim)
// 4970 {
// 4971   /* Prevent unused argument(s) compilation warning */
// 4972   UNUSED(htim);
// 4973 
// 4974   /* NOTE : This function should not be modified, when the callback is needed,
// 4975             the HAL_TIM_OC_DelayElapsedCallback could be implemented in the user file
// 4976    */
// 4977 }
// 4978 
// 4979 /**
// 4980   * @brief  Input Capture callback in non-blocking mode
// 4981   * @param  htim TIM IC handle
// 4982   * @retval None
// 4983   */
// 4984 __weak void HAL_TIM_IC_CaptureCallback(TIM_HandleTypeDef *htim)
// 4985 {
// 4986   /* Prevent unused argument(s) compilation warning */
// 4987   UNUSED(htim);
// 4988 
// 4989   /* NOTE : This function should not be modified, when the callback is needed,
// 4990             the HAL_TIM_IC_CaptureCallback could be implemented in the user file
// 4991    */
// 4992 }
// 4993 
// 4994 /**
// 4995   * @brief  Input Capture half complete callback in non-blocking mode
// 4996   * @param  htim TIM IC handle
// 4997   * @retval None
// 4998   */
// 4999 __weak void HAL_TIM_IC_CaptureHalfCpltCallback(TIM_HandleTypeDef *htim)
// 5000 {
// 5001   /* Prevent unused argument(s) compilation warning */
// 5002   UNUSED(htim);
// 5003 
// 5004   /* NOTE : This function should not be modified, when the callback is needed,
// 5005             the HAL_TIM_IC_CaptureHalfCpltCallback could be implemented in the user file
// 5006    */
// 5007 }
// 5008 
// 5009 /**
// 5010   * @brief  PWM Pulse finished callback in non-blocking mode
// 5011   * @param  htim TIM handle
// 5012   * @retval None
// 5013   */
// 5014 __weak void HAL_TIM_PWM_PulseFinishedCallback(TIM_HandleTypeDef *htim)
// 5015 {
// 5016   /* Prevent unused argument(s) compilation warning */
// 5017   UNUSED(htim);
// 5018 
// 5019   /* NOTE : This function should not be modified, when the callback is needed,
// 5020             the HAL_TIM_PWM_PulseFinishedCallback could be implemented in the user file
// 5021    */
// 5022 }
// 5023 
// 5024 /**
// 5025   * @brief  PWM Pulse finished half complete callback in non-blocking mode
// 5026   * @param  htim TIM handle
// 5027   * @retval None
// 5028   */
// 5029 __weak void HAL_TIM_PWM_PulseFinishedHalfCpltCallback(TIM_HandleTypeDef *htim)
// 5030 {
// 5031   /* Prevent unused argument(s) compilation warning */
// 5032   UNUSED(htim);
// 5033 
// 5034   /* NOTE : This function should not be modified, when the callback is needed,
// 5035             the HAL_TIM_PWM_PulseFinishedHalfCpltCallback could be implemented in the user file
// 5036    */
// 5037 }
// 5038 
// 5039 /**
// 5040   * @brief  Hall Trigger detection callback in non-blocking mode
// 5041   * @param  htim TIM handle
// 5042   * @retval None
// 5043   */
// 5044 __weak void HAL_TIM_TriggerCallback(TIM_HandleTypeDef *htim)
// 5045 {
// 5046   /* Prevent unused argument(s) compilation warning */
// 5047   UNUSED(htim);
// 5048 
// 5049   /* NOTE : This function should not be modified, when the callback is needed,
// 5050             the HAL_TIM_TriggerCallback could be implemented in the user file
// 5051    */
// 5052 }
// 5053 
// 5054 /**
// 5055   * @brief  Hall Trigger detection half complete callback in non-blocking mode
// 5056   * @param  htim TIM handle
// 5057   * @retval None
// 5058   */
// 5059 __weak void HAL_TIM_TriggerHalfCpltCallback(TIM_HandleTypeDef *htim)
// 5060 {
// 5061   /* Prevent unused argument(s) compilation warning */
// 5062   UNUSED(htim);
// 5063 
// 5064   /* NOTE : This function should not be modified, when the callback is needed,
// 5065             the HAL_TIM_TriggerHalfCpltCallback could be implemented in the user file
// 5066    */
// 5067 }
// 5068 
// 5069 /**
// 5070   * @brief  Timer error callback in non-blocking mode
// 5071   * @param  htim TIM handle
// 5072   * @retval None
// 5073   */
// 5074 __weak void HAL_TIM_ErrorCallback(TIM_HandleTypeDef *htim)
// 5075 {
// 5076   /* Prevent unused argument(s) compilation warning */
// 5077   UNUSED(htim);
// 5078 
// 5079   /* NOTE : This function should not be modified, when the callback is needed,
// 5080             the HAL_TIM_ErrorCallback could be implemented in the user file
// 5081    */
// 5082 }
// 5083 
// 5084 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 5085 /**
// 5086   * @brief  Register a User TIM callback to be used instead of the weak predefined callback
// 5087   * @param htim tim handle
// 5088   * @param CallbackID ID of the callback to be registered
// 5089   *        This parameter can be one of the following values:
// 5090   *          @arg @ref HAL_TIM_BASE_MSPINIT_CB_ID Base MspInit Callback ID
// 5091   *          @arg @ref HAL_TIM_BASE_MSPDEINIT_CB_ID Base MspDeInit Callback ID
// 5092   *          @arg @ref HAL_TIM_IC_MSPINIT_CB_ID IC MspInit Callback ID
// 5093   *          @arg @ref HAL_TIM_IC_MSPDEINIT_CB_ID IC MspDeInit Callback ID
// 5094   *          @arg @ref HAL_TIM_OC_MSPINIT_CB_ID OC MspInit Callback ID
// 5095   *          @arg @ref HAL_TIM_OC_MSPDEINIT_CB_ID OC MspDeInit Callback ID
// 5096   *          @arg @ref HAL_TIM_PWM_MSPINIT_CB_ID PWM MspInit Callback ID
// 5097   *          @arg @ref HAL_TIM_PWM_MSPDEINIT_CB_ID PWM MspDeInit Callback ID
// 5098   *          @arg @ref HAL_TIM_ONE_PULSE_MSPINIT_CB_ID One Pulse MspInit Callback ID
// 5099   *          @arg @ref HAL_TIM_ONE_PULSE_MSPDEINIT_CB_ID One Pulse MspDeInit Callback ID
// 5100   *          @arg @ref HAL_TIM_ENCODER_MSPINIT_CB_ID Encoder MspInit Callback ID
// 5101   *          @arg @ref HAL_TIM_ENCODER_MSPDEINIT_CB_ID Encoder MspDeInit Callback ID
// 5102   *          @arg @ref HAL_TIM_HALL_SENSOR_MSPINIT_CB_ID Hall Sensor MspInit Callback ID
// 5103   *          @arg @ref HAL_TIM_HALL_SENSOR_MSPDEINIT_CB_ID Hall Sensor MspDeInit Callback ID
// 5104   *          @arg @ref HAL_TIM_PERIOD_ELAPSED_CB_ID Period Elapsed Callback ID
// 5105   *          @arg @ref HAL_TIM_PERIOD_ELAPSED_HALF_CB_ID Period Elapsed half complete Callback ID
// 5106   *          @arg @ref HAL_TIM_TRIGGER_CB_ID Trigger Callback ID
// 5107   *          @arg @ref HAL_TIM_TRIGGER_HALF_CB_ID Trigger half complete Callback ID
// 5108   *          @arg @ref HAL_TIM_IC_CAPTURE_CB_ID Input Capture Callback ID
// 5109   *          @arg @ref HAL_TIM_IC_CAPTURE_HALF_CB_ID Input Capture half complete Callback ID
// 5110   *          @arg @ref HAL_TIM_OC_DELAY_ELAPSED_CB_ID Output Compare Delay Elapsed Callback ID
// 5111   *          @arg @ref HAL_TIM_PWM_PULSE_FINISHED_CB_ID PWM Pulse Finished Callback ID
// 5112   *          @arg @ref HAL_TIM_PWM_PULSE_FINISHED_HALF_CB_ID PWM Pulse Finished half complete Callback ID
// 5113   *          @arg @ref HAL_TIM_ERROR_CB_ID Error Callback ID
// 5114   *          @arg @ref HAL_TIM_COMMUTATION_CB_ID Commutation Callback ID
// 5115   *          @arg @ref HAL_TIM_COMMUTATION_HALF_CB_ID Commutation half complete Callback ID
// 5116   *          @arg @ref HAL_TIM_BREAK_CB_ID Break Callback ID
// 5117   *          @arg @ref HAL_TIM_BREAK2_CB_ID Break2 Callback ID
// 5118   *          @param pCallback pointer to the callback function
// 5119   *          @retval status
// 5120   */
// 5121 HAL_StatusTypeDef HAL_TIM_RegisterCallback(TIM_HandleTypeDef *htim, HAL_TIM_CallbackIDTypeDef CallbackID, pTIM_CallbackTypeDef pCallback)
// 5122 {
// 5123   HAL_StatusTypeDef status = HAL_OK;
// 5124 
// 5125   if (pCallback == NULL)
// 5126   {
// 5127     return HAL_ERROR;
// 5128   }
// 5129   /* Process locked */
// 5130   __HAL_LOCK(htim);
// 5131 
// 5132   if (htim->State == HAL_TIM_STATE_READY)
// 5133   {
// 5134     switch (CallbackID)
// 5135     {
// 5136       case HAL_TIM_BASE_MSPINIT_CB_ID :
// 5137         htim->Base_MspInitCallback                 = pCallback;
// 5138         break;
// 5139 
// 5140       case HAL_TIM_BASE_MSPDEINIT_CB_ID :
// 5141         htim->Base_MspDeInitCallback               = pCallback;
// 5142         break;
// 5143 
// 5144       case HAL_TIM_IC_MSPINIT_CB_ID :
// 5145         htim->IC_MspInitCallback                   = pCallback;
// 5146         break;
// 5147 
// 5148       case HAL_TIM_IC_MSPDEINIT_CB_ID :
// 5149         htim->IC_MspDeInitCallback                 = pCallback;
// 5150         break;
// 5151 
// 5152       case HAL_TIM_OC_MSPINIT_CB_ID :
// 5153         htim->OC_MspInitCallback                   = pCallback;
// 5154         break;
// 5155 
// 5156       case HAL_TIM_OC_MSPDEINIT_CB_ID :
// 5157         htim->OC_MspDeInitCallback                 = pCallback;
// 5158         break;
// 5159 
// 5160       case HAL_TIM_PWM_MSPINIT_CB_ID :
// 5161         htim->PWM_MspInitCallback                  = pCallback;
// 5162         break;
// 5163 
// 5164       case HAL_TIM_PWM_MSPDEINIT_CB_ID :
// 5165         htim->PWM_MspDeInitCallback                = pCallback;
// 5166         break;
// 5167 
// 5168       case HAL_TIM_ONE_PULSE_MSPINIT_CB_ID :
// 5169         htim->OnePulse_MspInitCallback             = pCallback;
// 5170         break;
// 5171 
// 5172       case HAL_TIM_ONE_PULSE_MSPDEINIT_CB_ID :
// 5173         htim->OnePulse_MspDeInitCallback           = pCallback;
// 5174         break;
// 5175 
// 5176       case HAL_TIM_ENCODER_MSPINIT_CB_ID :
// 5177         htim->Encoder_MspInitCallback              = pCallback;
// 5178         break;
// 5179 
// 5180       case HAL_TIM_ENCODER_MSPDEINIT_CB_ID :
// 5181         htim->Encoder_MspDeInitCallback            = pCallback;
// 5182         break;
// 5183 
// 5184       case HAL_TIM_HALL_SENSOR_MSPINIT_CB_ID :
// 5185         htim->HallSensor_MspInitCallback           = pCallback;
// 5186         break;
// 5187 
// 5188       case HAL_TIM_HALL_SENSOR_MSPDEINIT_CB_ID :
// 5189         htim->HallSensor_MspDeInitCallback         = pCallback;
// 5190         break;
// 5191 
// 5192       case HAL_TIM_PERIOD_ELAPSED_CB_ID :
// 5193         htim->PeriodElapsedCallback                = pCallback;
// 5194         break;
// 5195 
// 5196       case HAL_TIM_PERIOD_ELAPSED_HALF_CB_ID :
// 5197         htim->PeriodElapsedHalfCpltCallback        = pCallback;
// 5198         break;
// 5199 
// 5200       case HAL_TIM_TRIGGER_CB_ID :
// 5201         htim->TriggerCallback                      = pCallback;
// 5202         break;
// 5203 
// 5204       case HAL_TIM_TRIGGER_HALF_CB_ID :
// 5205         htim->TriggerHalfCpltCallback              = pCallback;
// 5206         break;
// 5207 
// 5208       case HAL_TIM_IC_CAPTURE_CB_ID :
// 5209         htim->IC_CaptureCallback                   = pCallback;
// 5210         break;
// 5211 
// 5212       case HAL_TIM_IC_CAPTURE_HALF_CB_ID :
// 5213         htim->IC_CaptureHalfCpltCallback           = pCallback;
// 5214         break;
// 5215 
// 5216       case HAL_TIM_OC_DELAY_ELAPSED_CB_ID :
// 5217         htim->OC_DelayElapsedCallback              = pCallback;
// 5218         break;
// 5219 
// 5220       case HAL_TIM_PWM_PULSE_FINISHED_CB_ID :
// 5221         htim->PWM_PulseFinishedCallback            = pCallback;
// 5222         break;
// 5223 
// 5224       case HAL_TIM_PWM_PULSE_FINISHED_HALF_CB_ID :
// 5225         htim->PWM_PulseFinishedHalfCpltCallback    = pCallback;
// 5226         break;
// 5227 
// 5228       case HAL_TIM_ERROR_CB_ID :
// 5229         htim->ErrorCallback                        = pCallback;
// 5230         break;
// 5231 
// 5232       case HAL_TIM_COMMUTATION_CB_ID :
// 5233         htim->CommutationCallback                  = pCallback;
// 5234         break;
// 5235 
// 5236       case HAL_TIM_COMMUTATION_HALF_CB_ID :
// 5237         htim->CommutationHalfCpltCallback          = pCallback;
// 5238         break;
// 5239 
// 5240       case HAL_TIM_BREAK_CB_ID :
// 5241         htim->BreakCallback                        = pCallback;
// 5242         break;
// 5243 
// 5244       case HAL_TIM_BREAK2_CB_ID :
// 5245         htim->Break2Callback                       = pCallback;
// 5246         break;
// 5247 
// 5248       default :
// 5249         /* Return error status */
// 5250         status =  HAL_ERROR;
// 5251         break;
// 5252     }
// 5253   }
// 5254   else if (htim->State == HAL_TIM_STATE_RESET)
// 5255   {
// 5256     switch (CallbackID)
// 5257     {
// 5258       case HAL_TIM_BASE_MSPINIT_CB_ID :
// 5259         htim->Base_MspInitCallback         = pCallback;
// 5260         break;
// 5261 
// 5262       case HAL_TIM_BASE_MSPDEINIT_CB_ID :
// 5263         htim->Base_MspDeInitCallback       = pCallback;
// 5264         break;
// 5265 
// 5266       case HAL_TIM_IC_MSPINIT_CB_ID :
// 5267         htim->IC_MspInitCallback           = pCallback;
// 5268         break;
// 5269 
// 5270       case HAL_TIM_IC_MSPDEINIT_CB_ID :
// 5271         htim->IC_MspDeInitCallback         = pCallback;
// 5272         break;
// 5273 
// 5274       case HAL_TIM_OC_MSPINIT_CB_ID :
// 5275         htim->OC_MspInitCallback           = pCallback;
// 5276         break;
// 5277 
// 5278       case HAL_TIM_OC_MSPDEINIT_CB_ID :
// 5279         htim->OC_MspDeInitCallback         = pCallback;
// 5280         break;
// 5281 
// 5282       case HAL_TIM_PWM_MSPINIT_CB_ID :
// 5283         htim->PWM_MspInitCallback          = pCallback;
// 5284         break;
// 5285 
// 5286       case HAL_TIM_PWM_MSPDEINIT_CB_ID :
// 5287         htim->PWM_MspDeInitCallback        = pCallback;
// 5288         break;
// 5289 
// 5290       case HAL_TIM_ONE_PULSE_MSPINIT_CB_ID :
// 5291         htim->OnePulse_MspInitCallback     = pCallback;
// 5292         break;
// 5293 
// 5294       case HAL_TIM_ONE_PULSE_MSPDEINIT_CB_ID :
// 5295         htim->OnePulse_MspDeInitCallback   = pCallback;
// 5296         break;
// 5297 
// 5298       case HAL_TIM_ENCODER_MSPINIT_CB_ID :
// 5299         htim->Encoder_MspInitCallback      = pCallback;
// 5300         break;
// 5301 
// 5302       case HAL_TIM_ENCODER_MSPDEINIT_CB_ID :
// 5303         htim->Encoder_MspDeInitCallback    = pCallback;
// 5304         break;
// 5305 
// 5306       case HAL_TIM_HALL_SENSOR_MSPINIT_CB_ID :
// 5307         htim->HallSensor_MspInitCallback   = pCallback;
// 5308         break;
// 5309 
// 5310       case HAL_TIM_HALL_SENSOR_MSPDEINIT_CB_ID :
// 5311         htim->HallSensor_MspDeInitCallback = pCallback;
// 5312         break;
// 5313 
// 5314       default :
// 5315         /* Return error status */
// 5316         status =  HAL_ERROR;
// 5317         break;
// 5318     }
// 5319   }
// 5320   else
// 5321   {
// 5322     /* Return error status */
// 5323     status =  HAL_ERROR;
// 5324   }
// 5325 
// 5326   /* Release Lock */
// 5327   __HAL_UNLOCK(htim);
// 5328 
// 5329   return status;
// 5330 }
// 5331 
// 5332 /**
// 5333   * @brief  Unregister a TIM callback
// 5334   *         TIM callback is redirected to the weak predefined callback
// 5335   * @param htim tim handle
// 5336   * @param CallbackID ID of the callback to be unregistered
// 5337   *        This parameter can be one of the following values:
// 5338   *          @arg @ref HAL_TIM_BASE_MSPINIT_CB_ID Base MspInit Callback ID
// 5339   *          @arg @ref HAL_TIM_BASE_MSPDEINIT_CB_ID Base MspDeInit Callback ID
// 5340   *          @arg @ref HAL_TIM_IC_MSPINIT_CB_ID IC MspInit Callback ID
// 5341   *          @arg @ref HAL_TIM_IC_MSPDEINIT_CB_ID IC MspDeInit Callback ID
// 5342   *          @arg @ref HAL_TIM_OC_MSPINIT_CB_ID OC MspInit Callback ID
// 5343   *          @arg @ref HAL_TIM_OC_MSPDEINIT_CB_ID OC MspDeInit Callback ID
// 5344   *          @arg @ref HAL_TIM_PWM_MSPINIT_CB_ID PWM MspInit Callback ID
// 5345   *          @arg @ref HAL_TIM_PWM_MSPDEINIT_CB_ID PWM MspDeInit Callback ID
// 5346   *          @arg @ref HAL_TIM_ONE_PULSE_MSPINIT_CB_ID One Pulse MspInit Callback ID
// 5347   *          @arg @ref HAL_TIM_ONE_PULSE_MSPDEINIT_CB_ID One Pulse MspDeInit Callback ID
// 5348   *          @arg @ref HAL_TIM_ENCODER_MSPINIT_CB_ID Encoder MspInit Callback ID
// 5349   *          @arg @ref HAL_TIM_ENCODER_MSPDEINIT_CB_ID Encoder MspDeInit Callback ID
// 5350   *          @arg @ref HAL_TIM_HALL_SENSOR_MSPINIT_CB_ID Hall Sensor MspInit Callback ID
// 5351   *          @arg @ref HAL_TIM_HALL_SENSOR_MSPDEINIT_CB_ID Hall Sensor MspDeInit Callback ID
// 5352   *          @arg @ref HAL_TIM_PERIOD_ELAPSED_CB_ID Period Elapsed Callback ID
// 5353   *          @arg @ref HAL_TIM_PERIOD_ELAPSED_HALF_CB_ID Period Elapsed half complete Callback ID
// 5354   *          @arg @ref HAL_TIM_TRIGGER_CB_ID Trigger Callback ID
// 5355   *          @arg @ref HAL_TIM_TRIGGER_HALF_CB_ID Trigger half complete Callback ID
// 5356   *          @arg @ref HAL_TIM_IC_CAPTURE_CB_ID Input Capture Callback ID
// 5357   *          @arg @ref HAL_TIM_IC_CAPTURE_HALF_CB_ID Input Capture half complete Callback ID
// 5358   *          @arg @ref HAL_TIM_OC_DELAY_ELAPSED_CB_ID Output Compare Delay Elapsed Callback ID
// 5359   *          @arg @ref HAL_TIM_PWM_PULSE_FINISHED_CB_ID PWM Pulse Finished Callback ID
// 5360   *          @arg @ref HAL_TIM_PWM_PULSE_FINISHED_HALF_CB_ID PWM Pulse Finished half complete Callback ID
// 5361   *          @arg @ref HAL_TIM_ERROR_CB_ID Error Callback ID
// 5362   *          @arg @ref HAL_TIM_COMMUTATION_CB_ID Commutation Callback ID
// 5363   *          @arg @ref HAL_TIM_COMMUTATION_HALF_CB_ID Commutation half complete Callback ID
// 5364   *          @arg @ref HAL_TIM_BREAK_CB_ID Break Callback ID
// 5365   *          @arg @ref HAL_TIM_BREAK2_CB_ID Break2 Callback ID
// 5366   *          @retval status
// 5367   */
// 5368 HAL_StatusTypeDef HAL_TIM_UnRegisterCallback(TIM_HandleTypeDef *htim, HAL_TIM_CallbackIDTypeDef CallbackID)
// 5369 {
// 5370   HAL_StatusTypeDef status = HAL_OK;
// 5371 
// 5372   /* Process locked */
// 5373   __HAL_LOCK(htim);
// 5374 
// 5375   if (htim->State == HAL_TIM_STATE_READY)
// 5376   {
// 5377     switch (CallbackID)
// 5378     {
// 5379       case HAL_TIM_BASE_MSPINIT_CB_ID :
// 5380         htim->Base_MspInitCallback              = HAL_TIM_Base_MspInit;                      /* Legacy weak Base MspInit Callback */
// 5381         break;
// 5382 
// 5383       case HAL_TIM_BASE_MSPDEINIT_CB_ID :
// 5384         htim->Base_MspDeInitCallback            = HAL_TIM_Base_MspDeInit;                    /* Legacy weak Base Msp DeInit Callback */
// 5385         break;
// 5386 
// 5387       case HAL_TIM_IC_MSPINIT_CB_ID :
// 5388         htim->IC_MspInitCallback                = HAL_TIM_IC_MspInit;                        /* Legacy weak IC Msp Init Callback */
// 5389         break;
// 5390 
// 5391       case HAL_TIM_IC_MSPDEINIT_CB_ID :
// 5392         htim->IC_MspDeInitCallback              = HAL_TIM_IC_MspDeInit;                      /* Legacy weak IC Msp DeInit Callback */
// 5393         break;
// 5394 
// 5395       case HAL_TIM_OC_MSPINIT_CB_ID :
// 5396         htim->OC_MspInitCallback                = HAL_TIM_OC_MspInit;                        /* Legacy weak OC Msp Init Callback */
// 5397         break;
// 5398 
// 5399       case HAL_TIM_OC_MSPDEINIT_CB_ID :
// 5400         htim->OC_MspDeInitCallback              = HAL_TIM_OC_MspDeInit;                      /* Legacy weak OC Msp DeInit Callback */
// 5401         break;
// 5402 
// 5403       case HAL_TIM_PWM_MSPINIT_CB_ID :
// 5404         htim->PWM_MspInitCallback               = HAL_TIM_PWM_MspInit;                       /* Legacy weak PWM Msp Init Callback */
// 5405         break;
// 5406 
// 5407       case HAL_TIM_PWM_MSPDEINIT_CB_ID :
// 5408         htim->PWM_MspDeInitCallback             = HAL_TIM_PWM_MspDeInit;                     /* Legacy weak PWM Msp DeInit Callback */
// 5409         break;
// 5410 
// 5411       case HAL_TIM_ONE_PULSE_MSPINIT_CB_ID :
// 5412         htim->OnePulse_MspInitCallback          = HAL_TIM_OnePulse_MspInit;                  /* Legacy weak One Pulse Msp Init Callback */
// 5413         break;
// 5414 
// 5415       case HAL_TIM_ONE_PULSE_MSPDEINIT_CB_ID :
// 5416         htim->OnePulse_MspDeInitCallback        = HAL_TIM_OnePulse_MspDeInit;                /* Legacy weak One Pulse Msp DeInit Callback */
// 5417         break;
// 5418 
// 5419       case HAL_TIM_ENCODER_MSPINIT_CB_ID :
// 5420         htim->Encoder_MspInitCallback           = HAL_TIM_Encoder_MspInit;                   /* Legacy weak Encoder Msp Init Callback */
// 5421         break;
// 5422 
// 5423       case HAL_TIM_ENCODER_MSPDEINIT_CB_ID :
// 5424         htim->Encoder_MspDeInitCallback         = HAL_TIM_Encoder_MspDeInit;                 /* Legacy weak Encoder Msp DeInit Callback */
// 5425         break;
// 5426 
// 5427       case HAL_TIM_HALL_SENSOR_MSPINIT_CB_ID :
// 5428         htim->HallSensor_MspInitCallback        = HAL_TIMEx_HallSensor_MspInit;              /* Legacy weak Hall Sensor Msp Init Callback */
// 5429         break;
// 5430 
// 5431       case HAL_TIM_HALL_SENSOR_MSPDEINIT_CB_ID :
// 5432         htim->HallSensor_MspDeInitCallback      = HAL_TIMEx_HallSensor_MspDeInit;            /* Legacy weak Hall Sensor Msp DeInit Callback */
// 5433         break;
// 5434 
// 5435       case HAL_TIM_PERIOD_ELAPSED_CB_ID :
// 5436         htim->PeriodElapsedCallback             = HAL_TIM_PeriodElapsedCallback;             /* Legacy weak Period Elapsed Callback */
// 5437         break;
// 5438 
// 5439       case HAL_TIM_PERIOD_ELAPSED_HALF_CB_ID :
// 5440         htim->PeriodElapsedHalfCpltCallback     = HAL_TIM_PeriodElapsedHalfCpltCallback;     /* Legacy weak Period Elapsed half complete Callback */
// 5441         break;
// 5442 
// 5443       case HAL_TIM_TRIGGER_CB_ID :
// 5444         htim->TriggerCallback                   = HAL_TIM_TriggerCallback;                   /* Legacy weak Trigger Callback */
// 5445         break;
// 5446 
// 5447       case HAL_TIM_TRIGGER_HALF_CB_ID :
// 5448         htim->TriggerHalfCpltCallback           = HAL_TIM_TriggerHalfCpltCallback;           /* Legacy weak Trigger half complete Callback */
// 5449         break;
// 5450 
// 5451       case HAL_TIM_IC_CAPTURE_CB_ID :
// 5452         htim->IC_CaptureCallback                = HAL_TIM_IC_CaptureCallback;                /* Legacy weak IC Capture Callback */
// 5453         break;
// 5454 
// 5455       case HAL_TIM_IC_CAPTURE_HALF_CB_ID :
// 5456         htim->IC_CaptureHalfCpltCallback        = HAL_TIM_IC_CaptureHalfCpltCallback;        /* Legacy weak IC Capture half complete Callback */
// 5457         break;
// 5458 
// 5459       case HAL_TIM_OC_DELAY_ELAPSED_CB_ID :
// 5460         htim->OC_DelayElapsedCallback           = HAL_TIM_OC_DelayElapsedCallback;           /* Legacy weak OC Delay Elapsed Callback */
// 5461         break;
// 5462 
// 5463       case HAL_TIM_PWM_PULSE_FINISHED_CB_ID :
// 5464         htim->PWM_PulseFinishedCallback         = HAL_TIM_PWM_PulseFinishedCallback;         /* Legacy weak PWM Pulse Finished Callback */
// 5465         break;
// 5466 
// 5467       case HAL_TIM_PWM_PULSE_FINISHED_HALF_CB_ID :
// 5468         htim->PWM_PulseFinishedHalfCpltCallback = HAL_TIM_PWM_PulseFinishedHalfCpltCallback; /* Legacy weak PWM Pulse Finished half complete Callback */
// 5469         break;
// 5470 
// 5471       case HAL_TIM_ERROR_CB_ID :
// 5472         htim->ErrorCallback                     = HAL_TIM_ErrorCallback;                     /* Legacy weak Error Callback */
// 5473         break;
// 5474 
// 5475       case HAL_TIM_COMMUTATION_CB_ID :
// 5476         htim->CommutationCallback               = HAL_TIMEx_CommutCallback;                  /* Legacy weak Commutation Callback */
// 5477         break;
// 5478 
// 5479       case HAL_TIM_COMMUTATION_HALF_CB_ID :
// 5480         htim->CommutationHalfCpltCallback       = HAL_TIMEx_CommutHalfCpltCallback;          /* Legacy weak Commutation half complete Callback */
// 5481         break;
// 5482 
// 5483       case HAL_TIM_BREAK_CB_ID :
// 5484         htim->BreakCallback                     = HAL_TIMEx_BreakCallback;                   /* Legacy weak Break Callback */
// 5485         break;
// 5486 
// 5487       case HAL_TIM_BREAK2_CB_ID :
// 5488         htim->Break2Callback                    = HAL_TIMEx_Break2Callback;                  /* Legacy weak Break2 Callback */
// 5489         break;
// 5490 
// 5491       default :
// 5492         /* Return error status */
// 5493         status =  HAL_ERROR;
// 5494         break;
// 5495     }
// 5496   }
// 5497   else if (htim->State == HAL_TIM_STATE_RESET)
// 5498   {
// 5499     switch (CallbackID)
// 5500     {
// 5501       case HAL_TIM_BASE_MSPINIT_CB_ID :
// 5502         htim->Base_MspInitCallback         = HAL_TIM_Base_MspInit;              /* Legacy weak Base MspInit Callback */
// 5503         break;
// 5504 
// 5505       case HAL_TIM_BASE_MSPDEINIT_CB_ID :
// 5506         htim->Base_MspDeInitCallback       = HAL_TIM_Base_MspDeInit;            /* Legacy weak Base Msp DeInit Callback */
// 5507         break;
// 5508 
// 5509       case HAL_TIM_IC_MSPINIT_CB_ID :
// 5510         htim->IC_MspInitCallback           = HAL_TIM_IC_MspInit;                /* Legacy weak IC Msp Init Callback */
// 5511         break;
// 5512 
// 5513       case HAL_TIM_IC_MSPDEINIT_CB_ID :
// 5514         htim->IC_MspDeInitCallback         = HAL_TIM_IC_MspDeInit;              /* Legacy weak IC Msp DeInit Callback */
// 5515         break;
// 5516 
// 5517       case HAL_TIM_OC_MSPINIT_CB_ID :
// 5518         htim->OC_MspInitCallback           = HAL_TIM_OC_MspInit;                /* Legacy weak OC Msp Init Callback */
// 5519         break;
// 5520 
// 5521       case HAL_TIM_OC_MSPDEINIT_CB_ID :
// 5522         htim->OC_MspDeInitCallback         = HAL_TIM_OC_MspDeInit;              /* Legacy weak OC Msp DeInit Callback */
// 5523         break;
// 5524 
// 5525       case HAL_TIM_PWM_MSPINIT_CB_ID :
// 5526         htim->PWM_MspInitCallback          = HAL_TIM_PWM_MspInit;               /* Legacy weak PWM Msp Init Callback */
// 5527         break;
// 5528 
// 5529       case HAL_TIM_PWM_MSPDEINIT_CB_ID :
// 5530         htim->PWM_MspDeInitCallback        = HAL_TIM_PWM_MspDeInit;             /* Legacy weak PWM Msp DeInit Callback */
// 5531         break;
// 5532 
// 5533       case HAL_TIM_ONE_PULSE_MSPINIT_CB_ID :
// 5534         htim->OnePulse_MspInitCallback     = HAL_TIM_OnePulse_MspInit;          /* Legacy weak One Pulse Msp Init Callback */
// 5535         break;
// 5536 
// 5537       case HAL_TIM_ONE_PULSE_MSPDEINIT_CB_ID :
// 5538         htim->OnePulse_MspDeInitCallback   = HAL_TIM_OnePulse_MspDeInit;        /* Legacy weak One Pulse Msp DeInit Callback */
// 5539         break;
// 5540 
// 5541       case HAL_TIM_ENCODER_MSPINIT_CB_ID :
// 5542         htim->Encoder_MspInitCallback      = HAL_TIM_Encoder_MspInit;           /* Legacy weak Encoder Msp Init Callback */
// 5543         break;
// 5544 
// 5545       case HAL_TIM_ENCODER_MSPDEINIT_CB_ID :
// 5546         htim->Encoder_MspDeInitCallback    = HAL_TIM_Encoder_MspDeInit;         /* Legacy weak Encoder Msp DeInit Callback */
// 5547         break;
// 5548 
// 5549       case HAL_TIM_HALL_SENSOR_MSPINIT_CB_ID :
// 5550         htim->HallSensor_MspInitCallback   = HAL_TIMEx_HallSensor_MspInit;      /* Legacy weak Hall Sensor Msp Init Callback */
// 5551         break;
// 5552 
// 5553       case HAL_TIM_HALL_SENSOR_MSPDEINIT_CB_ID :
// 5554         htim->HallSensor_MspDeInitCallback = HAL_TIMEx_HallSensor_MspDeInit;    /* Legacy weak Hall Sensor Msp DeInit Callback */
// 5555         break;
// 5556 
// 5557       default :
// 5558         /* Return error status */
// 5559         status =  HAL_ERROR;
// 5560         break;
// 5561     }
// 5562   }
// 5563   else
// 5564   {
// 5565     /* Return error status */
// 5566     status =  HAL_ERROR;
// 5567   }
// 5568 
// 5569   /* Release Lock */
// 5570   __HAL_UNLOCK(htim);
// 5571 
// 5572   return status;
// 5573 }
// 5574 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 5575 
// 5576 /**
// 5577   * @}
// 5578   */
// 5579 
// 5580 /** @defgroup TIM_Exported_Functions_Group10 TIM Peripheral State functions
// 5581  *  @brief   TIM Peripheral State functions
// 5582  *
// 5583 @verbatim
// 5584   ==============================================================================
// 5585                         ##### Peripheral State functions #####
// 5586   ==============================================================================
// 5587     [..]
// 5588     This subsection permits to get in run-time the status of the peripheral
// 5589     and the data flow.
// 5590 
// 5591 @endverbatim
// 5592   * @{
// 5593   */
// 5594 
// 5595 /**
// 5596   * @brief  Return the TIM Base handle state.
// 5597   * @param  htim TIM Base handle
// 5598   * @retval HAL state
// 5599   */
// 5600 HAL_TIM_StateTypeDef HAL_TIM_Base_GetState(TIM_HandleTypeDef *htim)
// 5601 {
// 5602   return htim->State;
// 5603 }
// 5604 
// 5605 /**
// 5606   * @brief  Return the TIM OC handle state.
// 5607   * @param  htim TIM Output Compare handle
// 5608   * @retval HAL state
// 5609   */
// 5610 HAL_TIM_StateTypeDef HAL_TIM_OC_GetState(TIM_HandleTypeDef *htim)
// 5611 {
// 5612   return htim->State;
// 5613 }
// 5614 
// 5615 /**
// 5616   * @brief  Return the TIM PWM handle state.
// 5617   * @param  htim TIM handle
// 5618   * @retval HAL state
// 5619   */
// 5620 HAL_TIM_StateTypeDef HAL_TIM_PWM_GetState(TIM_HandleTypeDef *htim)
// 5621 {
// 5622   return htim->State;
// 5623 }
// 5624 
// 5625 /**
// 5626   * @brief  Return the TIM Input Capture handle state.
// 5627   * @param  htim TIM IC handle
// 5628   * @retval HAL state
// 5629   */
// 5630 HAL_TIM_StateTypeDef HAL_TIM_IC_GetState(TIM_HandleTypeDef *htim)
// 5631 {
// 5632   return htim->State;
// 5633 }
// 5634 
// 5635 /**
// 5636   * @brief  Return the TIM One Pulse Mode handle state.
// 5637   * @param  htim TIM OPM handle
// 5638   * @retval HAL state
// 5639   */
// 5640 HAL_TIM_StateTypeDef HAL_TIM_OnePulse_GetState(TIM_HandleTypeDef *htim)
// 5641 {
// 5642   return htim->State;
// 5643 }
// 5644 
// 5645 /**
// 5646   * @brief  Return the TIM Encoder Mode handle state.
// 5647   * @param  htim TIM Encoder Interface handle
// 5648   * @retval HAL state
// 5649   */
// 5650 HAL_TIM_StateTypeDef HAL_TIM_Encoder_GetState(TIM_HandleTypeDef *htim)
// 5651 {
// 5652   return htim->State;
// 5653 }
// 5654 
// 5655 /**
// 5656   * @}
// 5657   */
// 5658 
// 5659 /**
// 5660   * @}
// 5661   */
// 5662 
// 5663 /** @defgroup TIM_Private_Functions TIM Private Functions
// 5664   * @{
// 5665   */
// 5666 
// 5667 /**
// 5668   * @brief  TIM DMA error callback
// 5669   * @param  hdma pointer to DMA handle.
// 5670   * @retval None
// 5671   */
// 5672 void TIM_DMAError(DMA_HandleTypeDef *hdma)
// 5673 {
// 5674   TIM_HandleTypeDef *htim = (TIM_HandleTypeDef *)((DMA_HandleTypeDef *)hdma)->Parent;
// 5675 
// 5676   htim->State = HAL_TIM_STATE_READY;
// 5677 
// 5678 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 5679   htim->ErrorCallback(htim);
// 5680 #else
// 5681   HAL_TIM_ErrorCallback(htim);
// 5682 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 5683 }
// 5684 
// 5685 /**
// 5686   * @brief  TIM DMA Delay Pulse complete callback.
// 5687   * @param  hdma pointer to DMA handle.
// 5688   * @retval None
// 5689   */
// 5690 void TIM_DMADelayPulseCplt(DMA_HandleTypeDef *hdma)
// 5691 {
// 5692   TIM_HandleTypeDef *htim = (TIM_HandleTypeDef *)((DMA_HandleTypeDef *)hdma)->Parent;
// 5693 
// 5694   htim->State = HAL_TIM_STATE_READY;
// 5695 
// 5696   if (hdma == htim->hdma[TIM_DMA_ID_CC1])
// 5697   {
// 5698     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_1;
// 5699   }
// 5700   else if (hdma == htim->hdma[TIM_DMA_ID_CC2])
// 5701   {
// 5702     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_2;
// 5703   }
// 5704   else if (hdma == htim->hdma[TIM_DMA_ID_CC3])
// 5705   {
// 5706     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_3;
// 5707   }
// 5708   else if (hdma == htim->hdma[TIM_DMA_ID_CC4])
// 5709   {
// 5710     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_4;
// 5711   }
// 5712   else
// 5713   {
// 5714     /* nothing to do */
// 5715   }
// 5716 
// 5717 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 5718   htim->PWM_PulseFinishedCallback(htim);
// 5719 #else
// 5720   HAL_TIM_PWM_PulseFinishedCallback(htim);
// 5721 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 5722 
// 5723   htim->Channel = HAL_TIM_ACTIVE_CHANNEL_CLEARED;
// 5724 }
// 5725 
// 5726 /**
// 5727   * @brief  TIM DMA Delay Pulse half complete callback.
// 5728   * @param  hdma pointer to DMA handle.
// 5729   * @retval None
// 5730   */
// 5731 void TIM_DMADelayPulseHalfCplt(DMA_HandleTypeDef *hdma)
// 5732 {
// 5733   TIM_HandleTypeDef *htim = (TIM_HandleTypeDef *)((DMA_HandleTypeDef *)hdma)->Parent;
// 5734 
// 5735   htim->State = HAL_TIM_STATE_READY;
// 5736 
// 5737   if (hdma == htim->hdma[TIM_DMA_ID_CC1])
// 5738   {
// 5739     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_1;
// 5740   }
// 5741   else if (hdma == htim->hdma[TIM_DMA_ID_CC2])
// 5742   {
// 5743     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_2;
// 5744   }
// 5745   else if (hdma == htim->hdma[TIM_DMA_ID_CC3])
// 5746   {
// 5747     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_3;
// 5748   }
// 5749   else if (hdma == htim->hdma[TIM_DMA_ID_CC4])
// 5750   {
// 5751     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_4;
// 5752   }
// 5753   else
// 5754   {
// 5755     /* nothing to do */
// 5756   }
// 5757 
// 5758 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 5759   htim->PWM_PulseFinishedHalfCpltCallback(htim);
// 5760 #else
// 5761   HAL_TIM_PWM_PulseFinishedHalfCpltCallback(htim);
// 5762 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 5763 
// 5764   htim->Channel = HAL_TIM_ACTIVE_CHANNEL_CLEARED;
// 5765 }
// 5766 
// 5767 /**
// 5768   * @brief  TIM DMA Capture complete callback.
// 5769   * @param  hdma pointer to DMA handle.
// 5770   * @retval None
// 5771   */
// 5772 void TIM_DMACaptureCplt(DMA_HandleTypeDef *hdma)
// 5773 {
// 5774   TIM_HandleTypeDef *htim = (TIM_HandleTypeDef *)((DMA_HandleTypeDef *)hdma)->Parent;
// 5775 
// 5776   htim->State = HAL_TIM_STATE_READY;
// 5777 
// 5778   if (hdma == htim->hdma[TIM_DMA_ID_CC1])
// 5779   {
// 5780     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_1;
// 5781   }
// 5782   else if (hdma == htim->hdma[TIM_DMA_ID_CC2])
// 5783   {
// 5784     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_2;
// 5785   }
// 5786   else if (hdma == htim->hdma[TIM_DMA_ID_CC3])
// 5787   {
// 5788     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_3;
// 5789   }
// 5790   else if (hdma == htim->hdma[TIM_DMA_ID_CC4])
// 5791   {
// 5792     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_4;
// 5793   }
// 5794   else
// 5795   {
// 5796     /* nothing to do */
// 5797   }
// 5798 
// 5799 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 5800   htim->IC_CaptureCallback(htim);
// 5801 #else
// 5802   HAL_TIM_IC_CaptureCallback(htim);
// 5803 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 5804 
// 5805   htim->Channel = HAL_TIM_ACTIVE_CHANNEL_CLEARED;
// 5806 }
// 5807 
// 5808 /**
// 5809   * @brief  TIM DMA Capture half complete callback.
// 5810   * @param  hdma pointer to DMA handle.
// 5811   * @retval None
// 5812   */
// 5813 void TIM_DMACaptureHalfCplt(DMA_HandleTypeDef *hdma)
// 5814 {
// 5815   TIM_HandleTypeDef *htim = (TIM_HandleTypeDef *)((DMA_HandleTypeDef *)hdma)->Parent;
// 5816 
// 5817   htim->State = HAL_TIM_STATE_READY;
// 5818 
// 5819   if (hdma == htim->hdma[TIM_DMA_ID_CC1])
// 5820   {
// 5821     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_1;
// 5822   }
// 5823   else if (hdma == htim->hdma[TIM_DMA_ID_CC2])
// 5824   {
// 5825     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_2;
// 5826   }
// 5827   else if (hdma == htim->hdma[TIM_DMA_ID_CC3])
// 5828   {
// 5829     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_3;
// 5830   }
// 5831   else if (hdma == htim->hdma[TIM_DMA_ID_CC4])
// 5832   {
// 5833     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_4;
// 5834   }
// 5835   else
// 5836   {
// 5837     /* nothing to do */
// 5838   }
// 5839 
// 5840 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 5841   htim->IC_CaptureHalfCpltCallback(htim);
// 5842 #else
// 5843   HAL_TIM_IC_CaptureHalfCpltCallback(htim);
// 5844 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 5845 
// 5846   htim->Channel = HAL_TIM_ACTIVE_CHANNEL_CLEARED;
// 5847 }
// 5848 
// 5849 /**
// 5850   * @brief  TIM DMA Period Elapse complete callback.
// 5851   * @param  hdma pointer to DMA handle.
// 5852   * @retval None
// 5853   */
// 5854 static void TIM_DMAPeriodElapsedCplt(DMA_HandleTypeDef *hdma)
// 5855 {
// 5856   TIM_HandleTypeDef *htim = (TIM_HandleTypeDef *)((DMA_HandleTypeDef *)hdma)->Parent;
// 5857 
// 5858   htim->State = HAL_TIM_STATE_READY;
// 5859 
// 5860 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 5861   htim->PeriodElapsedCallback(htim);
// 5862 #else
// 5863   HAL_TIM_PeriodElapsedCallback(htim);
// 5864 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 5865 }
// 5866 
// 5867 /**
// 5868   * @brief  TIM DMA Period Elapse half complete callback.
// 5869   * @param  hdma pointer to DMA handle.
// 5870   * @retval None
// 5871   */
// 5872 static void TIM_DMAPeriodElapsedHalfCplt(DMA_HandleTypeDef *hdma)
// 5873 {
// 5874   TIM_HandleTypeDef *htim = (TIM_HandleTypeDef *)((DMA_HandleTypeDef *)hdma)->Parent;
// 5875 
// 5876   htim->State = HAL_TIM_STATE_READY;
// 5877 
// 5878 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 5879   htim->PeriodElapsedHalfCpltCallback(htim);
// 5880 #else
// 5881   HAL_TIM_PeriodElapsedHalfCpltCallback(htim);
// 5882 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 5883 }
// 5884 
// 5885 /**
// 5886   * @brief  TIM DMA Trigger callback.
// 5887   * @param  hdma pointer to DMA handle.
// 5888   * @retval None
// 5889   */
// 5890 static void TIM_DMATriggerCplt(DMA_HandleTypeDef *hdma)
// 5891 {
// 5892   TIM_HandleTypeDef *htim = (TIM_HandleTypeDef *)((DMA_HandleTypeDef *)hdma)->Parent;
// 5893 
// 5894   htim->State = HAL_TIM_STATE_READY;
// 5895 
// 5896 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 5897   htim->TriggerCallback(htim);
// 5898 #else
// 5899   HAL_TIM_TriggerCallback(htim);
// 5900 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 5901 }
// 5902 
// 5903 /**
// 5904   * @brief  TIM DMA Trigger half complete callback.
// 5905   * @param  hdma pointer to DMA handle.
// 5906   * @retval None
// 5907   */
// 5908 static void TIM_DMATriggerHalfCplt(DMA_HandleTypeDef *hdma)
// 5909 {
// 5910   TIM_HandleTypeDef *htim = (TIM_HandleTypeDef *)((DMA_HandleTypeDef *)hdma)->Parent;
// 5911 
// 5912   htim->State = HAL_TIM_STATE_READY;
// 5913 
// 5914 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 5915   htim->TriggerHalfCpltCallback(htim);
// 5916 #else
// 5917   HAL_TIM_TriggerHalfCpltCallback(htim);
// 5918 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 5919 }
// 5920 
// 5921 /**
// 5922   * @brief  Time Base configuration
// 5923   * @param  TIMx TIM peripheral
// 5924   * @param  Structure TIM Base configuration structure
// 5925   * @retval None
// 5926   */
// 5927 void TIM_Base_SetConfig(TIM_TypeDef *TIMx, TIM_Base_InitTypeDef *Structure)
// 5928 {
// 5929   uint32_t tmpcr1;
// 5930   tmpcr1 = TIMx->CR1;
// 5931 
// 5932   /* Set TIM Time Base Unit parameters ---------------------------------------*/
// 5933   if (IS_TIM_COUNTER_MODE_SELECT_INSTANCE(TIMx))
// 5934   {
// 5935     /* Select the Counter Mode */
// 5936     tmpcr1 &= ~(TIM_CR1_DIR | TIM_CR1_CMS);
// 5937     tmpcr1 |= Structure->CounterMode;
// 5938   }
// 5939 
// 5940   if (IS_TIM_CLOCK_DIVISION_INSTANCE(TIMx))
// 5941   {
// 5942     /* Set the clock division */
// 5943     tmpcr1 &= ~TIM_CR1_CKD;
// 5944     tmpcr1 |= (uint32_t)Structure->ClockDivision;
// 5945   }
// 5946 
// 5947   /* Set the auto-reload preload */
// 5948   MODIFY_REG(tmpcr1, TIM_CR1_ARPE, Structure->AutoReloadPreload);
// 5949 
// 5950   TIMx->CR1 = tmpcr1;
// 5951 
// 5952   /* Set the Autoreload value */
// 5953   TIMx->ARR = (uint32_t)Structure->Period ;
// 5954 
// 5955   /* Set the Prescaler value */
// 5956   TIMx->PSC = Structure->Prescaler;
// 5957 
// 5958   if (IS_TIM_REPETITION_COUNTER_INSTANCE(TIMx))
// 5959   {
// 5960     /* Set the Repetition Counter value */
// 5961     TIMx->RCR = Structure->RepetitionCounter;
// 5962   }
// 5963 
// 5964   /* Generate an update event to reload the Prescaler
// 5965      and the repetition counter (only for advanced timer) value immediately */
// 5966   TIMx->EGR = TIM_EGR_UG;
// 5967 }
// 5968 
// 5969 /**
// 5970   * @brief  Timer Output Compare 1 configuration
// 5971   * @param  TIMx to select the TIM peripheral
// 5972   * @param  OC_Config The ouput configuration structure
// 5973   * @retval None
// 5974   */
// 5975 static void TIM_OC1_SetConfig(TIM_TypeDef *TIMx, TIM_OC_InitTypeDef *OC_Config)
// 5976 {
// 5977   uint32_t tmpccmrx;
// 5978   uint32_t tmpccer;
// 5979   uint32_t tmpcr2;
// 5980 
// 5981   /* Disable the Channel 1: Reset the CC1E Bit */
// 5982   TIMx->CCER &= ~TIM_CCER_CC1E;
// 5983 
// 5984   /* Get the TIMx CCER register value */
// 5985   tmpccer = TIMx->CCER;
// 5986   /* Get the TIMx CR2 register value */
// 5987   tmpcr2 =  TIMx->CR2;
// 5988 
// 5989   /* Get the TIMx CCMR1 register value */
// 5990   tmpccmrx = TIMx->CCMR1;
// 5991 
// 5992   /* Reset the Output Compare Mode Bits */
// 5993   tmpccmrx &= ~TIM_CCMR1_OC1M;
// 5994   tmpccmrx &= ~TIM_CCMR1_CC1S;
// 5995   /* Select the Output Compare Mode */
// 5996   tmpccmrx |= OC_Config->OCMode;
// 5997 
// 5998   /* Reset the Output Polarity level */
// 5999   tmpccer &= ~TIM_CCER_CC1P;
// 6000   /* Set the Output Compare Polarity */
// 6001   tmpccer |= OC_Config->OCPolarity;
// 6002 
// 6003   if (IS_TIM_CCXN_INSTANCE(TIMx, TIM_CHANNEL_1))
// 6004   {
// 6005     /* Check parameters */
// 6006     assert_param(IS_TIM_OCN_POLARITY(OC_Config->OCNPolarity));
// 6007 
// 6008     /* Reset the Output N Polarity level */
// 6009     tmpccer &= ~TIM_CCER_CC1NP;
// 6010     /* Set the Output N Polarity */
// 6011     tmpccer |= OC_Config->OCNPolarity;
// 6012     /* Reset the Output N State */
// 6013     tmpccer &= ~TIM_CCER_CC1NE;
// 6014   }
// 6015 
// 6016   if (IS_TIM_BREAK_INSTANCE(TIMx))
// 6017   {
// 6018     /* Check parameters */
// 6019     assert_param(IS_TIM_OCNIDLE_STATE(OC_Config->OCNIdleState));
// 6020     assert_param(IS_TIM_OCIDLE_STATE(OC_Config->OCIdleState));
// 6021 
// 6022     /* Reset the Output Compare and Output Compare N IDLE State */
// 6023     tmpcr2 &= ~TIM_CR2_OIS1;
// 6024     tmpcr2 &= ~TIM_CR2_OIS1N;
// 6025     /* Set the Output Idle state */
// 6026     tmpcr2 |= OC_Config->OCIdleState;
// 6027     /* Set the Output N Idle state */
// 6028     tmpcr2 |= OC_Config->OCNIdleState;
// 6029   }
// 6030 
// 6031   /* Write to TIMx CR2 */
// 6032   TIMx->CR2 = tmpcr2;
// 6033 
// 6034   /* Write to TIMx CCMR1 */
// 6035   TIMx->CCMR1 = tmpccmrx;
// 6036 
// 6037   /* Set the Capture Compare Register value */
// 6038   TIMx->CCR1 = OC_Config->Pulse;
// 6039 
// 6040   /* Write to TIMx CCER */
// 6041   TIMx->CCER = tmpccer;
// 6042 }
// 6043 
// 6044 /**
// 6045   * @brief  Timer Output Compare 2 configuration
// 6046   * @param  TIMx to select the TIM peripheral
// 6047   * @param  OC_Config The ouput configuration structure
// 6048   * @retval None
// 6049   */
// 6050 void TIM_OC2_SetConfig(TIM_TypeDef *TIMx, TIM_OC_InitTypeDef *OC_Config)
// 6051 {
// 6052   uint32_t tmpccmrx;
// 6053   uint32_t tmpccer;
// 6054   uint32_t tmpcr2;
// 6055 
// 6056   /* Disable the Channel 2: Reset the CC2E Bit */
// 6057   TIMx->CCER &= ~TIM_CCER_CC2E;
// 6058 
// 6059   /* Get the TIMx CCER register value */
// 6060   tmpccer = TIMx->CCER;
// 6061   /* Get the TIMx CR2 register value */
// 6062   tmpcr2 =  TIMx->CR2;
// 6063 
// 6064   /* Get the TIMx CCMR1 register value */
// 6065   tmpccmrx = TIMx->CCMR1;
// 6066 
// 6067   /* Reset the Output Compare mode and Capture/Compare selection Bits */
// 6068   tmpccmrx &= ~TIM_CCMR1_OC2M;
// 6069   tmpccmrx &= ~TIM_CCMR1_CC2S;
// 6070 
// 6071   /* Select the Output Compare Mode */
// 6072   tmpccmrx |= (OC_Config->OCMode << 8U);
// 6073 
// 6074   /* Reset the Output Polarity level */
// 6075   tmpccer &= ~TIM_CCER_CC2P;
// 6076   /* Set the Output Compare Polarity */
// 6077   tmpccer |= (OC_Config->OCPolarity << 4U);
// 6078 
// 6079   if (IS_TIM_CCXN_INSTANCE(TIMx, TIM_CHANNEL_2))
// 6080   {
// 6081     assert_param(IS_TIM_OCN_POLARITY(OC_Config->OCNPolarity));
// 6082 
// 6083     /* Reset the Output N Polarity level */
// 6084     tmpccer &= ~TIM_CCER_CC2NP;
// 6085     /* Set the Output N Polarity */
// 6086     tmpccer |= (OC_Config->OCNPolarity << 4U);
// 6087     /* Reset the Output N State */
// 6088     tmpccer &= ~TIM_CCER_CC2NE;
// 6089 
// 6090   }
// 6091 
// 6092   if (IS_TIM_BREAK_INSTANCE(TIMx))
// 6093   {
// 6094     /* Check parameters */
// 6095     assert_param(IS_TIM_OCNIDLE_STATE(OC_Config->OCNIdleState));
// 6096     assert_param(IS_TIM_OCIDLE_STATE(OC_Config->OCIdleState));
// 6097 
// 6098     /* Reset the Output Compare and Output Compare N IDLE State */
// 6099     tmpcr2 &= ~TIM_CR2_OIS2;
// 6100     tmpcr2 &= ~TIM_CR2_OIS2N;
// 6101     /* Set the Output Idle state */
// 6102     tmpcr2 |= (OC_Config->OCIdleState << 2U);
// 6103     /* Set the Output N Idle state */
// 6104     tmpcr2 |= (OC_Config->OCNIdleState << 2U);
// 6105   }
// 6106 
// 6107   /* Write to TIMx CR2 */
// 6108   TIMx->CR2 = tmpcr2;
// 6109 
// 6110   /* Write to TIMx CCMR1 */
// 6111   TIMx->CCMR1 = tmpccmrx;
// 6112 
// 6113   /* Set the Capture Compare Register value */
// 6114   TIMx->CCR2 = OC_Config->Pulse;
// 6115 
// 6116   /* Write to TIMx CCER */
// 6117   TIMx->CCER = tmpccer;
// 6118 }
// 6119 
// 6120 /**
// 6121   * @brief  Timer Output Compare 3 configuration
// 6122   * @param  TIMx to select the TIM peripheral
// 6123   * @param  OC_Config The ouput configuration structure
// 6124   * @retval None
// 6125   */
// 6126 static void TIM_OC3_SetConfig(TIM_TypeDef *TIMx, TIM_OC_InitTypeDef *OC_Config)
// 6127 {
// 6128   uint32_t tmpccmrx;
// 6129   uint32_t tmpccer;
// 6130   uint32_t tmpcr2;
// 6131 
// 6132   /* Disable the Channel 3: Reset the CC2E Bit */
// 6133   TIMx->CCER &= ~TIM_CCER_CC3E;
// 6134 
// 6135   /* Get the TIMx CCER register value */
// 6136   tmpccer = TIMx->CCER;
// 6137   /* Get the TIMx CR2 register value */
// 6138   tmpcr2 =  TIMx->CR2;
// 6139 
// 6140   /* Get the TIMx CCMR2 register value */
// 6141   tmpccmrx = TIMx->CCMR2;
// 6142 
// 6143   /* Reset the Output Compare mode and Capture/Compare selection Bits */
// 6144   tmpccmrx &= ~TIM_CCMR2_OC3M;
// 6145   tmpccmrx &= ~TIM_CCMR2_CC3S;
// 6146   /* Select the Output Compare Mode */
// 6147   tmpccmrx |= OC_Config->OCMode;
// 6148 
// 6149   /* Reset the Output Polarity level */
// 6150   tmpccer &= ~TIM_CCER_CC3P;
// 6151   /* Set the Output Compare Polarity */
// 6152   tmpccer |= (OC_Config->OCPolarity << 8U);
// 6153 
// 6154   if (IS_TIM_CCXN_INSTANCE(TIMx, TIM_CHANNEL_3))
// 6155   {
// 6156     assert_param(IS_TIM_OCN_POLARITY(OC_Config->OCNPolarity));
// 6157 
// 6158     /* Reset the Output N Polarity level */
// 6159     tmpccer &= ~TIM_CCER_CC3NP;
// 6160     /* Set the Output N Polarity */
// 6161     tmpccer |= (OC_Config->OCNPolarity << 8U);
// 6162     /* Reset the Output N State */
// 6163     tmpccer &= ~TIM_CCER_CC3NE;
// 6164   }
// 6165 
// 6166   if (IS_TIM_BREAK_INSTANCE(TIMx))
// 6167   {
// 6168     /* Check parameters */
// 6169     assert_param(IS_TIM_OCNIDLE_STATE(OC_Config->OCNIdleState));
// 6170     assert_param(IS_TIM_OCIDLE_STATE(OC_Config->OCIdleState));
// 6171 
// 6172     /* Reset the Output Compare and Output Compare N IDLE State */
// 6173     tmpcr2 &= ~TIM_CR2_OIS3;
// 6174     tmpcr2 &= ~TIM_CR2_OIS3N;
// 6175     /* Set the Output Idle state */
// 6176     tmpcr2 |= (OC_Config->OCIdleState << 4U);
// 6177     /* Set the Output N Idle state */
// 6178     tmpcr2 |= (OC_Config->OCNIdleState << 4U);
// 6179   }
// 6180 
// 6181   /* Write to TIMx CR2 */
// 6182   TIMx->CR2 = tmpcr2;
// 6183 
// 6184   /* Write to TIMx CCMR2 */
// 6185   TIMx->CCMR2 = tmpccmrx;
// 6186 
// 6187   /* Set the Capture Compare Register value */
// 6188   TIMx->CCR3 = OC_Config->Pulse;
// 6189 
// 6190   /* Write to TIMx CCER */
// 6191   TIMx->CCER = tmpccer;
// 6192 }
// 6193 
// 6194 /**
// 6195   * @brief  Timer Output Compare 4 configuration
// 6196   * @param  TIMx to select the TIM peripheral
// 6197   * @param  OC_Config The ouput configuration structure
// 6198   * @retval None
// 6199   */
// 6200 static void TIM_OC4_SetConfig(TIM_TypeDef *TIMx, TIM_OC_InitTypeDef *OC_Config)
// 6201 {
// 6202   uint32_t tmpccmrx;
// 6203   uint32_t tmpccer;
// 6204   uint32_t tmpcr2;
// 6205 
// 6206   /* Disable the Channel 4: Reset the CC4E Bit */
// 6207   TIMx->CCER &= ~TIM_CCER_CC4E;
// 6208 
// 6209   /* Get the TIMx CCER register value */
// 6210   tmpccer = TIMx->CCER;
// 6211   /* Get the TIMx CR2 register value */
// 6212   tmpcr2 =  TIMx->CR2;
// 6213 
// 6214   /* Get the TIMx CCMR2 register value */
// 6215   tmpccmrx = TIMx->CCMR2;
// 6216 
// 6217   /* Reset the Output Compare mode and Capture/Compare selection Bits */
// 6218   tmpccmrx &= ~TIM_CCMR2_OC4M;
// 6219   tmpccmrx &= ~TIM_CCMR2_CC4S;
// 6220 
// 6221   /* Select the Output Compare Mode */
// 6222   tmpccmrx |= (OC_Config->OCMode << 8U);
// 6223 
// 6224   /* Reset the Output Polarity level */
// 6225   tmpccer &= ~TIM_CCER_CC4P;
// 6226   /* Set the Output Compare Polarity */
// 6227   tmpccer |= (OC_Config->OCPolarity << 12U);
// 6228 
// 6229   if (IS_TIM_BREAK_INSTANCE(TIMx))
// 6230   {
// 6231     /* Check parameters */
// 6232     assert_param(IS_TIM_OCIDLE_STATE(OC_Config->OCIdleState));
// 6233 
// 6234     /* Reset the Output Compare IDLE State */
// 6235     tmpcr2 &= ~TIM_CR2_OIS4;
// 6236 
// 6237     /* Set the Output Idle state */
// 6238     tmpcr2 |= (OC_Config->OCIdleState << 6U);
// 6239   }
// 6240 
// 6241   /* Write to TIMx CR2 */
// 6242   TIMx->CR2 = tmpcr2;
// 6243 
// 6244   /* Write to TIMx CCMR2 */
// 6245   TIMx->CCMR2 = tmpccmrx;
// 6246 
// 6247   /* Set the Capture Compare Register value */
// 6248   TIMx->CCR4 = OC_Config->Pulse;
// 6249 
// 6250   /* Write to TIMx CCER */
// 6251   TIMx->CCER = tmpccer;
// 6252 }
// 6253 
// 6254 /**
// 6255   * @brief  Timer Output Compare 5 configuration
// 6256   * @param  TIMx to select the TIM peripheral
// 6257   * @param  OC_Config The ouput configuration structure
// 6258   * @retval None
// 6259   */
// 6260 static void TIM_OC5_SetConfig(TIM_TypeDef *TIMx,
// 6261                               TIM_OC_InitTypeDef *OC_Config)
// 6262 {
// 6263   uint32_t tmpccmrx;
// 6264   uint32_t tmpccer;
// 6265   uint32_t tmpcr2;
// 6266 
// 6267   /* Disable the output: Reset the CCxE Bit */
// 6268   TIMx->CCER &= ~TIM_CCER_CC5E;
// 6269 
// 6270   /* Get the TIMx CCER register value */
// 6271   tmpccer = TIMx->CCER;
// 6272   /* Get the TIMx CR2 register value */
// 6273   tmpcr2 =  TIMx->CR2;
// 6274   /* Get the TIMx CCMR1 register value */
// 6275   tmpccmrx = TIMx->CCMR3;
// 6276 
// 6277   /* Reset the Output Compare Mode Bits */
// 6278   tmpccmrx &= ~(TIM_CCMR3_OC5M);
// 6279   /* Select the Output Compare Mode */
// 6280   tmpccmrx |= OC_Config->OCMode;
// 6281 
// 6282   /* Reset the Output Polarity level */
// 6283   tmpccer &= ~TIM_CCER_CC5P;
// 6284   /* Set the Output Compare Polarity */
// 6285   tmpccer |= (OC_Config->OCPolarity << 16U);
// 6286 
// 6287   if (IS_TIM_BREAK_INSTANCE(TIMx))
// 6288   {
// 6289     /* Reset the Output Compare IDLE State */
// 6290     tmpcr2 &= ~TIM_CR2_OIS5;
// 6291     /* Set the Output Idle state */
// 6292     tmpcr2 |= (OC_Config->OCIdleState << 8U);
// 6293   }
// 6294   /* Write to TIMx CR2 */
// 6295   TIMx->CR2 = tmpcr2;
// 6296 
// 6297   /* Write to TIMx CCMR3 */
// 6298   TIMx->CCMR3 = tmpccmrx;
// 6299 
// 6300   /* Set the Capture Compare Register value */
// 6301   TIMx->CCR5 = OC_Config->Pulse;
// 6302 
// 6303   /* Write to TIMx CCER */
// 6304   TIMx->CCER = tmpccer;
// 6305 }
// 6306 
// 6307 /**
// 6308   * @brief  Timer Output Compare 6 configuration
// 6309   * @param  TIMx to select the TIM peripheral
// 6310   * @param  OC_Config The ouput configuration structure
// 6311   * @retval None
// 6312   */
// 6313 static void TIM_OC6_SetConfig(TIM_TypeDef *TIMx,
// 6314                               TIM_OC_InitTypeDef *OC_Config)
// 6315 {
// 6316   uint32_t tmpccmrx;
// 6317   uint32_t tmpccer;
// 6318   uint32_t tmpcr2;
// 6319 
// 6320   /* Disable the output: Reset the CCxE Bit */
// 6321   TIMx->CCER &= ~TIM_CCER_CC6E;
// 6322 
// 6323   /* Get the TIMx CCER register value */
// 6324   tmpccer = TIMx->CCER;
// 6325   /* Get the TIMx CR2 register value */
// 6326   tmpcr2 =  TIMx->CR2;
// 6327   /* Get the TIMx CCMR1 register value */
// 6328   tmpccmrx = TIMx->CCMR3;
// 6329 
// 6330   /* Reset the Output Compare Mode Bits */
// 6331   tmpccmrx &= ~(TIM_CCMR3_OC6M);
// 6332   /* Select the Output Compare Mode */
// 6333   tmpccmrx |= (OC_Config->OCMode << 8U);
// 6334 
// 6335   /* Reset the Output Polarity level */
// 6336   tmpccer &= (uint32_t)~TIM_CCER_CC6P;
// 6337   /* Set the Output Compare Polarity */
// 6338   tmpccer |= (OC_Config->OCPolarity << 20U);
// 6339 
// 6340   if (IS_TIM_BREAK_INSTANCE(TIMx))
// 6341   {
// 6342     /* Reset the Output Compare IDLE State */
// 6343     tmpcr2 &= ~TIM_CR2_OIS6;
// 6344     /* Set the Output Idle state */
// 6345     tmpcr2 |= (OC_Config->OCIdleState << 10U);
// 6346   }
// 6347 
// 6348   /* Write to TIMx CR2 */
// 6349   TIMx->CR2 = tmpcr2;
// 6350 
// 6351   /* Write to TIMx CCMR3 */
// 6352   TIMx->CCMR3 = tmpccmrx;
// 6353 
// 6354   /* Set the Capture Compare Register value */
// 6355   TIMx->CCR6 = OC_Config->Pulse;
// 6356 
// 6357   /* Write to TIMx CCER */
// 6358   TIMx->CCER = tmpccer;
// 6359 }
// 6360 
// 6361 /**
// 6362   * @brief  Slave Timer configuration function
// 6363   * @param  htim TIM handle
// 6364   * @param  sSlaveConfig Slave timer configuration
// 6365   * @retval None
// 6366   */
// 6367 static HAL_StatusTypeDef TIM_SlaveTimer_SetConfig(TIM_HandleTypeDef *htim,
// 6368                                      TIM_SlaveConfigTypeDef *sSlaveConfig)
// 6369 {
// 6370   uint32_t tmpsmcr;
// 6371   uint32_t tmpccmr1;
// 6372   uint32_t tmpccer;
// 6373 
// 6374   /* Get the TIMx SMCR register value */
// 6375   tmpsmcr = htim->Instance->SMCR;
// 6376 
// 6377   /* Reset the Trigger Selection Bits */
// 6378   tmpsmcr &= ~TIM_SMCR_TS;
// 6379   /* Set the Input Trigger source */
// 6380   tmpsmcr |= sSlaveConfig->InputTrigger;
// 6381 
// 6382   /* Reset the slave mode Bits */
// 6383   tmpsmcr &= ~TIM_SMCR_SMS;
// 6384   /* Set the slave mode */
// 6385   tmpsmcr |= sSlaveConfig->SlaveMode;
// 6386 
// 6387   /* Write to TIMx SMCR */
// 6388   htim->Instance->SMCR = tmpsmcr;
// 6389 
// 6390   /* Configure the trigger prescaler, filter, and polarity */
// 6391   switch (sSlaveConfig->InputTrigger)
// 6392   {
// 6393     case TIM_TS_ETRF:
// 6394     {
// 6395       /* Check the parameters */
// 6396       assert_param(IS_TIM_CLOCKSOURCE_ETRMODE1_INSTANCE(htim->Instance));
// 6397       assert_param(IS_TIM_TRIGGERPRESCALER(sSlaveConfig->TriggerPrescaler));
// 6398       assert_param(IS_TIM_TRIGGERPOLARITY(sSlaveConfig->TriggerPolarity));
// 6399       assert_param(IS_TIM_TRIGGERFILTER(sSlaveConfig->TriggerFilter));
// 6400       /* Configure the ETR Trigger source */
// 6401       TIM_ETR_SetConfig(htim->Instance,
// 6402                         sSlaveConfig->TriggerPrescaler,
// 6403                         sSlaveConfig->TriggerPolarity,
// 6404                         sSlaveConfig->TriggerFilter);
// 6405       break;
// 6406     }
// 6407 
// 6408     case TIM_TS_TI1F_ED:
// 6409     {
// 6410       /* Check the parameters */
// 6411       assert_param(IS_TIM_CC1_INSTANCE(htim->Instance));
// 6412       assert_param(IS_TIM_TRIGGERFILTER(sSlaveConfig->TriggerFilter));
// 6413 
// 6414       if(sSlaveConfig->SlaveMode == TIM_SLAVEMODE_GATED)
// 6415       {
// 6416         return HAL_ERROR;
// 6417       }
// 6418 
// 6419       /* Disable the Channel 1: Reset the CC1E Bit */
// 6420       tmpccer = htim->Instance->CCER;
// 6421       htim->Instance->CCER &= ~TIM_CCER_CC1E;
// 6422       tmpccmr1 = htim->Instance->CCMR1;
// 6423 
// 6424       /* Set the filter */
// 6425       tmpccmr1 &= ~TIM_CCMR1_IC1F;
// 6426       tmpccmr1 |= ((sSlaveConfig->TriggerFilter) << 4U);
// 6427 
// 6428       /* Write to TIMx CCMR1 and CCER registers */
// 6429       htim->Instance->CCMR1 = tmpccmr1;
// 6430       htim->Instance->CCER = tmpccer;
// 6431       break;
// 6432     }
// 6433 
// 6434     case TIM_TS_TI1FP1:
// 6435     {
// 6436       /* Check the parameters */
// 6437       assert_param(IS_TIM_CC1_INSTANCE(htim->Instance));
// 6438       assert_param(IS_TIM_TRIGGERPOLARITY(sSlaveConfig->TriggerPolarity));
// 6439       assert_param(IS_TIM_TRIGGERFILTER(sSlaveConfig->TriggerFilter));
// 6440 
// 6441       /* Configure TI1 Filter and Polarity */
// 6442       TIM_TI1_ConfigInputStage(htim->Instance,
// 6443                                sSlaveConfig->TriggerPolarity,
// 6444                                sSlaveConfig->TriggerFilter);
// 6445       break;
// 6446     }
// 6447 
// 6448     case TIM_TS_TI2FP2:
// 6449     {
// 6450       /* Check the parameters */
// 6451       assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 6452       assert_param(IS_TIM_TRIGGERPOLARITY(sSlaveConfig->TriggerPolarity));
// 6453       assert_param(IS_TIM_TRIGGERFILTER(sSlaveConfig->TriggerFilter));
// 6454 
// 6455       /* Configure TI2 Filter and Polarity */
// 6456       TIM_TI2_ConfigInputStage(htim->Instance,
// 6457                                sSlaveConfig->TriggerPolarity,
// 6458                                sSlaveConfig->TriggerFilter);
// 6459       break;
// 6460     }
// 6461 
// 6462     case TIM_TS_ITR0:
// 6463     case TIM_TS_ITR1:
// 6464     case TIM_TS_ITR2:
// 6465     case TIM_TS_ITR3:
// 6466     {
// 6467       /* Check the parameter */
// 6468       assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 6469       break;
// 6470     }
// 6471 
// 6472     default:
// 6473       break;
// 6474   }
// 6475   return HAL_OK;
// 6476 }
// 6477 
// 6478 /**
// 6479   * @brief  Configure the TI1 as Input.
// 6480   * @param  TIMx to select the TIM peripheral.
// 6481   * @param  TIM_ICPolarity The Input Polarity.
// 6482   *          This parameter can be one of the following values:
// 6483   *            @arg TIM_ICPOLARITY_RISING
// 6484   *            @arg TIM_ICPOLARITY_FALLING
// 6485   *            @arg TIM_ICPOLARITY_BOTHEDGE
// 6486   * @param  TIM_ICSelection specifies the input to be used.
// 6487   *          This parameter can be one of the following values:
// 6488   *            @arg TIM_ICSELECTION_DIRECTTI: TIM Input 1 is selected to be connected to IC1.
// 6489   *            @arg TIM_ICSELECTION_INDIRECTTI: TIM Input 1 is selected to be connected to IC2.
// 6490   *            @arg TIM_ICSELECTION_TRC: TIM Input 1 is selected to be connected to TRC.
// 6491   * @param  TIM_ICFilter Specifies the Input Capture Filter.
// 6492   *          This parameter must be a value between 0x00 and 0x0F.
// 6493   * @retval None
// 6494   * @note TIM_ICFilter and TIM_ICPolarity are not used in INDIRECT mode as TI2FP1
// 6495   *       (on channel2 path) is used as the input signal. Therefore CCMR1 must be
// 6496   *        protected against un-initialized filter and polarity values.
// 6497   */
// 6498 void TIM_TI1_SetConfig(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICSelection,
// 6499                        uint32_t TIM_ICFilter)
// 6500 {
// 6501   uint32_t tmpccmr1;
// 6502   uint32_t tmpccer;
// 6503 
// 6504   /* Disable the Channel 1: Reset the CC1E Bit */
// 6505   TIMx->CCER &= ~TIM_CCER_CC1E;
// 6506   tmpccmr1 = TIMx->CCMR1;
// 6507   tmpccer = TIMx->CCER;
// 6508 
// 6509   /* Select the Input */
// 6510   if (IS_TIM_CC2_INSTANCE(TIMx) != RESET)
// 6511   {
// 6512     tmpccmr1 &= ~TIM_CCMR1_CC1S;
// 6513     tmpccmr1 |= TIM_ICSelection;
// 6514   }
// 6515   else
// 6516   {
// 6517     tmpccmr1 |= TIM_CCMR1_CC1S_0;
// 6518   }
// 6519 
// 6520   /* Set the filter */
// 6521   tmpccmr1 &= ~TIM_CCMR1_IC1F;
// 6522   tmpccmr1 |= ((TIM_ICFilter << 4U) & TIM_CCMR1_IC1F);
// 6523 
// 6524   /* Select the Polarity and set the CC1E Bit */
// 6525   tmpccer &= ~(TIM_CCER_CC1P | TIM_CCER_CC1NP);
// 6526   tmpccer |= (TIM_ICPolarity & (TIM_CCER_CC1P | TIM_CCER_CC1NP));
// 6527 
// 6528   /* Write to TIMx CCMR1 and CCER registers */
// 6529   TIMx->CCMR1 = tmpccmr1;
// 6530   TIMx->CCER = tmpccer;
// 6531 }
// 6532 
// 6533 /**
// 6534   * @brief  Configure the Polarity and Filter for TI1.
// 6535   * @param  TIMx to select the TIM peripheral.
// 6536   * @param  TIM_ICPolarity The Input Polarity.
// 6537   *          This parameter can be one of the following values:
// 6538   *            @arg TIM_ICPOLARITY_RISING
// 6539   *            @arg TIM_ICPOLARITY_FALLING
// 6540   *            @arg TIM_ICPOLARITY_BOTHEDGE
// 6541   * @param  TIM_ICFilter Specifies the Input Capture Filter.
// 6542   *          This parameter must be a value between 0x00 and 0x0F.
// 6543   * @retval None
// 6544   */
// 6545 static void TIM_TI1_ConfigInputStage(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICFilter)
// 6546 {
// 6547   uint32_t tmpccmr1;
// 6548   uint32_t tmpccer;
// 6549 
// 6550   /* Disable the Channel 1: Reset the CC1E Bit */
// 6551   tmpccer = TIMx->CCER;
// 6552   TIMx->CCER &= ~TIM_CCER_CC1E;
// 6553   tmpccmr1 = TIMx->CCMR1;
// 6554 
// 6555   /* Set the filter */
// 6556   tmpccmr1 &= ~TIM_CCMR1_IC1F;
// 6557   tmpccmr1 |= (TIM_ICFilter << 4U);
// 6558 
// 6559   /* Select the Polarity and set the CC1E Bit */
// 6560   tmpccer &= ~(TIM_CCER_CC1P | TIM_CCER_CC1NP);
// 6561   tmpccer |= TIM_ICPolarity;
// 6562 
// 6563   /* Write to TIMx CCMR1 and CCER registers */
// 6564   TIMx->CCMR1 = tmpccmr1;
// 6565   TIMx->CCER = tmpccer;
// 6566 }
// 6567 
// 6568 /**
// 6569   * @brief  Configure the TI2 as Input.
// 6570   * @param  TIMx to select the TIM peripheral
// 6571   * @param  TIM_ICPolarity The Input Polarity.
// 6572   *          This parameter can be one of the following values:
// 6573   *            @arg TIM_ICPOLARITY_RISING
// 6574   *            @arg TIM_ICPOLARITY_FALLING
// 6575   *            @arg TIM_ICPOLARITY_BOTHEDGE
// 6576   * @param  TIM_ICSelection specifies the input to be used.
// 6577   *          This parameter can be one of the following values:
// 6578   *            @arg TIM_ICSELECTION_DIRECTTI: TIM Input 2 is selected to be connected to IC2.
// 6579   *            @arg TIM_ICSELECTION_INDIRECTTI: TIM Input 2 is selected to be connected to IC1.
// 6580   *            @arg TIM_ICSELECTION_TRC: TIM Input 2 is selected to be connected to TRC.
// 6581   * @param  TIM_ICFilter Specifies the Input Capture Filter.
// 6582   *          This parameter must be a value between 0x00 and 0x0F.
// 6583   * @retval None
// 6584   * @note TIM_ICFilter and TIM_ICPolarity are not used in INDIRECT mode as TI1FP2
// 6585   *       (on channel1 path) is used as the input signal. Therefore CCMR1 must be
// 6586   *        protected against un-initialized filter and polarity values.
// 6587   */
// 6588 static void TIM_TI2_SetConfig(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICSelection,
// 6589                               uint32_t TIM_ICFilter)
// 6590 {
// 6591   uint32_t tmpccmr1;
// 6592   uint32_t tmpccer;
// 6593 
// 6594   /* Disable the Channel 2: Reset the CC2E Bit */
// 6595   TIMx->CCER &= ~TIM_CCER_CC2E;
// 6596   tmpccmr1 = TIMx->CCMR1;
// 6597   tmpccer = TIMx->CCER;
// 6598 
// 6599   /* Select the Input */
// 6600   tmpccmr1 &= ~TIM_CCMR1_CC2S;
// 6601   tmpccmr1 |= (TIM_ICSelection << 8U);
// 6602 
// 6603   /* Set the filter */
// 6604   tmpccmr1 &= ~TIM_CCMR1_IC2F;
// 6605   tmpccmr1 |= ((TIM_ICFilter << 12U) & TIM_CCMR1_IC2F);
// 6606 
// 6607   /* Select the Polarity and set the CC2E Bit */
// 6608   tmpccer &= ~(TIM_CCER_CC2P | TIM_CCER_CC2NP);
// 6609   tmpccer |= ((TIM_ICPolarity << 4U) & (TIM_CCER_CC2P | TIM_CCER_CC2NP));
// 6610 
// 6611   /* Write to TIMx CCMR1 and CCER registers */
// 6612   TIMx->CCMR1 = tmpccmr1 ;
// 6613   TIMx->CCER = tmpccer;
// 6614 }
// 6615 
// 6616 /**
// 6617   * @brief  Configure the Polarity and Filter for TI2.
// 6618   * @param  TIMx to select the TIM peripheral.
// 6619   * @param  TIM_ICPolarity The Input Polarity.
// 6620   *          This parameter can be one of the following values:
// 6621   *            @arg TIM_ICPOLARITY_RISING
// 6622   *            @arg TIM_ICPOLARITY_FALLING
// 6623   *            @arg TIM_ICPOLARITY_BOTHEDGE
// 6624   * @param  TIM_ICFilter Specifies the Input Capture Filter.
// 6625   *          This parameter must be a value between 0x00 and 0x0F.
// 6626   * @retval None
// 6627   */
// 6628 static void TIM_TI2_ConfigInputStage(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICFilter)
// 6629 {
// 6630   uint32_t tmpccmr1;
// 6631   uint32_t tmpccer;
// 6632 
// 6633   /* Disable the Channel 2: Reset the CC2E Bit */
// 6634   TIMx->CCER &= ~TIM_CCER_CC2E;
// 6635   tmpccmr1 = TIMx->CCMR1;
// 6636   tmpccer = TIMx->CCER;
// 6637 
// 6638   /* Set the filter */
// 6639   tmpccmr1 &= ~TIM_CCMR1_IC2F;
// 6640   tmpccmr1 |= (TIM_ICFilter << 12U);
// 6641 
// 6642   /* Select the Polarity and set the CC2E Bit */
// 6643   tmpccer &= ~(TIM_CCER_CC2P | TIM_CCER_CC2NP);
// 6644   tmpccer |= (TIM_ICPolarity << 4U);
// 6645 
// 6646   /* Write to TIMx CCMR1 and CCER registers */
// 6647   TIMx->CCMR1 = tmpccmr1 ;
// 6648   TIMx->CCER = tmpccer;
// 6649 }
// 6650 
// 6651 /**
// 6652   * @brief  Configure the TI3 as Input.
// 6653   * @param  TIMx to select the TIM peripheral
// 6654   * @param  TIM_ICPolarity The Input Polarity.
// 6655   *          This parameter can be one of the following values:
// 6656   *            @arg TIM_ICPOLARITY_RISING
// 6657   *            @arg TIM_ICPOLARITY_FALLING
// 6658   *            @arg TIM_ICPOLARITY_BOTHEDGE
// 6659   * @param  TIM_ICSelection specifies the input to be used.
// 6660   *          This parameter can be one of the following values:
// 6661   *            @arg TIM_ICSELECTION_DIRECTTI: TIM Input 3 is selected to be connected to IC3.
// 6662   *            @arg TIM_ICSELECTION_INDIRECTTI: TIM Input 3 is selected to be connected to IC4.
// 6663   *            @arg TIM_ICSELECTION_TRC: TIM Input 3 is selected to be connected to TRC.
// 6664   * @param  TIM_ICFilter Specifies the Input Capture Filter.
// 6665   *          This parameter must be a value between 0x00 and 0x0F.
// 6666   * @retval None
// 6667   * @note TIM_ICFilter and TIM_ICPolarity are not used in INDIRECT mode as TI3FP4
// 6668   *       (on channel1 path) is used as the input signal. Therefore CCMR2 must be
// 6669   *        protected against un-initialized filter and polarity values.
// 6670   */
// 6671 static void TIM_TI3_SetConfig(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICSelection,
// 6672                               uint32_t TIM_ICFilter)
// 6673 {
// 6674   uint32_t tmpccmr2;
// 6675   uint32_t tmpccer;
// 6676 
// 6677   /* Disable the Channel 3: Reset the CC3E Bit */
// 6678   TIMx->CCER &= ~TIM_CCER_CC3E;
// 6679   tmpccmr2 = TIMx->CCMR2;
// 6680   tmpccer = TIMx->CCER;
// 6681 
// 6682   /* Select the Input */
// 6683   tmpccmr2 &= ~TIM_CCMR2_CC3S;
// 6684   tmpccmr2 |= TIM_ICSelection;
// 6685 
// 6686   /* Set the filter */
// 6687   tmpccmr2 &= ~TIM_CCMR2_IC3F;
// 6688   tmpccmr2 |= ((TIM_ICFilter << 4U) & TIM_CCMR2_IC3F);
// 6689 
// 6690   /* Select the Polarity and set the CC3E Bit */
// 6691   tmpccer &= ~(TIM_CCER_CC3P | TIM_CCER_CC3NP);
// 6692   tmpccer |= ((TIM_ICPolarity << 8U) & (TIM_CCER_CC3P | TIM_CCER_CC3NP));
// 6693 
// 6694   /* Write to TIMx CCMR2 and CCER registers */
// 6695   TIMx->CCMR2 = tmpccmr2;
// 6696   TIMx->CCER = tmpccer;
// 6697 }
// 6698 
// 6699 /**
// 6700   * @brief  Configure the TI4 as Input.
// 6701   * @param  TIMx to select the TIM peripheral
// 6702   * @param  TIM_ICPolarity The Input Polarity.
// 6703   *          This parameter can be one of the following values:
// 6704   *            @arg TIM_ICPOLARITY_RISING
// 6705   *            @arg TIM_ICPOLARITY_FALLING
// 6706   *            @arg TIM_ICPOLARITY_BOTHEDGE
// 6707   * @param  TIM_ICSelection specifies the input to be used.
// 6708   *          This parameter can be one of the following values:
// 6709   *            @arg TIM_ICSELECTION_DIRECTTI: TIM Input 4 is selected to be connected to IC4.
// 6710   *            @arg TIM_ICSELECTION_INDIRECTTI: TIM Input 4 is selected to be connected to IC3.
// 6711   *            @arg TIM_ICSELECTION_TRC: TIM Input 4 is selected to be connected to TRC.
// 6712   * @param  TIM_ICFilter Specifies the Input Capture Filter.
// 6713   *          This parameter must be a value between 0x00 and 0x0F.
// 6714   * @note TIM_ICFilter and TIM_ICPolarity are not used in INDIRECT mode as TI4FP3
// 6715   *       (on channel1 path) is used as the input signal. Therefore CCMR2 must be
// 6716   *        protected against un-initialized filter and polarity values.
// 6717   * @retval None
// 6718   */
// 6719 static void TIM_TI4_SetConfig(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICSelection,
// 6720                               uint32_t TIM_ICFilter)
// 6721 {
// 6722   uint32_t tmpccmr2;
// 6723   uint32_t tmpccer;
// 6724 
// 6725   /* Disable the Channel 4: Reset the CC4E Bit */
// 6726   TIMx->CCER &= ~TIM_CCER_CC4E;
// 6727   tmpccmr2 = TIMx->CCMR2;
// 6728   tmpccer = TIMx->CCER;
// 6729 
// 6730   /* Select the Input */
// 6731   tmpccmr2 &= ~TIM_CCMR2_CC4S;
// 6732   tmpccmr2 |= (TIM_ICSelection << 8U);
// 6733 
// 6734   /* Set the filter */
// 6735   tmpccmr2 &= ~TIM_CCMR2_IC4F;
// 6736   tmpccmr2 |= ((TIM_ICFilter << 12U) & TIM_CCMR2_IC4F);
// 6737 
// 6738   /* Select the Polarity and set the CC4E Bit */
// 6739   tmpccer &= ~(TIM_CCER_CC4P | TIM_CCER_CC4NP);
// 6740   tmpccer |= ((TIM_ICPolarity << 12U) & (TIM_CCER_CC4P | TIM_CCER_CC4NP));
// 6741 
// 6742   /* Write to TIMx CCMR2 and CCER registers */
// 6743   TIMx->CCMR2 = tmpccmr2;
// 6744   TIMx->CCER = tmpccer ;
// 6745 }
// 6746 
// 6747 /**
// 6748   * @brief  Selects the Input Trigger source
// 6749   * @param  TIMx to select the TIM peripheral
// 6750   * @param  InputTriggerSource The Input Trigger source.
// 6751   *          This parameter can be one of the following values:
// 6752   *            @arg TIM_TS_ITR0: Internal Trigger 0
// 6753   *            @arg TIM_TS_ITR1: Internal Trigger 1
// 6754   *            @arg TIM_TS_ITR2: Internal Trigger 2
// 6755   *            @arg TIM_TS_ITR3: Internal Trigger 3
// 6756   *            @arg TIM_TS_TI1F_ED: TI1 Edge Detector
// 6757   *            @arg TIM_TS_TI1FP1: Filtered Timer Input 1
// 6758   *            @arg TIM_TS_TI2FP2: Filtered Timer Input 2
// 6759   *            @arg TIM_TS_ETRF: External Trigger input
// 6760   * @retval None
// 6761   */
// 6762 static void TIM_ITRx_SetConfig(TIM_TypeDef *TIMx, uint32_t InputTriggerSource)
// 6763 {
// 6764   uint32_t tmpsmcr;
// 6765 
// 6766   /* Get the TIMx SMCR register value */
// 6767   tmpsmcr = TIMx->SMCR;
// 6768   /* Reset the TS Bits */
// 6769   tmpsmcr &= ~TIM_SMCR_TS;
// 6770   /* Set the Input Trigger source and the slave mode*/
// 6771   tmpsmcr |= (InputTriggerSource | TIM_SLAVEMODE_EXTERNAL1);
// 6772   /* Write to TIMx SMCR */
// 6773   TIMx->SMCR = tmpsmcr;
// 6774 }
// 6775 /**
// 6776   * @brief  Configures the TIMx External Trigger (ETR).
// 6777   * @param  TIMx to select the TIM peripheral
// 6778   * @param  TIM_ExtTRGPrescaler The external Trigger Prescaler.
// 6779   *          This parameter can be one of the following values:
// 6780   *            @arg TIM_ETRPRESCALER_DIV1: ETRP Prescaler OFF.
// 6781   *            @arg TIM_ETRPRESCALER_DIV2: ETRP frequency divided by 2.
// 6782   *            @arg TIM_ETRPRESCALER_DIV4: ETRP frequency divided by 4.
// 6783   *            @arg TIM_ETRPRESCALER_DIV8: ETRP frequency divided by 8.
// 6784   * @param  TIM_ExtTRGPolarity The external Trigger Polarity.
// 6785   *          This parameter can be one of the following values:
// 6786   *            @arg TIM_ETRPOLARITY_INVERTED: active low or falling edge active.
// 6787   *            @arg TIM_ETRPOLARITY_NONINVERTED: active high or rising edge active.
// 6788   * @param  ExtTRGFilter External Trigger Filter.
// 6789   *          This parameter must be a value between 0x00 and 0x0F
// 6790   * @retval None
// 6791   */
// 6792 void TIM_ETR_SetConfig(TIM_TypeDef *TIMx, uint32_t TIM_ExtTRGPrescaler,
// 6793                        uint32_t TIM_ExtTRGPolarity, uint32_t ExtTRGFilter)
// 6794 {
// 6795   uint32_t tmpsmcr;
// 6796 
// 6797   tmpsmcr = TIMx->SMCR;
// 6798 
// 6799   /* Reset the ETR Bits */
// 6800   tmpsmcr &= ~(TIM_SMCR_ETF | TIM_SMCR_ETPS | TIM_SMCR_ECE | TIM_SMCR_ETP);
// 6801 
// 6802   /* Set the Prescaler, the Filter value and the Polarity */
// 6803   tmpsmcr |= (uint32_t)(TIM_ExtTRGPrescaler | (TIM_ExtTRGPolarity | (ExtTRGFilter << 8U)));
// 6804 
// 6805   /* Write to TIMx SMCR */
// 6806   TIMx->SMCR = tmpsmcr;
// 6807 }
// 6808 
// 6809 /**
// 6810   * @brief  Enables or disables the TIM Capture Compare Channel x.
// 6811   * @param  TIMx to select the TIM peripheral
// 6812   * @param  Channel specifies the TIM Channel
// 6813   *          This parameter can be one of the following values:
// 6814   *            @arg TIM_CHANNEL_1: TIM Channel 1
// 6815   *            @arg TIM_CHANNEL_2: TIM Channel 2
// 6816   *            @arg TIM_CHANNEL_3: TIM Channel 3
// 6817   *            @arg TIM_CHANNEL_4: TIM Channel 4
// 6818   *            @arg TIM_CHANNEL_5: TIM Channel 5 selected
// 6819   *            @arg TIM_CHANNEL_6: TIM Channel 6 selected
// 6820   * @param  ChannelState specifies the TIM Channel CCxE bit new state.
// 6821   *          This parameter can be: TIM_CCx_ENABLE or TIM_CCx_DISABLE.
// 6822   * @retval None
// 6823   */
// 6824 void TIM_CCxChannelCmd(TIM_TypeDef *TIMx, uint32_t Channel, uint32_t ChannelState)
// 6825 {
// 6826   uint32_t tmp;
// 6827 
// 6828   /* Check the parameters */
// 6829   assert_param(IS_TIM_CC1_INSTANCE(TIMx));
// 6830   assert_param(IS_TIM_CHANNELS(Channel));
// 6831 
// 6832   tmp = TIM_CCER_CC1E << (Channel & 0x1FU); /* 0x1FU = 31 bits max shift */
// 6833 
// 6834   /* Reset the CCxE Bit */
// 6835   TIMx->CCER &= ~tmp;
// 6836 
// 6837   /* Set or reset the CCxE Bit */
// 6838   TIMx->CCER |= (uint32_t)(ChannelState << (Channel & 0x1FU)); /* 0x1FU = 31 bits max shift */
// 6839 }
// 6840 
// 6841 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 6842 /**
// 6843   * @brief  Reset interrupt callbacks to the legacy weak callbacks.
// 6844   * @param  htim pointer to a TIM_HandleTypeDef structure that contains
// 6845   *                the configuration information for TIM module.
// 6846   * @retval None
// 6847   */
// 6848 void TIM_ResetCallback(TIM_HandleTypeDef *htim)
// 6849 {
// 6850   /* Reset the TIM callback to the legacy weak callbacks */
// 6851   htim->PeriodElapsedCallback             = HAL_TIM_PeriodElapsedCallback;             /* Legacy weak PeriodElapsedCallback             */
// 6852   htim->PeriodElapsedHalfCpltCallback     = HAL_TIM_PeriodElapsedHalfCpltCallback;     /* Legacy weak PeriodElapsedHalfCpltCallback     */
// 6853   htim->TriggerCallback                   = HAL_TIM_TriggerCallback;                   /* Legacy weak TriggerCallback                   */
// 6854   htim->TriggerHalfCpltCallback           = HAL_TIM_TriggerHalfCpltCallback;           /* Legacy weak TriggerHalfCpltCallback           */
// 6855   htim->IC_CaptureCallback                = HAL_TIM_IC_CaptureCallback;                /* Legacy weak IC_CaptureCallback                */
// 6856   htim->IC_CaptureHalfCpltCallback        = HAL_TIM_IC_CaptureHalfCpltCallback;        /* Legacy weak IC_CaptureHalfCpltCallback        */
// 6857   htim->OC_DelayElapsedCallback           = HAL_TIM_OC_DelayElapsedCallback;           /* Legacy weak OC_DelayElapsedCallback           */
// 6858   htim->PWM_PulseFinishedCallback         = HAL_TIM_PWM_PulseFinishedCallback;         /* Legacy weak PWM_PulseFinishedCallback         */
// 6859   htim->PWM_PulseFinishedHalfCpltCallback = HAL_TIM_PWM_PulseFinishedHalfCpltCallback; /* Legacy weak PWM_PulseFinishedHalfCpltCallback */
// 6860   htim->ErrorCallback                     = HAL_TIM_ErrorCallback;                     /* Legacy weak ErrorCallback                     */
// 6861   htim->CommutationCallback               = HAL_TIMEx_CommutCallback;                  /* Legacy weak CommutationCallback               */
// 6862   htim->CommutationHalfCpltCallback       = HAL_TIMEx_CommutHalfCpltCallback;          /* Legacy weak CommutationHalfCpltCallback       */
// 6863   htim->BreakCallback                     = HAL_TIMEx_BreakCallback;                   /* Legacy weak BreakCallback                     */
// 6864   htim->Break2Callback                    = HAL_TIMEx_Break2Callback;                  /* Legacy weak Break2Callback                    */
// 6865 }
// 6866 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 6867 
// 6868 /**
// 6869   * @}
// 6870   */
// 6871 
// 6872 #endif /* HAL_TIM_MODULE_ENABLED */
// 6873 /**
// 6874   * @}
// 6875   */
// 6876 
// 6877 /**
// 6878   * @}
// 6879   */
// 6880 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
// 
// 0 bytes of memory
//
//Errors: none
//Warnings: none
