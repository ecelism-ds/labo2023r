# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
# source("~/labo2023r/src/workflow-inicial/611_CA_reparar_dataset.r")
# source("~/labo2023r/src/workflow-inicial/621_DR_corregir_drifting.r")
# source("~/labo2023r/src/workflow-inicial/631_FE_historia.r")
source("~/labo2023r/src/workflow-inicial/641_TS_training_strategy_20.03.r")

# ultimos pasos, muy lentos
source("~/labo2023r/src/workflow-inicial/651_HT_lightgbm_20.03.r")
source("~/labo2023r/src/workflow-inicial/661_ZZ_final_20.03.r")