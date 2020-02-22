///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.30.1.114/W32 for ARM        10/Feb/2020  21:42:27
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\win10\f7dbg\dbgTST\Drivers\STM32F7xx_HAL_Driver\Src\stm32f7xx_hal_tim_ex.c
//    Command line =  
//        -f C:\Users\rus08\AppData\Local\Temp\EW929B.tmp
//        (D:\win10\f7dbg\dbgTST\Drivers\STM32F7xx_HAL_Driver\Src\stm32f7xx_hal_tim_ex.c
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
//        D:\win10\f7dbg\dbgTST\EWARM\dbgTST\List\stm32f7xx_hal_tim_ex.s
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
// D:\win10\f7dbg\dbgTST\Drivers\STM32F7xx_HAL_Driver\Src\stm32f7xx_hal_tim_ex.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f7xx_hal_tim_ex.c
//    4   * @author  MCD Application Team
//    5   * @brief   TIM HAL module driver.
//    6   *          This file provides firmware functions to manage the following
//    7   *          functionalities of the Timer Extended peripheral:
//    8   *           + Time Hall Sensor Interface Initialization
//    9   *           + Time Hall Sensor Interface Start
//   10   *           + Time Complementary signal break and dead time configuration
//   11   *           + Time Master and Slave synchronization configuration
//   12   *           + Time Output Compare/PWM Channel Configuration (for channels 5 and 6)
//   13   *           + Timer remapping capabilities configuration
//   14   @verbatim
//   15   ==============================================================================
//   16                       ##### TIMER Extended features #####
//   17   ==============================================================================
//   18   [..]
//   19     The Timer Extended features include:
//   20     (#) Complementary outputs with programmable dead-time for :
//   21         (++) Output Compare
//   22         (++) PWM generation (Edge and Center-aligned Mode)
//   23         (++) One-pulse mode output
//   24     (#) Synchronization circuit to control the timer with external signals and to
//   25         interconnect several timers together.
//   26     (#) Break input to put the timer output signals in reset state or in a known state.
//   27     (#) Supports incremental (quadrature) encoder and hall-sensor circuitry for
//   28         positioning purposes
//   29 
//   30             ##### How to use this driver #####
//   31   ==============================================================================
//   32     [..]
//   33      (#) Initialize the TIM low level resources by implementing the following functions
//   34          depending on the selected feature:
//   35            (++) Hall Sensor output : HAL_TIMEx_HallSensor_MspInit()
//   36 
//   37      (#) Initialize the TIM low level resources :
//   38         (##) Enable the TIM interface clock using __HAL_RCC_TIMx_CLK_ENABLE();
//   39         (##) TIM pins configuration
//   40             (+++) Enable the clock for the TIM GPIOs using the following function:
//   41               __HAL_RCC_GPIOx_CLK_ENABLE();
//   42             (+++) Configure these TIM pins in Alternate function mode using HAL_GPIO_Init();
//   43 
//   44      (#) The external Clock can be configured, if needed (the default clock is the
//   45          internal clock from the APBx), using the following function:
//   46          HAL_TIM_ConfigClockSource, the clock configuration should be done before
//   47          any start function.
//   48 
//   49      (#) Configure the TIM in the desired functioning mode using one of the
//   50          initialization function of this driver:
//   51           (++) HAL_TIMEx_HallSensor_Init() and HAL_TIMEx_ConfigCommutEvent(): to use the
//   52                Timer Hall Sensor Interface and the commutation event with the corresponding
//   53                Interrupt and DMA request if needed (Note that One Timer is used to interface
//   54                with the Hall sensor Interface and another Timer should be used to use
//   55                the commutation event).
//   56 
//   57      (#) Activate the TIM peripheral using one of the start functions:
//   58            (++) Complementary Output Compare : HAL_TIMEx_OCN_Start(), HAL_TIMEx_OCN_Start_DMA(), HAL_TIMEx_OC_Start_IT()
//   59            (++) Complementary PWM generation : HAL_TIMEx_PWMN_Start(), HAL_TIMEx_PWMN_Start_DMA(), HAL_TIMEx_PWMN_Start_IT()
//   60            (++) Complementary One-pulse mode output : HAL_TIMEx_OnePulseN_Start(), HAL_TIMEx_OnePulseN_Start_IT()
//   61            (++) Hall Sensor output : HAL_TIMEx_HallSensor_Start(), HAL_TIMEx_HallSensor_Start_DMA(), HAL_TIMEx_HallSensor_Start_IT().
//   62 
//   63   @endverbatim
//   64   ******************************************************************************
//   65   * @attention
//   66   *
//   67   * <h2><center>&copy; Copyright (c) 2017 STMicroelectronics.
//   68   * All rights reserved.</center></h2>
//   69   *
//   70   * This software component is licensed by ST under BSD 3-Clause license,
//   71   * the "License"; You may not use this file except in compliance with the
//   72   * License. You may obtain a copy of the License at:
//   73   *                        opensource.org/licenses/BSD-3-Clause
//   74   *
//   75   ******************************************************************************
//   76 */
//   77 
//   78 /* Includes ------------------------------------------------------------------*/
//   79 #include "stm32f7xx_hal.h"
//   80 
//   81 /** @addtogroup STM32F7xx_HAL_Driver
//   82   * @{
//   83   */
//   84 
//   85 /** @defgroup TIMEx TIMEx
//   86   * @brief TIM Extended HAL module driver
//   87   * @{
//   88   */
//   89 
//   90 #ifdef HAL_TIM_MODULE_ENABLED
//   91 
//   92 /* Private typedef -----------------------------------------------------------*/
//   93 /* Private define ------------------------------------------------------------*/
//   94 /* Private macro -------------------------------------------------------------*/
//   95 /* Private variables ---------------------------------------------------------*/
//   96 /* Private function prototypes -----------------------------------------------*/
//   97 static void TIM_CCxNChannelCmd(TIM_TypeDef *TIMx, uint32_t Channel, uint32_t ChannelNState);
//   98 
//   99 /* Exported functions --------------------------------------------------------*/
//  100 /** @defgroup TIMEx_Exported_Functions TIM Extended Exported Functions
//  101   * @{
//  102   */
//  103 
//  104 /** @defgroup TIMEx_Exported_Functions_Group1 Extended Timer Hall Sensor functions
//  105   * @brief    Timer Hall Sensor functions
//  106   *
//  107 @verbatim
//  108   ==============================================================================
//  109                       ##### Timer Hall Sensor functions #####
//  110   ==============================================================================
//  111   [..]
//  112     This section provides functions allowing to:
//  113     (+) Initialize and configure TIM HAL Sensor.
//  114     (+) De-initialize TIM HAL Sensor.
//  115     (+) Start the Hall Sensor Interface.
//  116     (+) Stop the Hall Sensor Interface.
//  117     (+) Start the Hall Sensor Interface and enable interrupts.
//  118     (+) Stop the Hall Sensor Interface and disable interrupts.
//  119     (+) Start the Hall Sensor Interface and enable DMA transfers.
//  120     (+) Stop the Hall Sensor Interface and disable DMA transfers.
//  121 
//  122 @endverbatim
//  123   * @{
//  124   */
//  125 /**
//  126   * @brief  Initializes the TIM Hall Sensor Interface and initialize the associated handle.
//  127   * @param  htim TIM Hall Sensor Interface handle
//  128   * @param  sConfig TIM Hall Sensor configuration structure
//  129   * @retval HAL status
//  130   */
//  131 HAL_StatusTypeDef HAL_TIMEx_HallSensor_Init(TIM_HandleTypeDef *htim, TIM_HallSensor_InitTypeDef *sConfig)
//  132 {
//  133   TIM_OC_InitTypeDef OC_Config;
//  134 
//  135   /* Check the TIM handle allocation */
//  136   if (htim == NULL)
//  137   {
//  138     return HAL_ERROR;
//  139   }
//  140 
//  141   /* Check the parameters */
//  142   assert_param(IS_TIM_HALL_SENSOR_INTERFACE_INSTANCE(htim->Instance));
//  143   assert_param(IS_TIM_COUNTER_MODE(htim->Init.CounterMode));
//  144   assert_param(IS_TIM_CLOCKDIVISION_DIV(htim->Init.ClockDivision));
//  145   assert_param(IS_TIM_AUTORELOAD_PRELOAD(htim->Init.AutoReloadPreload));
//  146   assert_param(IS_TIM_IC_POLARITY(sConfig->IC1Polarity));
//  147   assert_param(IS_TIM_IC_PRESCALER(sConfig->IC1Prescaler));
//  148   assert_param(IS_TIM_IC_FILTER(sConfig->IC1Filter));
//  149 
//  150   if (htim->State == HAL_TIM_STATE_RESET)
//  151   {
//  152     /* Allocate lock resource and initialize it */
//  153     htim->Lock = HAL_UNLOCKED;
//  154 
//  155 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
//  156     /* Reset interrupt callbacks to legacy week callbacks */
//  157     TIM_ResetCallback(htim);
//  158 
//  159     if (htim->HallSensor_MspInitCallback == NULL)
//  160     {
//  161       htim->HallSensor_MspInitCallback = HAL_TIMEx_HallSensor_MspInit;
//  162     }
//  163     /* Init the low level hardware : GPIO, CLOCK, NVIC */
//  164     htim->HallSensor_MspInitCallback(htim);
//  165 #else
//  166     /* Init the low level hardware : GPIO, CLOCK, NVIC and DMA */
//  167     HAL_TIMEx_HallSensor_MspInit(htim);
//  168 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
//  169   }
//  170 
//  171   /* Set the TIM state */
//  172   htim->State = HAL_TIM_STATE_BUSY;
//  173 
//  174   /* Configure the Time base in the Encoder Mode */
//  175   TIM_Base_SetConfig(htim->Instance, &htim->Init);
//  176 
//  177   /* Configure the Channel 1 as Input Channel to interface with the three Outputs of the  Hall sensor */
//  178   TIM_TI1_SetConfig(htim->Instance, sConfig->IC1Polarity, TIM_ICSELECTION_TRC, sConfig->IC1Filter);
//  179 
//  180   /* Reset the IC1PSC Bits */
//  181   htim->Instance->CCMR1 &= ~TIM_CCMR1_IC1PSC;
//  182   /* Set the IC1PSC value */
//  183   htim->Instance->CCMR1 |= sConfig->IC1Prescaler;
//  184 
//  185   /* Enable the Hall sensor interface (XOR function of the three inputs) */
//  186   htim->Instance->CR2 |= TIM_CR2_TI1S;
//  187 
//  188   /* Select the TIM_TS_TI1F_ED signal as Input trigger for the TIM */
//  189   htim->Instance->SMCR &= ~TIM_SMCR_TS;
//  190   htim->Instance->SMCR |= TIM_TS_TI1F_ED;
//  191 
//  192   /* Use the TIM_TS_TI1F_ED signal to reset the TIM counter each edge detection */
//  193   htim->Instance->SMCR &= ~TIM_SMCR_SMS;
//  194   htim->Instance->SMCR |= TIM_SLAVEMODE_RESET;
//  195 
//  196   /* Program channel 2 in PWM 2 mode with the desired Commutation_Delay*/
//  197   OC_Config.OCFastMode = TIM_OCFAST_DISABLE;
//  198   OC_Config.OCIdleState = TIM_OCIDLESTATE_RESET;
//  199   OC_Config.OCMode = TIM_OCMODE_PWM2;
//  200   OC_Config.OCNIdleState = TIM_OCNIDLESTATE_RESET;
//  201   OC_Config.OCNPolarity = TIM_OCNPOLARITY_HIGH;
//  202   OC_Config.OCPolarity = TIM_OCPOLARITY_HIGH;
//  203   OC_Config.Pulse = sConfig->Commutation_Delay;
//  204 
//  205   TIM_OC2_SetConfig(htim->Instance, &OC_Config);
//  206 
//  207   /* Select OC2REF as trigger output on TRGO: write the MMS bits in the TIMx_CR2
//  208     register to 101 */
//  209   htim->Instance->CR2 &= ~TIM_CR2_MMS;
//  210   htim->Instance->CR2 |= TIM_TRGO_OC2REF;
//  211 
//  212   /* Initialize the TIM state*/
//  213   htim->State = HAL_TIM_STATE_READY;
//  214 
//  215   return HAL_OK;
//  216 }
//  217 
//  218 /**
//  219   * @brief  DeInitializes the TIM Hall Sensor interface
//  220   * @param  htim TIM Hall Sensor Interface handle
//  221   * @retval HAL status
//  222   */
//  223 HAL_StatusTypeDef HAL_TIMEx_HallSensor_DeInit(TIM_HandleTypeDef *htim)
//  224 {
//  225   /* Check the parameters */
//  226   assert_param(IS_TIM_INSTANCE(htim->Instance));
//  227 
//  228   htim->State = HAL_TIM_STATE_BUSY;
//  229 
//  230   /* Disable the TIM Peripheral Clock */
//  231   __HAL_TIM_DISABLE(htim);
//  232 
//  233 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
//  234   if (htim->HallSensor_MspDeInitCallback == NULL)
//  235   {
//  236     htim->HallSensor_MspDeInitCallback = HAL_TIMEx_HallSensor_MspDeInit;
//  237   }
//  238   /* DeInit the low level hardware */
//  239   htim->HallSensor_MspDeInitCallback(htim);
//  240 #else
//  241   /* DeInit the low level hardware: GPIO, CLOCK, NVIC */
//  242   HAL_TIMEx_HallSensor_MspDeInit(htim);
//  243 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
//  244 
//  245   /* Change TIM state */
//  246   htim->State = HAL_TIM_STATE_RESET;
//  247 
//  248   /* Release Lock */
//  249   __HAL_UNLOCK(htim);
//  250 
//  251   return HAL_OK;
//  252 }
//  253 
//  254 /**
//  255   * @brief  Initializes the TIM Hall Sensor MSP.
//  256   * @param  htim TIM Hall Sensor Interface handle
//  257   * @retval None
//  258   */
//  259 __weak void HAL_TIMEx_HallSensor_MspInit(TIM_HandleTypeDef *htim)
//  260 {
//  261   /* Prevent unused argument(s) compilation warning */
//  262   UNUSED(htim);
//  263 
//  264   /* NOTE : This function should not be modified, when the callback is needed,
//  265             the HAL_TIMEx_HallSensor_MspInit could be implemented in the user file
//  266    */
//  267 }
//  268 
//  269 /**
//  270   * @brief  DeInitializes TIM Hall Sensor MSP.
//  271   * @param  htim TIM Hall Sensor Interface handle
//  272   * @retval None
//  273   */
//  274 __weak void HAL_TIMEx_HallSensor_MspDeInit(TIM_HandleTypeDef *htim)
//  275 {
//  276   /* Prevent unused argument(s) compilation warning */
//  277   UNUSED(htim);
//  278 
//  279   /* NOTE : This function should not be modified, when the callback is needed,
//  280             the HAL_TIMEx_HallSensor_MspDeInit could be implemented in the user file
//  281    */
//  282 }
//  283 
//  284 /**
//  285   * @brief  Starts the TIM Hall Sensor Interface.
//  286   * @param  htim TIM Hall Sensor Interface handle
//  287   * @retval HAL status
//  288   */
//  289 HAL_StatusTypeDef HAL_TIMEx_HallSensor_Start(TIM_HandleTypeDef *htim)
//  290 {
//  291   uint32_t tmpsmcr;
//  292 
//  293   /* Check the parameters */
//  294   assert_param(IS_TIM_HALL_SENSOR_INTERFACE_INSTANCE(htim->Instance));
//  295 
//  296   /* Enable the Input Capture channel 1
//  297     (in the Hall Sensor Interface the three possible channels that can be used are TIM_CHANNEL_1, TIM_CHANNEL_2 and TIM_CHANNEL_3) */
//  298   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_ENABLE);
//  299 
//  300   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
//  301   tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
//  302   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
//  303   {
//  304     __HAL_TIM_ENABLE(htim);
//  305   }
//  306 
//  307   /* Return function status */
//  308   return HAL_OK;
//  309 }
//  310 
//  311 /**
//  312   * @brief  Stops the TIM Hall sensor Interface.
//  313   * @param  htim TIM Hall Sensor Interface handle
//  314   * @retval HAL status
//  315   */
//  316 HAL_StatusTypeDef HAL_TIMEx_HallSensor_Stop(TIM_HandleTypeDef *htim)
//  317 {
//  318   /* Check the parameters */
//  319   assert_param(IS_TIM_HALL_SENSOR_INTERFACE_INSTANCE(htim->Instance));
//  320 
//  321   /* Disable the Input Capture channels 1, 2 and 3
//  322     (in the Hall Sensor Interface the three possible channels that can be used are TIM_CHANNEL_1, TIM_CHANNEL_2 and TIM_CHANNEL_3) */
//  323   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_DISABLE);
//  324 
//  325   /* Disable the Peripheral */
//  326   __HAL_TIM_DISABLE(htim);
//  327 
//  328   /* Return function status */
//  329   return HAL_OK;
//  330 }
//  331 
//  332 /**
//  333   * @brief  Starts the TIM Hall Sensor Interface in interrupt mode.
//  334   * @param  htim TIM Hall Sensor Interface handle
//  335   * @retval HAL status
//  336   */
//  337 HAL_StatusTypeDef HAL_TIMEx_HallSensor_Start_IT(TIM_HandleTypeDef *htim)
//  338 {
//  339   uint32_t tmpsmcr;
//  340 
//  341   /* Check the parameters */
//  342   assert_param(IS_TIM_HALL_SENSOR_INTERFACE_INSTANCE(htim->Instance));
//  343 
//  344   /* Enable the capture compare Interrupts 1 event */
//  345   __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC1);
//  346 
//  347   /* Enable the Input Capture channel 1
//  348     (in the Hall Sensor Interface the three possible channels that can be used are TIM_CHANNEL_1, TIM_CHANNEL_2 and TIM_CHANNEL_3) */
//  349   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_ENABLE);
//  350 
//  351   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
//  352   tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
//  353   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
//  354   {
//  355     __HAL_TIM_ENABLE(htim);
//  356   }
//  357 
//  358   /* Return function status */
//  359   return HAL_OK;
//  360 }
//  361 
//  362 /**
//  363   * @brief  Stops the TIM Hall Sensor Interface in interrupt mode.
//  364   * @param  htim TIM Hall Sensor Interface handle
//  365   * @retval HAL status
//  366   */
//  367 HAL_StatusTypeDef HAL_TIMEx_HallSensor_Stop_IT(TIM_HandleTypeDef *htim)
//  368 {
//  369   /* Check the parameters */
//  370   assert_param(IS_TIM_HALL_SENSOR_INTERFACE_INSTANCE(htim->Instance));
//  371 
//  372   /* Disable the Input Capture channel 1
//  373     (in the Hall Sensor Interface the three possible channels that can be used are TIM_CHANNEL_1, TIM_CHANNEL_2 and TIM_CHANNEL_3) */
//  374   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_DISABLE);
//  375 
//  376   /* Disable the capture compare Interrupts event */
//  377   __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC1);
//  378 
//  379   /* Disable the Peripheral */
//  380   __HAL_TIM_DISABLE(htim);
//  381 
//  382   /* Return function status */
//  383   return HAL_OK;
//  384 }
//  385 
//  386 /**
//  387   * @brief  Starts the TIM Hall Sensor Interface in DMA mode.
//  388   * @param  htim TIM Hall Sensor Interface handle
//  389   * @param  pData The destination Buffer address.
//  390   * @param  Length The length of data to be transferred from TIM peripheral to memory.
//  391   * @retval HAL status
//  392   */
//  393 HAL_StatusTypeDef HAL_TIMEx_HallSensor_Start_DMA(TIM_HandleTypeDef *htim, uint32_t *pData, uint16_t Length)
//  394 {
//  395   uint32_t tmpsmcr;
//  396 
//  397   /* Check the parameters */
//  398   assert_param(IS_TIM_HALL_SENSOR_INTERFACE_INSTANCE(htim->Instance));
//  399 
//  400   if ((htim->State == HAL_TIM_STATE_BUSY))
//  401   {
//  402     return HAL_BUSY;
//  403   }
//  404   else if ((htim->State == HAL_TIM_STATE_READY))
//  405   {
//  406     if (((uint32_t)pData == 0U) && (Length > 0U))
//  407     {
//  408       return HAL_ERROR;
//  409     }
//  410     else
//  411     {
//  412       htim->State = HAL_TIM_STATE_BUSY;
//  413     }
//  414   }
//  415   else
//  416   {
//  417     /* nothing to do */
//  418   }
//  419   /* Enable the Input Capture channel 1
//  420     (in the Hall Sensor Interface the three possible channels that can be used are TIM_CHANNEL_1, TIM_CHANNEL_2 and TIM_CHANNEL_3) */
//  421   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_ENABLE);
//  422 
//  423   /* Set the DMA Input Capture 1 Callbacks */
//  424   htim->hdma[TIM_DMA_ID_CC1]->XferCpltCallback = TIM_DMACaptureCplt;
//  425   htim->hdma[TIM_DMA_ID_CC1]->XferHalfCpltCallback = TIM_DMACaptureHalfCplt;
//  426   /* Set the DMA error callback */
//  427   htim->hdma[TIM_DMA_ID_CC1]->XferErrorCallback = TIM_DMAError ;
//  428 
//  429   /* Enable the DMA stream for Capture 1*/
//  430   if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC1], (uint32_t)&htim->Instance->CCR1, (uint32_t)pData, Length) != HAL_OK)
//  431   {
//  432     return HAL_ERROR;
//  433   }
//  434   /* Enable the capture compare 1 Interrupt */
//  435   __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC1);
//  436 
//  437   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
//  438   tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
//  439   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
//  440   {
//  441     __HAL_TIM_ENABLE(htim);
//  442   }
//  443 
//  444   /* Return function status */
//  445   return HAL_OK;
//  446 }
//  447 
//  448 /**
//  449   * @brief  Stops the TIM Hall Sensor Interface in DMA mode.
//  450   * @param  htim TIM Hall Sensor Interface handle
//  451   * @retval HAL status
//  452   */
//  453 HAL_StatusTypeDef HAL_TIMEx_HallSensor_Stop_DMA(TIM_HandleTypeDef *htim)
//  454 {
//  455   /* Check the parameters */
//  456   assert_param(IS_TIM_HALL_SENSOR_INTERFACE_INSTANCE(htim->Instance));
//  457 
//  458   /* Disable the Input Capture channel 1
//  459     (in the Hall Sensor Interface the three possible channels that can be used are TIM_CHANNEL_1, TIM_CHANNEL_2 and TIM_CHANNEL_3) */
//  460   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_DISABLE);
//  461 
//  462 
//  463   /* Disable the capture compare Interrupts 1 event */
//  464   __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC1);
//  465 
//  466   (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC1]);
//  467   /* Disable the Peripheral */
//  468   __HAL_TIM_DISABLE(htim);
//  469 
//  470   /* Return function status */
//  471   return HAL_OK;
//  472 }
//  473 
//  474 /**
//  475   * @}
//  476   */
//  477 
//  478 /** @defgroup TIMEx_Exported_Functions_Group2 Extended Timer Complementary Output Compare functions
//  479   *  @brief   Timer Complementary Output Compare functions
//  480   *
//  481 @verbatim
//  482   ==============================================================================
//  483               ##### Timer Complementary Output Compare functions #####
//  484   ==============================================================================
//  485   [..]
//  486     This section provides functions allowing to:
//  487     (+) Start the Complementary Output Compare/PWM.
//  488     (+) Stop the Complementary Output Compare/PWM.
//  489     (+) Start the Complementary Output Compare/PWM and enable interrupts.
//  490     (+) Stop the Complementary Output Compare/PWM and disable interrupts.
//  491     (+) Start the Complementary Output Compare/PWM and enable DMA transfers.
//  492     (+) Stop the Complementary Output Compare/PWM and disable DMA transfers.
//  493 
//  494 @endverbatim
//  495   * @{
//  496   */
//  497 
//  498 /**
//  499   * @brief  Starts the TIM Output Compare signal generation on the complementary
//  500   *         output.
//  501   * @param  htim TIM Output Compare handle
//  502   * @param  Channel TIM Channel to be enabled
//  503   *          This parameter can be one of the following values:
//  504   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
//  505   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
//  506   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
//  507   * @retval HAL status
//  508   */
//  509 HAL_StatusTypeDef HAL_TIMEx_OCN_Start(TIM_HandleTypeDef *htim, uint32_t Channel)
//  510 {
//  511   uint32_t tmpsmcr;
//  512 
//  513   /* Check the parameters */
//  514   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
//  515 
//  516   /* Enable the Capture compare channel N */
//  517   TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_ENABLE);
//  518 
//  519   /* Enable the Main Output */
//  520   __HAL_TIM_MOE_ENABLE(htim);
//  521 
//  522   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
//  523   tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
//  524   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
//  525   {
//  526     __HAL_TIM_ENABLE(htim);
//  527   }
//  528 
//  529   /* Return function status */
//  530   return HAL_OK;
//  531 }
//  532 
//  533 /**
//  534   * @brief  Stops the TIM Output Compare signal generation on the complementary
//  535   *         output.
//  536   * @param  htim TIM handle
//  537   * @param  Channel TIM Channel to be disabled
//  538   *          This parameter can be one of the following values:
//  539   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
//  540   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
//  541   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
//  542   * @retval HAL status
//  543   */
//  544 HAL_StatusTypeDef HAL_TIMEx_OCN_Stop(TIM_HandleTypeDef *htim, uint32_t Channel)
//  545 {
//  546   /* Check the parameters */
//  547   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
//  548 
//  549   /* Disable the Capture compare channel N */
//  550   TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_DISABLE);
//  551 
//  552   /* Disable the Main Output */
//  553   __HAL_TIM_MOE_DISABLE(htim);
//  554 
//  555   /* Disable the Peripheral */
//  556   __HAL_TIM_DISABLE(htim);
//  557 
//  558   /* Return function status */
//  559   return HAL_OK;
//  560 }
//  561 
//  562 /**
//  563   * @brief  Starts the TIM Output Compare signal generation in interrupt mode
//  564   *         on the complementary output.
//  565   * @param  htim TIM OC handle
//  566   * @param  Channel TIM Channel to be enabled
//  567   *          This parameter can be one of the following values:
//  568   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
//  569   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
//  570   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
//  571   * @retval HAL status
//  572   */
//  573 HAL_StatusTypeDef HAL_TIMEx_OCN_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
//  574 {
//  575   uint32_t tmpsmcr;
//  576 
//  577   /* Check the parameters */
//  578   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
//  579 
//  580   switch (Channel)
//  581   {
//  582     case TIM_CHANNEL_1:
//  583     {
//  584       /* Enable the TIM Output Compare interrupt */
//  585       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC1);
//  586       break;
//  587     }
//  588 
//  589     case TIM_CHANNEL_2:
//  590     {
//  591       /* Enable the TIM Output Compare interrupt */
//  592       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC2);
//  593       break;
//  594     }
//  595 
//  596     case TIM_CHANNEL_3:
//  597     {
//  598       /* Enable the TIM Output Compare interrupt */
//  599       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC3);
//  600       break;
//  601     }
//  602 
//  603 
//  604     default:
//  605       break;
//  606   }
//  607 
//  608   /* Enable the TIM Break interrupt */
//  609   __HAL_TIM_ENABLE_IT(htim, TIM_IT_BREAK);
//  610 
//  611   /* Enable the Capture compare channel N */
//  612   TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_ENABLE);
//  613 
//  614   /* Enable the Main Output */
//  615   __HAL_TIM_MOE_ENABLE(htim);
//  616 
//  617   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
//  618   tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
//  619   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
//  620   {
//  621     __HAL_TIM_ENABLE(htim);
//  622   }
//  623 
//  624   /* Return function status */
//  625   return HAL_OK;
//  626 }
//  627 
//  628 /**
//  629   * @brief  Stops the TIM Output Compare signal generation in interrupt mode
//  630   *         on the complementary output.
//  631   * @param  htim TIM Output Compare handle
//  632   * @param  Channel TIM Channel to be disabled
//  633   *          This parameter can be one of the following values:
//  634   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
//  635   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
//  636   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
//  637   * @retval HAL status
//  638   */
//  639 HAL_StatusTypeDef HAL_TIMEx_OCN_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
//  640 {
//  641   uint32_t tmpccer;
//  642   /* Check the parameters */
//  643   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
//  644 
//  645   switch (Channel)
//  646   {
//  647     case TIM_CHANNEL_1:
//  648     {
//  649       /* Disable the TIM Output Compare interrupt */
//  650       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC1);
//  651       break;
//  652     }
//  653 
//  654     case TIM_CHANNEL_2:
//  655     {
//  656       /* Disable the TIM Output Compare interrupt */
//  657       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC2);
//  658       break;
//  659     }
//  660 
//  661     case TIM_CHANNEL_3:
//  662     {
//  663       /* Disable the TIM Output Compare interrupt */
//  664       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC3);
//  665       break;
//  666     }
//  667 
//  668     default:
//  669       break;
//  670   }
//  671 
//  672   /* Disable the Capture compare channel N */
//  673   TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_DISABLE);
//  674 
//  675   /* Disable the TIM Break interrupt (only if no more channel is active) */
//  676   tmpccer = htim->Instance->CCER;
//  677   if ((tmpccer & (TIM_CCER_CC1NE | TIM_CCER_CC2NE | TIM_CCER_CC3NE)) == (uint32_t)RESET)
//  678   {
//  679     __HAL_TIM_DISABLE_IT(htim, TIM_IT_BREAK);
//  680   }
//  681 
//  682   /* Disable the Main Output */
//  683   __HAL_TIM_MOE_DISABLE(htim);
//  684 
//  685   /* Disable the Peripheral */
//  686   __HAL_TIM_DISABLE(htim);
//  687 
//  688   /* Return function status */
//  689   return HAL_OK;
//  690 }
//  691 
//  692 /**
//  693   * @brief  Starts the TIM Output Compare signal generation in DMA mode
//  694   *         on the complementary output.
//  695   * @param  htim TIM Output Compare handle
//  696   * @param  Channel TIM Channel to be enabled
//  697   *          This parameter can be one of the following values:
//  698   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
//  699   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
//  700   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
//  701   * @param  pData The source Buffer address.
//  702   * @param  Length The length of data to be transferred from memory to TIM peripheral
//  703   * @retval HAL status
//  704   */
//  705 HAL_StatusTypeDef HAL_TIMEx_OCN_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pData, uint16_t Length)
//  706 {
//  707   uint32_t tmpsmcr;
//  708 
//  709   /* Check the parameters */
//  710   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
//  711 
//  712   if ((htim->State == HAL_TIM_STATE_BUSY))
//  713   {
//  714     return HAL_BUSY;
//  715   }
//  716   else if ((htim->State == HAL_TIM_STATE_READY))
//  717   {
//  718     if (((uint32_t)pData == 0U) && (Length > 0U))
//  719     {
//  720       return HAL_ERROR;
//  721     }
//  722     else
//  723     {
//  724       htim->State = HAL_TIM_STATE_BUSY;
//  725     }
//  726   }
//  727   else
//  728   {
//  729     /* nothing to do  */
//  730   }
//  731 
//  732   switch (Channel)
//  733   {
//  734     case TIM_CHANNEL_1:
//  735     {
//  736       /* Set the DMA compare callbacks */
//  737       htim->hdma[TIM_DMA_ID_CC1]->XferCpltCallback = TIM_DMADelayPulseCplt;
//  738       htim->hdma[TIM_DMA_ID_CC1]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
//  739 
//  740       /* Set the DMA error callback */
//  741       htim->hdma[TIM_DMA_ID_CC1]->XferErrorCallback = TIM_DMAError ;
//  742 
//  743       /* Enable the DMA stream */
//  744       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC1], (uint32_t)pData, (uint32_t)&htim->Instance->CCR1, Length) != HAL_OK)
//  745       {
//  746         return HAL_ERROR;
//  747       }
//  748       /* Enable the TIM Output Compare DMA request */
//  749       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC1);
//  750       break;
//  751     }
//  752 
//  753     case TIM_CHANNEL_2:
//  754     {
//  755       /* Set the DMA compare callbacks */
//  756       htim->hdma[TIM_DMA_ID_CC2]->XferCpltCallback = TIM_DMADelayPulseCplt;
//  757       htim->hdma[TIM_DMA_ID_CC2]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
//  758 
//  759       /* Set the DMA error callback */
//  760       htim->hdma[TIM_DMA_ID_CC2]->XferErrorCallback = TIM_DMAError ;
//  761 
//  762       /* Enable the DMA stream */
//  763       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC2], (uint32_t)pData, (uint32_t)&htim->Instance->CCR2, Length) != HAL_OK)
//  764       {
//  765         return HAL_ERROR;
//  766       }
//  767       /* Enable the TIM Output Compare DMA request */
//  768       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC2);
//  769       break;
//  770     }
//  771 
//  772     case TIM_CHANNEL_3:
//  773     {
//  774       /* Set the DMA compare callbacks */
//  775       htim->hdma[TIM_DMA_ID_CC3]->XferCpltCallback = TIM_DMADelayPulseCplt;
//  776       htim->hdma[TIM_DMA_ID_CC3]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
//  777 
//  778       /* Set the DMA error callback */
//  779       htim->hdma[TIM_DMA_ID_CC3]->XferErrorCallback = TIM_DMAError ;
//  780 
//  781       /* Enable the DMA stream */
//  782       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC3], (uint32_t)pData, (uint32_t)&htim->Instance->CCR3, Length) != HAL_OK)
//  783       {
//  784         return HAL_ERROR;
//  785       }
//  786       /* Enable the TIM Output Compare DMA request */
//  787       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC3);
//  788       break;
//  789     }
//  790 
//  791     default:
//  792       break;
//  793   }
//  794 
//  795   /* Enable the Capture compare channel N */
//  796   TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_ENABLE);
//  797 
//  798   /* Enable the Main Output */
//  799   __HAL_TIM_MOE_ENABLE(htim);
//  800 
//  801   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
//  802   tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
//  803   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
//  804   {
//  805     __HAL_TIM_ENABLE(htim);
//  806   }
//  807 
//  808   /* Return function status */
//  809   return HAL_OK;
//  810 }
//  811 
//  812 /**
//  813   * @brief  Stops the TIM Output Compare signal generation in DMA mode
//  814   *         on the complementary output.
//  815   * @param  htim TIM Output Compare handle
//  816   * @param  Channel TIM Channel to be disabled
//  817   *          This parameter can be one of the following values:
//  818   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
//  819   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
//  820   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
//  821   * @retval HAL status
//  822   */
//  823 HAL_StatusTypeDef HAL_TIMEx_OCN_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel)
//  824 {
//  825   /* Check the parameters */
//  826   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
//  827 
//  828   switch (Channel)
//  829   {
//  830     case TIM_CHANNEL_1:
//  831     {
//  832       /* Disable the TIM Output Compare DMA request */
//  833       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC1);
//  834       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC1]);
//  835       break;
//  836     }
//  837 
//  838     case TIM_CHANNEL_2:
//  839     {
//  840       /* Disable the TIM Output Compare DMA request */
//  841       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC2);
//  842       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC2]);
//  843       break;
//  844     }
//  845 
//  846     case TIM_CHANNEL_3:
//  847     {
//  848       /* Disable the TIM Output Compare DMA request */
//  849       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC3);
//  850       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC3]);
//  851       break;
//  852     }
//  853 
//  854     default:
//  855       break;
//  856   }
//  857 
//  858   /* Disable the Capture compare channel N */
//  859   TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_DISABLE);
//  860 
//  861   /* Disable the Main Output */
//  862   __HAL_TIM_MOE_DISABLE(htim);
//  863 
//  864   /* Disable the Peripheral */
//  865   __HAL_TIM_DISABLE(htim);
//  866 
//  867   /* Change the htim state */
//  868   htim->State = HAL_TIM_STATE_READY;
//  869 
//  870   /* Return function status */
//  871   return HAL_OK;
//  872 }
//  873 
//  874 /**
//  875   * @}
//  876   */
//  877 
//  878 /** @defgroup TIMEx_Exported_Functions_Group3 Extended Timer Complementary PWM functions
//  879   * @brief    Timer Complementary PWM functions
//  880   *
//  881 @verbatim
//  882   ==============================================================================
//  883                  ##### Timer Complementary PWM functions #####
//  884   ==============================================================================
//  885   [..]
//  886     This section provides functions allowing to:
//  887     (+) Start the Complementary PWM.
//  888     (+) Stop the Complementary PWM.
//  889     (+) Start the Complementary PWM and enable interrupts.
//  890     (+) Stop the Complementary PWM and disable interrupts.
//  891     (+) Start the Complementary PWM and enable DMA transfers.
//  892     (+) Stop the Complementary PWM and disable DMA transfers.
//  893     (+) Start the Complementary Input Capture measurement.
//  894     (+) Stop the Complementary Input Capture.
//  895     (+) Start the Complementary Input Capture and enable interrupts.
//  896     (+) Stop the Complementary Input Capture and disable interrupts.
//  897     (+) Start the Complementary Input Capture and enable DMA transfers.
//  898     (+) Stop the Complementary Input Capture and disable DMA transfers.
//  899     (+) Start the Complementary One Pulse generation.
//  900     (+) Stop the Complementary One Pulse.
//  901     (+) Start the Complementary One Pulse and enable interrupts.
//  902     (+) Stop the Complementary One Pulse and disable interrupts.
//  903 
//  904 @endverbatim
//  905   * @{
//  906   */
//  907 
//  908 /**
//  909   * @brief  Starts the PWM signal generation on the complementary output.
//  910   * @param  htim TIM handle
//  911   * @param  Channel TIM Channel to be enabled
//  912   *          This parameter can be one of the following values:
//  913   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
//  914   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
//  915   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
//  916   * @retval HAL status
//  917   */
//  918 HAL_StatusTypeDef HAL_TIMEx_PWMN_Start(TIM_HandleTypeDef *htim, uint32_t Channel)
//  919 {
//  920   uint32_t tmpsmcr;
//  921 
//  922   /* Check the parameters */
//  923   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
//  924 
//  925   /* Enable the complementary PWM output  */
//  926   TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_ENABLE);
//  927 
//  928   /* Enable the Main Output */
//  929   __HAL_TIM_MOE_ENABLE(htim);
//  930 
//  931   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
//  932   tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
//  933   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
//  934   {
//  935     __HAL_TIM_ENABLE(htim);
//  936   }
//  937 
//  938   /* Return function status */
//  939   return HAL_OK;
//  940 }
//  941 
//  942 /**
//  943   * @brief  Stops the PWM signal generation on the complementary output.
//  944   * @param  htim TIM handle
//  945   * @param  Channel TIM Channel to be disabled
//  946   *          This parameter can be one of the following values:
//  947   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
//  948   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
//  949   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
//  950   * @retval HAL status
//  951   */
//  952 HAL_StatusTypeDef HAL_TIMEx_PWMN_Stop(TIM_HandleTypeDef *htim, uint32_t Channel)
//  953 {
//  954   /* Check the parameters */
//  955   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
//  956 
//  957   /* Disable the complementary PWM output  */
//  958   TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_DISABLE);
//  959 
//  960   /* Disable the Main Output */
//  961   __HAL_TIM_MOE_DISABLE(htim);
//  962 
//  963   /* Disable the Peripheral */
//  964   __HAL_TIM_DISABLE(htim);
//  965 
//  966   /* Return function status */
//  967   return HAL_OK;
//  968 }
//  969 
//  970 /**
//  971   * @brief  Starts the PWM signal generation in interrupt mode on the
//  972   *         complementary output.
//  973   * @param  htim TIM handle
//  974   * @param  Channel TIM Channel to be disabled
//  975   *          This parameter can be one of the following values:
//  976   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
//  977   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
//  978   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
//  979   * @retval HAL status
//  980   */
//  981 HAL_StatusTypeDef HAL_TIMEx_PWMN_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
//  982 {
//  983   uint32_t tmpsmcr;
//  984 
//  985   /* Check the parameters */
//  986   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
//  987 
//  988   switch (Channel)
//  989   {
//  990     case TIM_CHANNEL_1:
//  991     {
//  992       /* Enable the TIM Capture/Compare 1 interrupt */
//  993       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC1);
//  994       break;
//  995     }
//  996 
//  997     case TIM_CHANNEL_2:
//  998     {
//  999       /* Enable the TIM Capture/Compare 2 interrupt */
// 1000       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC2);
// 1001       break;
// 1002     }
// 1003 
// 1004     case TIM_CHANNEL_3:
// 1005     {
// 1006       /* Enable the TIM Capture/Compare 3 interrupt */
// 1007       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC3);
// 1008       break;
// 1009     }
// 1010 
// 1011     default:
// 1012       break;
// 1013   }
// 1014 
// 1015   /* Enable the TIM Break interrupt */
// 1016   __HAL_TIM_ENABLE_IT(htim, TIM_IT_BREAK);
// 1017 
// 1018   /* Enable the complementary PWM output  */
// 1019   TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_ENABLE);
// 1020 
// 1021   /* Enable the Main Output */
// 1022   __HAL_TIM_MOE_ENABLE(htim);
// 1023 
// 1024   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
// 1025   tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
// 1026   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
// 1027   {
// 1028     __HAL_TIM_ENABLE(htim);
// 1029   }
// 1030 
// 1031   /* Return function status */
// 1032   return HAL_OK;
// 1033 }
// 1034 
// 1035 /**
// 1036   * @brief  Stops the PWM signal generation in interrupt mode on the
// 1037   *         complementary output.
// 1038   * @param  htim TIM handle
// 1039   * @param  Channel TIM Channel to be disabled
// 1040   *          This parameter can be one of the following values:
// 1041   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1042   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1043   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1044   * @retval HAL status
// 1045   */
// 1046 HAL_StatusTypeDef HAL_TIMEx_PWMN_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
// 1047 {
// 1048   uint32_t tmpccer;
// 1049 
// 1050   /* Check the parameters */
// 1051   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
// 1052 
// 1053   switch (Channel)
// 1054   {
// 1055     case TIM_CHANNEL_1:
// 1056     {
// 1057       /* Disable the TIM Capture/Compare 1 interrupt */
// 1058       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC1);
// 1059       break;
// 1060     }
// 1061 
// 1062     case TIM_CHANNEL_2:
// 1063     {
// 1064       /* Disable the TIM Capture/Compare 2 interrupt */
// 1065       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC2);
// 1066       break;
// 1067     }
// 1068 
// 1069     case TIM_CHANNEL_3:
// 1070     {
// 1071       /* Disable the TIM Capture/Compare 3 interrupt */
// 1072       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC3);
// 1073       break;
// 1074     }
// 1075 
// 1076     default:
// 1077       break;
// 1078   }
// 1079 
// 1080   /* Disable the complementary PWM output  */
// 1081   TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_DISABLE);
// 1082 
// 1083   /* Disable the TIM Break interrupt (only if no more channel is active) */
// 1084   tmpccer = htim->Instance->CCER;
// 1085   if ((tmpccer & (TIM_CCER_CC1NE | TIM_CCER_CC2NE | TIM_CCER_CC3NE)) == (uint32_t)RESET)
// 1086   {
// 1087     __HAL_TIM_DISABLE_IT(htim, TIM_IT_BREAK);
// 1088   }
// 1089 
// 1090   /* Disable the Main Output */
// 1091   __HAL_TIM_MOE_DISABLE(htim);
// 1092 
// 1093   /* Disable the Peripheral */
// 1094   __HAL_TIM_DISABLE(htim);
// 1095 
// 1096   /* Return function status */
// 1097   return HAL_OK;
// 1098 }
// 1099 
// 1100 /**
// 1101   * @brief  Starts the TIM PWM signal generation in DMA mode on the
// 1102   *         complementary output
// 1103   * @param  htim TIM handle
// 1104   * @param  Channel TIM Channel to be enabled
// 1105   *          This parameter can be one of the following values:
// 1106   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1107   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1108   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1109   * @param  pData The source Buffer address.
// 1110   * @param  Length The length of data to be transferred from memory to TIM peripheral
// 1111   * @retval HAL status
// 1112   */
// 1113 HAL_StatusTypeDef HAL_TIMEx_PWMN_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pData, uint16_t Length)
// 1114 {
// 1115   uint32_t tmpsmcr;
// 1116 
// 1117   /* Check the parameters */
// 1118   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
// 1119 
// 1120   if ((htim->State == HAL_TIM_STATE_BUSY))
// 1121   {
// 1122     return HAL_BUSY;
// 1123   }
// 1124   else if ((htim->State == HAL_TIM_STATE_READY))
// 1125   {
// 1126     if (((uint32_t)pData == 0U) && (Length > 0U))
// 1127     {
// 1128       return HAL_ERROR;
// 1129     }
// 1130     else
// 1131     {
// 1132       htim->State = HAL_TIM_STATE_BUSY;
// 1133     }
// 1134   }
// 1135   else
// 1136   {
// 1137     /* nothing to do */
// 1138   }
// 1139   switch (Channel)
// 1140   {
// 1141     case TIM_CHANNEL_1:
// 1142     {
// 1143       /* Set the DMA compare callbacks */
// 1144       htim->hdma[TIM_DMA_ID_CC1]->XferCpltCallback = TIM_DMADelayPulseCplt;
// 1145       htim->hdma[TIM_DMA_ID_CC1]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
// 1146 
// 1147       /* Set the DMA error callback */
// 1148       htim->hdma[TIM_DMA_ID_CC1]->XferErrorCallback = TIM_DMAError ;
// 1149 
// 1150       /* Enable the DMA stream */
// 1151       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC1], (uint32_t)pData, (uint32_t)&htim->Instance->CCR1, Length) != HAL_OK)
// 1152       {
// 1153         return HAL_ERROR;
// 1154       }
// 1155       /* Enable the TIM Capture/Compare 1 DMA request */
// 1156       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC1);
// 1157       break;
// 1158     }
// 1159 
// 1160     case TIM_CHANNEL_2:
// 1161     {
// 1162       /* Set the DMA compare callbacks */
// 1163       htim->hdma[TIM_DMA_ID_CC2]->XferCpltCallback = TIM_DMADelayPulseCplt;
// 1164       htim->hdma[TIM_DMA_ID_CC2]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
// 1165 
// 1166       /* Set the DMA error callback */
// 1167       htim->hdma[TIM_DMA_ID_CC2]->XferErrorCallback = TIM_DMAError ;
// 1168 
// 1169       /* Enable the DMA stream */
// 1170       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC2], (uint32_t)pData, (uint32_t)&htim->Instance->CCR2, Length) != HAL_OK)
// 1171       {
// 1172         return HAL_ERROR;
// 1173       }
// 1174       /* Enable the TIM Capture/Compare 2 DMA request */
// 1175       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC2);
// 1176       break;
// 1177     }
// 1178 
// 1179     case TIM_CHANNEL_3:
// 1180     {
// 1181       /* Set the DMA compare callbacks */
// 1182       htim->hdma[TIM_DMA_ID_CC3]->XferCpltCallback = TIM_DMADelayPulseCplt;
// 1183       htim->hdma[TIM_DMA_ID_CC3]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
// 1184 
// 1185       /* Set the DMA error callback */
// 1186       htim->hdma[TIM_DMA_ID_CC3]->XferErrorCallback = TIM_DMAError ;
// 1187 
// 1188       /* Enable the DMA stream */
// 1189       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC3], (uint32_t)pData, (uint32_t)&htim->Instance->CCR3, Length) != HAL_OK)
// 1190       {
// 1191         return HAL_ERROR;
// 1192       }
// 1193       /* Enable the TIM Capture/Compare 3 DMA request */
// 1194       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC3);
// 1195       break;
// 1196     }
// 1197 
// 1198     default:
// 1199       break;
// 1200   }
// 1201 
// 1202   /* Enable the complementary PWM output  */
// 1203   TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_ENABLE);
// 1204 
// 1205   /* Enable the Main Output */
// 1206   __HAL_TIM_MOE_ENABLE(htim);
// 1207 
// 1208   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
// 1209   tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
// 1210   if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
// 1211   {
// 1212     __HAL_TIM_ENABLE(htim);
// 1213   }
// 1214 
// 1215   /* Return function status */
// 1216   return HAL_OK;
// 1217 }
// 1218 
// 1219 /**
// 1220   * @brief  Stops the TIM PWM signal generation in DMA mode on the complementary
// 1221   *         output
// 1222   * @param  htim TIM handle
// 1223   * @param  Channel TIM Channel to be disabled
// 1224   *          This parameter can be one of the following values:
// 1225   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1226   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1227   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1228   * @retval HAL status
// 1229   */
// 1230 HAL_StatusTypeDef HAL_TIMEx_PWMN_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel)
// 1231 {
// 1232   /* Check the parameters */
// 1233   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
// 1234 
// 1235   switch (Channel)
// 1236   {
// 1237     case TIM_CHANNEL_1:
// 1238     {
// 1239       /* Disable the TIM Capture/Compare 1 DMA request */
// 1240       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC1);
// 1241       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC1]);
// 1242       break;
// 1243     }
// 1244 
// 1245     case TIM_CHANNEL_2:
// 1246     {
// 1247       /* Disable the TIM Capture/Compare 2 DMA request */
// 1248       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC2);
// 1249       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC2]);
// 1250       break;
// 1251     }
// 1252 
// 1253     case TIM_CHANNEL_3:
// 1254     {
// 1255       /* Disable the TIM Capture/Compare 3 DMA request */
// 1256       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC3);
// 1257       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC3]);
// 1258       break;
// 1259     }
// 1260 
// 1261     default:
// 1262       break;
// 1263   }
// 1264 
// 1265   /* Disable the complementary PWM output */
// 1266   TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_DISABLE);
// 1267 
// 1268   /* Disable the Main Output */
// 1269   __HAL_TIM_MOE_DISABLE(htim);
// 1270 
// 1271   /* Disable the Peripheral */
// 1272   __HAL_TIM_DISABLE(htim);
// 1273 
// 1274   /* Change the htim state */
// 1275   htim->State = HAL_TIM_STATE_READY;
// 1276 
// 1277   /* Return function status */
// 1278   return HAL_OK;
// 1279 }
// 1280 
// 1281 /**
// 1282   * @}
// 1283   */
// 1284 
// 1285 /** @defgroup TIMEx_Exported_Functions_Group4 Extended Timer Complementary One Pulse functions
// 1286   * @brief    Timer Complementary One Pulse functions
// 1287   *
// 1288 @verbatim
// 1289   ==============================================================================
// 1290                 ##### Timer Complementary One Pulse functions #####
// 1291   ==============================================================================
// 1292   [..]
// 1293     This section provides functions allowing to:
// 1294     (+) Start the Complementary One Pulse generation.
// 1295     (+) Stop the Complementary One Pulse.
// 1296     (+) Start the Complementary One Pulse and enable interrupts.
// 1297     (+) Stop the Complementary One Pulse and disable interrupts.
// 1298 
// 1299 @endverbatim
// 1300   * @{
// 1301   */
// 1302 
// 1303 /**
// 1304   * @brief  Starts the TIM One Pulse signal generation on the complementary
// 1305   *         output.
// 1306   * @param  htim TIM One Pulse handle
// 1307   * @param  OutputChannel TIM Channel to be enabled
// 1308   *          This parameter can be one of the following values:
// 1309   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1310   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1311   * @retval HAL status
// 1312   */
// 1313 HAL_StatusTypeDef HAL_TIMEx_OnePulseN_Start(TIM_HandleTypeDef *htim, uint32_t OutputChannel)
// 1314 {
// 1315   /* Check the parameters */
// 1316   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, OutputChannel));
// 1317 
// 1318   /* Enable the complementary One Pulse output */
// 1319   TIM_CCxNChannelCmd(htim->Instance, OutputChannel, TIM_CCxN_ENABLE);
// 1320 
// 1321   /* Enable the Main Output */
// 1322   __HAL_TIM_MOE_ENABLE(htim);
// 1323 
// 1324   /* Return function status */
// 1325   return HAL_OK;
// 1326 }
// 1327 
// 1328 /**
// 1329   * @brief  Stops the TIM One Pulse signal generation on the complementary
// 1330   *         output.
// 1331   * @param  htim TIM One Pulse handle
// 1332   * @param  OutputChannel TIM Channel to be disabled
// 1333   *          This parameter can be one of the following values:
// 1334   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1335   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1336   * @retval HAL status
// 1337   */
// 1338 HAL_StatusTypeDef HAL_TIMEx_OnePulseN_Stop(TIM_HandleTypeDef *htim, uint32_t OutputChannel)
// 1339 {
// 1340 
// 1341   /* Check the parameters */
// 1342   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, OutputChannel));
// 1343 
// 1344   /* Disable the complementary One Pulse output */
// 1345   TIM_CCxNChannelCmd(htim->Instance, OutputChannel, TIM_CCxN_DISABLE);
// 1346 
// 1347   /* Disable the Main Output */
// 1348   __HAL_TIM_MOE_DISABLE(htim);
// 1349 
// 1350   /* Disable the Peripheral */
// 1351   __HAL_TIM_DISABLE(htim);
// 1352 
// 1353   /* Return function status */
// 1354   return HAL_OK;
// 1355 }
// 1356 
// 1357 /**
// 1358   * @brief  Starts the TIM One Pulse signal generation in interrupt mode on the
// 1359   *         complementary channel.
// 1360   * @param  htim TIM One Pulse handle
// 1361   * @param  OutputChannel TIM Channel to be enabled
// 1362   *          This parameter can be one of the following values:
// 1363   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1364   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1365   * @retval HAL status
// 1366   */
// 1367 HAL_StatusTypeDef HAL_TIMEx_OnePulseN_Start_IT(TIM_HandleTypeDef *htim, uint32_t OutputChannel)
// 1368 {
// 1369   /* Check the parameters */
// 1370   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, OutputChannel));
// 1371 
// 1372   /* Enable the TIM Capture/Compare 1 interrupt */
// 1373   __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC1);
// 1374 
// 1375   /* Enable the TIM Capture/Compare 2 interrupt */
// 1376   __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC2);
// 1377 
// 1378   /* Enable the complementary One Pulse output */
// 1379   TIM_CCxNChannelCmd(htim->Instance, OutputChannel, TIM_CCxN_ENABLE);
// 1380 
// 1381   /* Enable the Main Output */
// 1382   __HAL_TIM_MOE_ENABLE(htim);
// 1383 
// 1384   /* Return function status */
// 1385   return HAL_OK;
// 1386 }
// 1387 
// 1388 /**
// 1389   * @brief  Stops the TIM One Pulse signal generation in interrupt mode on the
// 1390   *         complementary channel.
// 1391   * @param  htim TIM One Pulse handle
// 1392   * @param  OutputChannel TIM Channel to be disabled
// 1393   *          This parameter can be one of the following values:
// 1394   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1395   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1396   * @retval HAL status
// 1397   */
// 1398 HAL_StatusTypeDef HAL_TIMEx_OnePulseN_Stop_IT(TIM_HandleTypeDef *htim, uint32_t OutputChannel)
// 1399 {
// 1400   /* Check the parameters */
// 1401   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, OutputChannel));
// 1402 
// 1403   /* Disable the TIM Capture/Compare 1 interrupt */
// 1404   __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC1);
// 1405 
// 1406   /* Disable the TIM Capture/Compare 2 interrupt */
// 1407   __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC2);
// 1408 
// 1409   /* Disable the complementary One Pulse output */
// 1410   TIM_CCxNChannelCmd(htim->Instance, OutputChannel, TIM_CCxN_DISABLE);
// 1411 
// 1412   /* Disable the Main Output */
// 1413   __HAL_TIM_MOE_DISABLE(htim);
// 1414 
// 1415   /* Disable the Peripheral */
// 1416   __HAL_TIM_DISABLE(htim);
// 1417 
// 1418   /* Return function status */
// 1419   return HAL_OK;
// 1420 }
// 1421 
// 1422 /**
// 1423   * @}
// 1424   */
// 1425 
// 1426 /** @defgroup TIMEx_Exported_Functions_Group5 Extended Peripheral Control functions
// 1427   * @brief    Peripheral Control functions
// 1428   *
// 1429 @verbatim
// 1430   ==============================================================================
// 1431                     ##### Peripheral Control functions #####
// 1432   ==============================================================================
// 1433   [..]
// 1434     This section provides functions allowing to:
// 1435       (+) Configure the commutation event in case of use of the Hall sensor interface.
// 1436       (+) Configure Output channels for OC and PWM mode.
// 1437 
// 1438       (+) Configure Complementary channels, break features and dead time.
// 1439       (+) Configure Master synchronization.
// 1440       (+) Configure timer remapping capabilities.
// 1441       (+) Enable or disable channel grouping.
// 1442 
// 1443 @endverbatim
// 1444   * @{
// 1445   */
// 1446 
// 1447 /**
// 1448   * @brief  Configure the TIM commutation event sequence.
// 1449   * @note  This function is mandatory to use the commutation event in order to
// 1450   *        update the configuration at each commutation detection on the TRGI input of the Timer,
// 1451   *        the typical use of this feature is with the use of another Timer(interface Timer)
// 1452   *        configured in Hall sensor interface, this interface Timer will generate the
// 1453   *        commutation at its TRGO output (connected to Timer used in this function) each time
// 1454   *        the TI1 of the Interface Timer detect a commutation at its input TI1.
// 1455   * @param  htim TIM handle
// 1456   * @param  InputTrigger the Internal trigger corresponding to the Timer Interfacing with the Hall sensor
// 1457   *          This parameter can be one of the following values:
// 1458   *            @arg TIM_TS_ITR0: Internal trigger 0 selected
// 1459   *            @arg TIM_TS_ITR1: Internal trigger 1 selected
// 1460   *            @arg TIM_TS_ITR2: Internal trigger 2 selected
// 1461   *            @arg TIM_TS_ITR3: Internal trigger 3 selected
// 1462   *            @arg TIM_TS_NONE: No trigger is needed
// 1463   * @param  CommutationSource the Commutation Event source
// 1464   *          This parameter can be one of the following values:
// 1465   *            @arg TIM_COMMUTATION_TRGI: Commutation source is the TRGI of the Interface Timer
// 1466   *            @arg TIM_COMMUTATION_SOFTWARE:  Commutation source is set by software using the COMG bit
// 1467   * @retval HAL status
// 1468   */
// 1469 HAL_StatusTypeDef HAL_TIMEx_ConfigCommutEvent(TIM_HandleTypeDef *htim, uint32_t  InputTrigger, uint32_t  CommutationSource)
// 1470 {
// 1471   /* Check the parameters */
// 1472   assert_param(IS_TIM_COMMUTATION_EVENT_INSTANCE(htim->Instance));
// 1473   assert_param(IS_TIM_INTERNAL_TRIGGEREVENT_SELECTION(InputTrigger));
// 1474 
// 1475   __HAL_LOCK(htim);
// 1476 
// 1477   if ((InputTrigger == TIM_TS_ITR0) || (InputTrigger == TIM_TS_ITR1) ||
// 1478       (InputTrigger == TIM_TS_ITR2) || (InputTrigger == TIM_TS_ITR3))
// 1479   {
// 1480     /* Select the Input trigger */
// 1481     htim->Instance->SMCR &= ~TIM_SMCR_TS;
// 1482     htim->Instance->SMCR |= InputTrigger;
// 1483   }
// 1484 
// 1485   /* Select the Capture Compare preload feature */
// 1486   htim->Instance->CR2 |= TIM_CR2_CCPC;
// 1487   /* Select the Commutation event source */
// 1488   htim->Instance->CR2 &= ~TIM_CR2_CCUS;
// 1489   htim->Instance->CR2 |= CommutationSource;
// 1490 
// 1491   /* Disable Commutation Interrupt */
// 1492   __HAL_TIM_DISABLE_IT(htim, TIM_IT_COM);
// 1493 
// 1494   /* Disable Commutation DMA request */
// 1495   __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_COM);
// 1496 
// 1497   __HAL_UNLOCK(htim);
// 1498 
// 1499   return HAL_OK;
// 1500 }
// 1501 
// 1502 /**
// 1503   * @brief  Configure the TIM commutation event sequence with interrupt.
// 1504   * @note  This function is mandatory to use the commutation event in order to
// 1505   *        update the configuration at each commutation detection on the TRGI input of the Timer,
// 1506   *        the typical use of this feature is with the use of another Timer(interface Timer)
// 1507   *        configured in Hall sensor interface, this interface Timer will generate the
// 1508   *        commutation at its TRGO output (connected to Timer used in this function) each time
// 1509   *        the TI1 of the Interface Timer detect a commutation at its input TI1.
// 1510   * @param  htim TIM handle
// 1511   * @param  InputTrigger the Internal trigger corresponding to the Timer Interfacing with the Hall sensor
// 1512   *          This parameter can be one of the following values:
// 1513   *            @arg TIM_TS_ITR0: Internal trigger 0 selected
// 1514   *            @arg TIM_TS_ITR1: Internal trigger 1 selected
// 1515   *            @arg TIM_TS_ITR2: Internal trigger 2 selected
// 1516   *            @arg TIM_TS_ITR3: Internal trigger 3 selected
// 1517   *            @arg TIM_TS_NONE: No trigger is needed
// 1518   * @param  CommutationSource the Commutation Event source
// 1519   *          This parameter can be one of the following values:
// 1520   *            @arg TIM_COMMUTATION_TRGI: Commutation source is the TRGI of the Interface Timer
// 1521   *            @arg TIM_COMMUTATION_SOFTWARE:  Commutation source is set by software using the COMG bit
// 1522   * @retval HAL status
// 1523   */
// 1524 HAL_StatusTypeDef HAL_TIMEx_ConfigCommutEvent_IT(TIM_HandleTypeDef *htim, uint32_t  InputTrigger, uint32_t  CommutationSource)
// 1525 {
// 1526   /* Check the parameters */
// 1527   assert_param(IS_TIM_COMMUTATION_EVENT_INSTANCE(htim->Instance));
// 1528   assert_param(IS_TIM_INTERNAL_TRIGGEREVENT_SELECTION(InputTrigger));
// 1529 
// 1530   __HAL_LOCK(htim);
// 1531 
// 1532   if ((InputTrigger == TIM_TS_ITR0) || (InputTrigger == TIM_TS_ITR1) ||
// 1533       (InputTrigger == TIM_TS_ITR2) || (InputTrigger == TIM_TS_ITR3))
// 1534   {
// 1535     /* Select the Input trigger */
// 1536     htim->Instance->SMCR &= ~TIM_SMCR_TS;
// 1537     htim->Instance->SMCR |= InputTrigger;
// 1538   }
// 1539 
// 1540   /* Select the Capture Compare preload feature */
// 1541   htim->Instance->CR2 |= TIM_CR2_CCPC;
// 1542   /* Select the Commutation event source */
// 1543   htim->Instance->CR2 &= ~TIM_CR2_CCUS;
// 1544   htim->Instance->CR2 |= CommutationSource;
// 1545 
// 1546   /* Disable Commutation DMA request */
// 1547   __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_COM);
// 1548 
// 1549   /* Enable the Commutation Interrupt */
// 1550   __HAL_TIM_ENABLE_IT(htim, TIM_IT_COM);
// 1551 
// 1552   __HAL_UNLOCK(htim);
// 1553 
// 1554   return HAL_OK;
// 1555 }
// 1556 
// 1557 /**
// 1558   * @brief  Configure the TIM commutation event sequence with DMA.
// 1559   * @note  This function is mandatory to use the commutation event in order to
// 1560   *        update the configuration at each commutation detection on the TRGI input of the Timer,
// 1561   *        the typical use of this feature is with the use of another Timer(interface Timer)
// 1562   *        configured in Hall sensor interface, this interface Timer will generate the
// 1563   *        commutation at its TRGO output (connected to Timer used in this function) each time
// 1564   *        the TI1 of the Interface Timer detect a commutation at its input TI1.
// 1565   * @note  The user should configure the DMA in his own software, in This function only the COMDE bit is set
// 1566   * @param  htim TIM handle
// 1567   * @param  InputTrigger the Internal trigger corresponding to the Timer Interfacing with the Hall sensor
// 1568   *          This parameter can be one of the following values:
// 1569   *            @arg TIM_TS_ITR0: Internal trigger 0 selected
// 1570   *            @arg TIM_TS_ITR1: Internal trigger 1 selected
// 1571   *            @arg TIM_TS_ITR2: Internal trigger 2 selected
// 1572   *            @arg TIM_TS_ITR3: Internal trigger 3 selected
// 1573   *            @arg TIM_TS_NONE: No trigger is needed
// 1574   * @param  CommutationSource the Commutation Event source
// 1575   *          This parameter can be one of the following values:
// 1576   *            @arg TIM_COMMUTATION_TRGI: Commutation source is the TRGI of the Interface Timer
// 1577   *            @arg TIM_COMMUTATION_SOFTWARE:  Commutation source is set by software using the COMG bit
// 1578   * @retval HAL status
// 1579   */
// 1580 HAL_StatusTypeDef HAL_TIMEx_ConfigCommutEvent_DMA(TIM_HandleTypeDef *htim, uint32_t  InputTrigger, uint32_t  CommutationSource)
// 1581 {
// 1582   /* Check the parameters */
// 1583   assert_param(IS_TIM_COMMUTATION_EVENT_INSTANCE(htim->Instance));
// 1584   assert_param(IS_TIM_INTERNAL_TRIGGEREVENT_SELECTION(InputTrigger));
// 1585 
// 1586   __HAL_LOCK(htim);
// 1587 
// 1588   if ((InputTrigger == TIM_TS_ITR0) || (InputTrigger == TIM_TS_ITR1) ||
// 1589       (InputTrigger == TIM_TS_ITR2) || (InputTrigger == TIM_TS_ITR3))
// 1590   {
// 1591     /* Select the Input trigger */
// 1592     htim->Instance->SMCR &= ~TIM_SMCR_TS;
// 1593     htim->Instance->SMCR |= InputTrigger;
// 1594   }
// 1595 
// 1596   /* Select the Capture Compare preload feature */
// 1597   htim->Instance->CR2 |= TIM_CR2_CCPC;
// 1598   /* Select the Commutation event source */
// 1599   htim->Instance->CR2 &= ~TIM_CR2_CCUS;
// 1600   htim->Instance->CR2 |= CommutationSource;
// 1601 
// 1602   /* Enable the Commutation DMA Request */
// 1603   /* Set the DMA Commutation Callback */
// 1604   htim->hdma[TIM_DMA_ID_COMMUTATION]->XferCpltCallback = TIMEx_DMACommutationCplt;
// 1605   htim->hdma[TIM_DMA_ID_COMMUTATION]->XferHalfCpltCallback = TIMEx_DMACommutationHalfCplt;
// 1606   /* Set the DMA error callback */
// 1607   htim->hdma[TIM_DMA_ID_COMMUTATION]->XferErrorCallback = TIM_DMAError;
// 1608 
// 1609   /* Disable Commutation Interrupt */
// 1610   __HAL_TIM_DISABLE_IT(htim, TIM_IT_COM);
// 1611 
// 1612   /* Enable the Commutation DMA Request */
// 1613   __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_COM);
// 1614 
// 1615   __HAL_UNLOCK(htim);
// 1616 
// 1617   return HAL_OK;
// 1618 }
// 1619 
// 1620 /**
// 1621   * @brief  Configures the TIM in master mode.
// 1622   * @param  htim TIM handle.
// 1623   * @param  sMasterConfig pointer to a TIM_MasterConfigTypeDef structure that
// 1624   *         contains the selected trigger output (TRGO) and the Master/Slave
// 1625   *         mode.
// 1626   * @retval HAL status
// 1627   */
// 1628 HAL_StatusTypeDef HAL_TIMEx_MasterConfigSynchronization(TIM_HandleTypeDef *htim,
// 1629                                                         TIM_MasterConfigTypeDef *sMasterConfig)
// 1630 {
// 1631   uint32_t tmpcr2;
// 1632   uint32_t tmpsmcr;
// 1633 
// 1634   /* Check the parameters */
// 1635   assert_param(IS_TIM_SYNCHRO_INSTANCE(htim->Instance));
// 1636   assert_param(IS_TIM_TRGO_SOURCE(sMasterConfig->MasterOutputTrigger));
// 1637   assert_param(IS_TIM_MSM_STATE(sMasterConfig->MasterSlaveMode));
// 1638 
// 1639   /* Check input state */
// 1640   __HAL_LOCK(htim);
// 1641 
// 1642   /* Change the handler state */
// 1643   htim->State = HAL_TIM_STATE_BUSY;
// 1644 
// 1645   /* Get the TIMx CR2 register value */
// 1646   tmpcr2 = htim->Instance->CR2;
// 1647 
// 1648   /* Get the TIMx SMCR register value */
// 1649   tmpsmcr = htim->Instance->SMCR;
// 1650 
// 1651   /* If the timer supports ADC synchronization through TRGO2, set the master mode selection 2 */
// 1652   if (IS_TIM_TRGO2_INSTANCE(htim->Instance))
// 1653   {
// 1654     /* Check the parameters */
// 1655     assert_param(IS_TIM_TRGO2_SOURCE(sMasterConfig->MasterOutputTrigger2));
// 1656 
// 1657     /* Clear the MMS2 bits */
// 1658     tmpcr2 &= ~TIM_CR2_MMS2;
// 1659     /* Select the TRGO2 source*/
// 1660     tmpcr2 |= sMasterConfig->MasterOutputTrigger2;
// 1661   }
// 1662 
// 1663   /* Reset the MMS Bits */
// 1664   tmpcr2 &= ~TIM_CR2_MMS;
// 1665   /* Select the TRGO source */
// 1666   tmpcr2 |=  sMasterConfig->MasterOutputTrigger;
// 1667 
// 1668   /* Reset the MSM Bit */
// 1669   tmpsmcr &= ~TIM_SMCR_MSM;
// 1670   /* Set master mode */
// 1671   tmpsmcr |= sMasterConfig->MasterSlaveMode;
// 1672 
// 1673   /* Update TIMx CR2 */
// 1674   htim->Instance->CR2 = tmpcr2;
// 1675 
// 1676   /* Update TIMx SMCR */
// 1677   htim->Instance->SMCR = tmpsmcr;
// 1678 
// 1679   /* Change the htim state */
// 1680   htim->State = HAL_TIM_STATE_READY;
// 1681 
// 1682   __HAL_UNLOCK(htim);
// 1683 
// 1684   return HAL_OK;
// 1685 }
// 1686 
// 1687 /**
// 1688   * @brief  Configures the Break feature, dead time, Lock level, OSSI/OSSR State
// 1689   *         and the AOE(automatic output enable).
// 1690   * @param  htim TIM handle
// 1691   * @param  sBreakDeadTimeConfig pointer to a TIM_ConfigBreakDeadConfigTypeDef structure that
// 1692   *         contains the BDTR Register configuration  information for the TIM peripheral.
// 1693   * @retval HAL status
// 1694   */
// 1695 HAL_StatusTypeDef HAL_TIMEx_ConfigBreakDeadTime(TIM_HandleTypeDef *htim,
// 1696                                                 TIM_BreakDeadTimeConfigTypeDef *sBreakDeadTimeConfig)
// 1697 {
// 1698   /* Keep this variable initialized to 0 as it is used to configure BDTR register */
// 1699   uint32_t tmpbdtr = 0U;
// 1700 
// 1701   /* Check the parameters */
// 1702   assert_param(IS_TIM_BREAK_INSTANCE(htim->Instance));
// 1703   assert_param(IS_TIM_OSSR_STATE(sBreakDeadTimeConfig->OffStateRunMode));
// 1704   assert_param(IS_TIM_OSSI_STATE(sBreakDeadTimeConfig->OffStateIDLEMode));
// 1705   assert_param(IS_TIM_LOCK_LEVEL(sBreakDeadTimeConfig->LockLevel));
// 1706   assert_param(IS_TIM_DEADTIME(sBreakDeadTimeConfig->DeadTime));
// 1707   assert_param(IS_TIM_BREAK_STATE(sBreakDeadTimeConfig->BreakState));
// 1708   assert_param(IS_TIM_BREAK_POLARITY(sBreakDeadTimeConfig->BreakPolarity));
// 1709   assert_param(IS_TIM_BREAK_FILTER(sBreakDeadTimeConfig->BreakFilter));
// 1710   assert_param(IS_TIM_AUTOMATIC_OUTPUT_STATE(sBreakDeadTimeConfig->AutomaticOutput));
// 1711 
// 1712   /* Check input state */
// 1713   __HAL_LOCK(htim);
// 1714 
// 1715   /* Set the Lock level, the Break enable Bit and the Polarity, the OSSR State,
// 1716      the OSSI State, the dead time value and the Automatic Output Enable Bit */
// 1717 
// 1718   /* Set the BDTR bits */
// 1719   MODIFY_REG(tmpbdtr, TIM_BDTR_DTG, sBreakDeadTimeConfig->DeadTime);
// 1720   MODIFY_REG(tmpbdtr, TIM_BDTR_LOCK, sBreakDeadTimeConfig->LockLevel);
// 1721   MODIFY_REG(tmpbdtr, TIM_BDTR_OSSI, sBreakDeadTimeConfig->OffStateIDLEMode);
// 1722   MODIFY_REG(tmpbdtr, TIM_BDTR_OSSR, sBreakDeadTimeConfig->OffStateRunMode);
// 1723   MODIFY_REG(tmpbdtr, TIM_BDTR_BKE, sBreakDeadTimeConfig->BreakState);
// 1724   MODIFY_REG(tmpbdtr, TIM_BDTR_BKP, sBreakDeadTimeConfig->BreakPolarity);
// 1725   MODIFY_REG(tmpbdtr, TIM_BDTR_AOE, sBreakDeadTimeConfig->AutomaticOutput);
// 1726   MODIFY_REG(tmpbdtr, TIM_BDTR_BKF, (sBreakDeadTimeConfig->BreakFilter << TIM_BDTR_BKF_Pos));
// 1727 
// 1728   if (IS_TIM_BKIN2_INSTANCE(htim->Instance))
// 1729   {
// 1730     /* Check the parameters */
// 1731     assert_param(IS_TIM_BREAK2_STATE(sBreakDeadTimeConfig->Break2State));
// 1732     assert_param(IS_TIM_BREAK2_POLARITY(sBreakDeadTimeConfig->Break2Polarity));
// 1733     assert_param(IS_TIM_BREAK_FILTER(sBreakDeadTimeConfig->Break2Filter));
// 1734 
// 1735     /* Set the BREAK2 input related BDTR bits */
// 1736     MODIFY_REG(tmpbdtr, TIM_BDTR_BK2F, (sBreakDeadTimeConfig->Break2Filter << TIM_BDTR_BK2F_Pos));
// 1737     MODIFY_REG(tmpbdtr, TIM_BDTR_BK2E, sBreakDeadTimeConfig->Break2State);
// 1738     MODIFY_REG(tmpbdtr, TIM_BDTR_BK2P, sBreakDeadTimeConfig->Break2Polarity);
// 1739   }
// 1740 
// 1741   /* Set TIMx_BDTR */
// 1742   htim->Instance->BDTR = tmpbdtr;
// 1743 
// 1744   __HAL_UNLOCK(htim);
// 1745 
// 1746   return HAL_OK;
// 1747 }
// 1748 #if defined(TIM_BREAK_INPUT_SUPPORT)
// 1749 
// 1750 /**
// 1751   * @brief  Configures the break input source.
// 1752   * @param  htim TIM handle.
// 1753   * @param  BreakInput Break input to configure
// 1754   *          This parameter can be one of the following values:
// 1755   *            @arg TIM_BREAKINPUT_BRK: Timer break input
// 1756   *            @arg TIM_BREAKINPUT_BRK2: Timer break 2 input
// 1757   * @param  sBreakInputConfig Break input source configuration
// 1758   * @retval HAL status
// 1759   */
// 1760 HAL_StatusTypeDef HAL_TIMEx_ConfigBreakInput(TIM_HandleTypeDef *htim,
// 1761                                              uint32_t BreakInput,
// 1762                                              TIMEx_BreakInputConfigTypeDef *sBreakInputConfig)
// 1763 
// 1764 {
// 1765   uint32_t tmporx;
// 1766   uint32_t bkin_enable_mask = 0U;
// 1767   uint32_t bkin_polarity_mask = 0U;
// 1768   uint32_t bkin_enable_bitpos = 0U;
// 1769   uint32_t bkin_polarity_bitpos = 0U;
// 1770 
// 1771   /* Check the parameters */
// 1772   assert_param(IS_TIM_BREAK_INSTANCE(htim->Instance));
// 1773   assert_param(IS_TIM_BREAKINPUT(BreakInput));
// 1774   assert_param(IS_TIM_BREAKINPUTSOURCE(sBreakInputConfig->Source));
// 1775   assert_param(IS_TIM_BREAKINPUTSOURCE_STATE(sBreakInputConfig->Enable));
// 1776 #if defined(DFSDM1_Channel0)
// 1777   if (sBreakInputConfig->Source != TIM_BREAKINPUTSOURCE_DFSDM1)
// 1778   {
// 1779     assert_param(IS_TIM_BREAKINPUTSOURCE_POLARITY(sBreakInputConfig->Polarity));
// 1780   }
// 1781 #else
// 1782   assert_param(IS_TIM_BREAKINPUTSOURCE_POLARITY(sBreakInputConfig->Polarity));
// 1783 #endif /* DFSDM1_Channel0 */
// 1784 
// 1785   /* Check input state */
// 1786   __HAL_LOCK(htim);
// 1787 
// 1788   switch (sBreakInputConfig->Source)
// 1789   {
// 1790     case TIM_BREAKINPUTSOURCE_BKIN:
// 1791     {
// 1792       bkin_enable_mask = TIM1_AF1_BKINE;
// 1793       bkin_enable_bitpos = 0;
// 1794       bkin_polarity_mask = TIM1_AF1_BKINP;
// 1795       bkin_polarity_bitpos = 9;
// 1796       break;
// 1797     }
// 1798 
// 1799     case TIM_BREAKINPUTSOURCE_DFSDM1:
// 1800     {
// 1801       bkin_enable_mask = TIM1_AF1_BKDF1BKE;
// 1802       bkin_enable_bitpos = 8;
// 1803       break;
// 1804     }
// 1805 
// 1806     default:
// 1807       break;
// 1808   }
// 1809 
// 1810   switch (BreakInput)
// 1811   {
// 1812     case TIM_BREAKINPUT_BRK:
// 1813     {
// 1814       /* Get the TIMx_AF1 register value */
// 1815       tmporx = htim->Instance->AF1;
// 1816 
// 1817       /* Enable the break input */
// 1818       tmporx &= ~bkin_enable_mask;
// 1819       tmporx |= (sBreakInputConfig->Enable << bkin_enable_bitpos) & bkin_enable_mask;
// 1820 
// 1821       /* Set the break input polarity */
// 1822 #if defined(DFSDM1_Channel0)
// 1823       if (sBreakInputConfig->Source != TIM_BREAKINPUTSOURCE_DFSDM1)
// 1824 #endif /* DFSDM1_Channel0 */
// 1825       {
// 1826         tmporx &= ~bkin_polarity_mask;
// 1827         tmporx |= (sBreakInputConfig->Polarity << bkin_polarity_bitpos) & bkin_polarity_mask;
// 1828       }
// 1829 
// 1830       /* Set TIMx_AF1 */
// 1831       htim->Instance->AF1 = tmporx;
// 1832       break;
// 1833     }
// 1834     case TIM_BREAKINPUT_BRK2:
// 1835     {
// 1836       /* Get the TIMx_AF2 register value */
// 1837       tmporx = htim->Instance->AF2;
// 1838 
// 1839       /* Enable the break input */
// 1840       tmporx &= ~bkin_enable_mask;
// 1841       tmporx |= (sBreakInputConfig->Enable << bkin_enable_bitpos) & bkin_enable_mask;
// 1842 
// 1843       /* Set the break input polarity */
// 1844 #if defined(DFSDM1_Channel0)
// 1845       if (sBreakInputConfig->Source != TIM_BREAKINPUTSOURCE_DFSDM1)
// 1846 #endif /* DFSDM1_Channel0 */
// 1847       {
// 1848         tmporx &= ~bkin_polarity_mask;
// 1849         tmporx |= (sBreakInputConfig->Polarity << bkin_polarity_bitpos) & bkin_polarity_mask;
// 1850       }
// 1851 
// 1852       /* Set TIMx_AF2 */
// 1853       htim->Instance->AF2 = tmporx;
// 1854       break;
// 1855     }
// 1856     default:
// 1857       break;
// 1858   }
// 1859 
// 1860   __HAL_UNLOCK(htim);
// 1861 
// 1862   return HAL_OK;
// 1863 }
// 1864 #endif /*TIM_BREAK_INPUT_SUPPORT */
// 1865 
// 1866 /**
// 1867   * @brief  Configures the TIMx Remapping input capabilities.
// 1868   * @param  htim TIM handle.
// 1869   * @param  Remap specifies the TIM remapping source.
// 1870   *          This parameter can be one of the following values:
// 1871   *            @arg TIM_TIM2_TIM8_TRGO: TIM2 ITR1 input is connected to TIM8 Trigger output(default)
// 1872   *            @arg TIM_TIM2_ETH_PTP:   TIM2 ITR1 input is connected to ETH PTP trigger output.
// 1873   *            @arg TIM_TIM2_USBFS_SOF: TIM2 ITR1 input is connected to USB FS SOF.
// 1874   *            @arg TIM_TIM2_USBHS_SOF: TIM2 ITR1 input is connected to USB HS SOF.
// 1875   *            @arg TIM_TIM5_GPIO:      TIM5 CH4 input is connected to dedicated Timer pin(default)
// 1876   *            @arg TIM_TIM5_LSI:       TIM5 CH4 input is connected to LSI clock.
// 1877   *            @arg TIM_TIM5_LSE:       TIM5 CH4 input is connected to LSE clock.
// 1878   *            @arg TIM_TIM5_RTC:       TIM5 CH4 input is connected to RTC Output event.
// 1879   *            @arg TIM_TIM11_GPIO:     TIM11 CH4 input is connected to dedicated Timer pin(default)
// 1880   *            @arg TIM_TIM11_SPDIF:    SPDIF Frame synchronous
// 1881   *            @arg TIM_TIM11_HSE:      TIM11 CH4 input is connected to HSE_RTC clock
// 1882   *                                     (HSE divided by a programmable prescaler)
// 1883   *            @arg TIM_TIM11_MCO1:     TIM11 CH1 input is connected to MCO1
// 1884   *
// 1885   * @retval HAL status
// 1886   */
// 1887 HAL_StatusTypeDef HAL_TIMEx_RemapConfig(TIM_HandleTypeDef *htim, uint32_t Remap)
// 1888 {
// 1889   __HAL_LOCK(htim);
// 1890 
// 1891   /* Check parameters */
// 1892   assert_param(IS_TIM_REMAP_INSTANCE(htim->Instance));
// 1893   assert_param(IS_TIM_REMAP(Remap));
// 1894 
// 1895   /* Set the Timer remapping configuration */
// 1896   htim->Instance->OR = Remap;
// 1897 
// 1898   htim->State = HAL_TIM_STATE_READY;
// 1899 
// 1900   __HAL_UNLOCK(htim);
// 1901 
// 1902   return HAL_OK;
// 1903 }
// 1904 
// 1905 /**
// 1906   * @brief  Group channel 5 and channel 1, 2 or 3
// 1907   * @param  htim TIM handle.
// 1908   * @param  Channels specifies the reference signal(s) the OC5REF is combined with.
// 1909   *         This parameter can be any combination of the following values:
// 1910   *         TIM_GROUPCH5_NONE: No effect of OC5REF on OC1REFC, OC2REFC and OC3REFC
// 1911   *         TIM_GROUPCH5_OC1REFC: OC1REFC is the logical AND of OC1REFC and OC5REF
// 1912   *         TIM_GROUPCH5_OC2REFC: OC2REFC is the logical AND of OC2REFC and OC5REF
// 1913   *         TIM_GROUPCH5_OC3REFC: OC3REFC is the logical AND of OC3REFC and OC5REF
// 1914   * @retval HAL status
// 1915   */
// 1916 HAL_StatusTypeDef HAL_TIMEx_GroupChannel5(TIM_HandleTypeDef *htim, uint32_t Channels)
// 1917 {
// 1918   /* Check parameters */
// 1919   assert_param(IS_TIM_COMBINED3PHASEPWM_INSTANCE(htim->Instance));
// 1920   assert_param(IS_TIM_GROUPCH5(Channels));
// 1921 
// 1922   /* Process Locked */
// 1923   __HAL_LOCK(htim);
// 1924 
// 1925   htim->State = HAL_TIM_STATE_BUSY;
// 1926 
// 1927   /* Clear GC5Cx bit fields */
// 1928   htim->Instance->CCR5 &= ~(TIM_CCR5_GC5C3 | TIM_CCR5_GC5C2 | TIM_CCR5_GC5C1);
// 1929 
// 1930   /* Set GC5Cx bit fields */
// 1931   htim->Instance->CCR5 |= Channels;
// 1932 
// 1933   /* Change the htim state */
// 1934   htim->State = HAL_TIM_STATE_READY;
// 1935 
// 1936   __HAL_UNLOCK(htim);
// 1937 
// 1938   return HAL_OK;
// 1939 }
// 1940 
// 1941 /**
// 1942   * @}
// 1943   */
// 1944 
// 1945 /** @defgroup TIMEx_Exported_Functions_Group6 Extended Callbacks functions
// 1946   * @brief    Extended Callbacks functions
// 1947   *
// 1948 @verbatim
// 1949   ==============================================================================
// 1950                     ##### Extended Callbacks functions #####
// 1951   ==============================================================================
// 1952   [..]
// 1953     This section provides Extended TIM callback functions:
// 1954     (+) Timer Commutation callback
// 1955     (+) Timer Break callback
// 1956 
// 1957 @endverbatim
// 1958   * @{
// 1959   */
// 1960 
// 1961 /**
// 1962   * @brief  Hall commutation changed callback in non-blocking mode
// 1963   * @param  htim TIM handle
// 1964   * @retval None
// 1965   */
// 1966 __weak void HAL_TIMEx_CommutCallback(TIM_HandleTypeDef *htim)
// 1967 {
// 1968   /* Prevent unused argument(s) compilation warning */
// 1969   UNUSED(htim);
// 1970 
// 1971   /* NOTE : This function should not be modified, when the callback is needed,
// 1972             the HAL_TIMEx_CommutCallback could be implemented in the user file
// 1973    */
// 1974 }
// 1975 /**
// 1976   * @brief  Hall commutation changed half complete callback in non-blocking mode
// 1977   * @param  htim TIM handle
// 1978   * @retval None
// 1979   */
// 1980 __weak void HAL_TIMEx_CommutHalfCpltCallback(TIM_HandleTypeDef *htim)
// 1981 {
// 1982   /* Prevent unused argument(s) compilation warning */
// 1983   UNUSED(htim);
// 1984 
// 1985   /* NOTE : This function should not be modified, when the callback is needed,
// 1986             the HAL_TIMEx_CommutHalfCpltCallback could be implemented in the user file
// 1987    */
// 1988 }
// 1989 
// 1990 /**
// 1991   * @brief  Hall Break detection callback in non-blocking mode
// 1992   * @param  htim TIM handle
// 1993   * @retval None
// 1994   */
// 1995 __weak void HAL_TIMEx_BreakCallback(TIM_HandleTypeDef *htim)
// 1996 {
// 1997   /* Prevent unused argument(s) compilation warning */
// 1998   UNUSED(htim);
// 1999 
// 2000   /* NOTE : This function should not be modified, when the callback is needed,
// 2001             the HAL_TIMEx_BreakCallback could be implemented in the user file
// 2002    */
// 2003 }
// 2004 
// 2005 /**
// 2006   * @brief  Hall Break2 detection callback in non blocking mode
// 2007   * @param  htim: TIM handle
// 2008   * @retval None
// 2009   */
// 2010 __weak void HAL_TIMEx_Break2Callback(TIM_HandleTypeDef *htim)
// 2011 {
// 2012   /* Prevent unused argument(s) compilation warning */
// 2013   UNUSED(htim);
// 2014 
// 2015   /* NOTE : This function Should not be modified, when the callback is needed,
// 2016             the HAL_TIMEx_Break2Callback could be implemented in the user file
// 2017    */
// 2018 }
// 2019 /**
// 2020   * @}
// 2021   */
// 2022 
// 2023 /** @defgroup TIMEx_Exported_Functions_Group7 Extended Peripheral State functions
// 2024   * @brief    Extended Peripheral State functions
// 2025   *
// 2026 @verbatim
// 2027   ==============================================================================
// 2028                 ##### Extended Peripheral State functions #####
// 2029   ==============================================================================
// 2030   [..]
// 2031     This subsection permits to get in run-time the status of the peripheral
// 2032     and the data flow.
// 2033 
// 2034 @endverbatim
// 2035   * @{
// 2036   */
// 2037 
// 2038 /**
// 2039   * @brief  Return the TIM Hall Sensor interface handle state.
// 2040   * @param  htim TIM Hall Sensor handle
// 2041   * @retval HAL state
// 2042   */
// 2043 HAL_TIM_StateTypeDef HAL_TIMEx_HallSensor_GetState(TIM_HandleTypeDef *htim)
// 2044 {
// 2045   return htim->State;
// 2046 }
// 2047 
// 2048 /**
// 2049   * @}
// 2050   */
// 2051 
// 2052 /**
// 2053   * @}
// 2054   */
// 2055 
// 2056 /* Private functions ---------------------------------------------------------*/
// 2057 /** @defgroup TIMEx_Private_Functions TIM Extended Private Functions
// 2058   * @{
// 2059   */
// 2060 
// 2061 /**
// 2062   * @brief  TIM DMA Commutation callback.
// 2063   * @param  hdma pointer to DMA handle.
// 2064   * @retval None
// 2065   */
// 2066 void TIMEx_DMACommutationCplt(DMA_HandleTypeDef *hdma)
// 2067 {
// 2068   TIM_HandleTypeDef *htim = (TIM_HandleTypeDef *)((DMA_HandleTypeDef *)hdma)->Parent;
// 2069 
// 2070   /* Change the htim state */
// 2071   htim->State = HAL_TIM_STATE_READY;
// 2072 
// 2073 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 2074   htim->CommutationCallback(htim);
// 2075 #else
// 2076   HAL_TIMEx_CommutCallback(htim);
// 2077 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 2078 }
// 2079 
// 2080 /**
// 2081   * @brief  TIM DMA Commutation half complete callback.
// 2082   * @param  hdma pointer to DMA handle.
// 2083   * @retval None
// 2084   */
// 2085 void TIMEx_DMACommutationHalfCplt(DMA_HandleTypeDef *hdma)
// 2086 {
// 2087   TIM_HandleTypeDef *htim = (TIM_HandleTypeDef *)((DMA_HandleTypeDef *)hdma)->Parent;
// 2088 
// 2089   /* Change the htim state */
// 2090   htim->State = HAL_TIM_STATE_READY;
// 2091 
// 2092 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 2093   htim->CommutationHalfCpltCallback(htim);
// 2094 #else
// 2095   HAL_TIMEx_CommutHalfCpltCallback(htim);
// 2096 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 2097 }
// 2098 
// 2099 
// 2100 /**
// 2101   * @brief  Enables or disables the TIM Capture Compare Channel xN.
// 2102   * @param  TIMx to select the TIM peripheral
// 2103   * @param  Channel specifies the TIM Channel
// 2104   *          This parameter can be one of the following values:
// 2105   *            @arg TIM_CHANNEL_1: TIM Channel 1
// 2106   *            @arg TIM_CHANNEL_2: TIM Channel 2
// 2107   *            @arg TIM_CHANNEL_3: TIM Channel 3
// 2108   * @param  ChannelNState specifies the TIM Channel CCxNE bit new state.
// 2109   *          This parameter can be: TIM_CCxN_ENABLE or TIM_CCxN_Disable.
// 2110   * @retval None
// 2111   */
// 2112 static void TIM_CCxNChannelCmd(TIM_TypeDef *TIMx, uint32_t Channel, uint32_t ChannelNState)
// 2113 {
// 2114   uint32_t tmp;
// 2115 
// 2116   tmp = TIM_CCER_CC1NE << (Channel & 0x1FU); /* 0x1FU = 31 bits max shift */
// 2117 
// 2118   /* Reset the CCxNE Bit */
// 2119   TIMx->CCER &=  ~tmp;
// 2120 
// 2121   /* Set or reset the CCxNE Bit */
// 2122   TIMx->CCER |= (uint32_t)(ChannelNState << (Channel & 0x1FU)); /* 0x1FU = 31 bits max shift */
// 2123 }
// 2124 /**
// 2125   * @}
// 2126   */
// 2127 
// 2128 #endif /* HAL_TIM_MODULE_ENABLED */
// 2129 /**
// 2130   * @}
// 2131   */
// 2132 
// 2133 /**
// 2134   * @}
// 2135   */
// 2136 
// 2137 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
// 
// 0 bytes of memory
//
//Errors: none
//Warnings: none