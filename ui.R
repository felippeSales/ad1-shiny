#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(plotly)
library(ggplot2)
library(dplyr)

shinyUI(fluidPage(
  titlePanel("Checkpoint 3 - #MeLevaParlamentar"),
  br(),
  br(),
  p("Analisando os gastos dos deputados durante o ano 2016 percebe-se que uma das  categorias em que eles mais gastão é com a Emissão de Bilhetes Aéreos."),
  p("Partindo disso o primeiro questionamento que me veio a mente foi: como eles conseguem gastar tanto com passagens aéreas?"),
  p("Investigando mais afundo, descobri que na verdade os parlamentares podem pagar passagens para terceiros. Após essa descoberta tentei analisar esses gastos de perspectiva  diferente, ou seja, levando em consideração  a quantidade de pessoas
diferentes para quem o deputado pagou passagens aéreas."),
  p("Essa é a distribuição dos gastos levando em conta o número de pessoas e o total gasto em passagens aéreas:"),
  
  br(),
  titlePanel("Configurações"),
  sidebarPanel(
    
    sliderInput("bins", "Número de Pessoas", min = 1, max = 40, value = c(1,36)),
    
    sliderInput("bins2", "Total Gasto em R$", min = 100, max = 105000, value = c(100,104000))
  ),
  mainPanel(
    p("Cada ponto representa um parlamentar. É possível selecionar quais os partidos
      que vão aparecer/desaparecer clicando no nome do partido na caixa de seleção do lado direito."),
     plotlyOutput("passageirosPlot")
  )
))
