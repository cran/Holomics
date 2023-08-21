## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  echo = F,
  fig.align='center', 
  fig.pos= "h"
)

## ----message=F----------------------------------------------------------------
data <- as.data.frame(readxl::read_excel("data/asv_small.xlsx", col_names = T))
rownames(data) <- data[, 1]   #all rows, first column
data <- data[,-1]
knitr::kable(data)

## ----message=F----------------------------------------------------------------
data <- as.data.frame(readxl::read_excel("data/labels.xlsx", col_names = T))
knitr::kable(data)

## ----workflow, fig.cap = "(ref:workflow)", out.width="100%"-------------------
knitr::include_graphics("images/workflow.png")

## ----uploadData, fig.cap = "(ref:uploadData)", out.width="100%"---------------
knitr::include_graphics("images/Upload_data.png")

## ----uploadClasses, fig.cap = "(ref:uploadClasses)", out.width="100%"---------
knitr::include_graphics("images/Upload_labels.png")

## ----PCA, fig.cap = "(ref:PCA)", out.width="100%"-----------------------------
knitr::include_graphics("images/PCA.png")

## ----PLSDA, fig.cap = "(ref:PLSDA)", out.width="100%"-------------------------
knitr::include_graphics("images/PLSDA.png")

## ----sPLS, fig.cap = "(ref:sPLS)", out.width="100%"---------------------------
knitr::include_graphics("images/sPLS.png")

## ----DIABLO, fig.cap = "(ref:DIABLO)", out.width="100%"-----------------------
knitr::include_graphics("images/DIABLO.png")

## ----echo = FALSE-------------------------------------------------------------
library(Holomics)
sessionInfo()

