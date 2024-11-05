#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#

library(dplyr, warn.conflicts = FALSE)
library(kableExtra, warn.conflicts = FALSE)
library(ggplot2, warn.conflicts = FALSE)
library(plotly, warn.conflicts = FALSE)

#
#
#
#
#
s <- 0.99

e <- 0.99

p <- seq(from = 0, to = 1, by = 1e-4)

VPP <- s * p / ((1 - e) * (1 - p) + s * p)

VPN <- e * (1 - p) / (e * (1 - p) + (1 - s) * p)

Grafico <- ggplot(data.frame(p = p, VPP = VPP, VPN = VPN)) +

  geom_line(aes(x = p, y = VPP, color = 'Valor preditivo positivo')) +

  geom_line(aes(x = p, y = VPN, color = 'Valor preditivo Negativo')) +

  labs(x = 'Prevalência', y = 'Valor Preditivo') +

  scale_color_manual(name = ' ', values = c('blue', 'red'))

ggplotly(plot)

#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
