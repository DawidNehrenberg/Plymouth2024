library(ggplot2)
library(readxl)
library(cowplot)
Station1 <- read_xlsx("C:\\Users\\david\\OneDrive - University of Southampton\\Uni Work\\Year 3\\Plymouth\\habitat mapping\\SpeciesCount.xlsx", sheet = 1)
Station2 <- read_xlsx("C:\\Users\\david\\OneDrive - University of Southampton\\Uni Work\\Year 3\\Plymouth\\habitat mapping\\SpeciesCount.xlsx", sheet = 2)
Station3 <- read_xlsx("C:\\Users\\david\\OneDrive - University of Southampton\\Uni Work\\Year 3\\Plymouth\\habitat mapping\\SpeciesCount.xlsx", sheet = 3)

#Video1
pS1 <- ggplot(data = Station1, aes(x = Time, y = Count)) +
    geom_line(size = 1, linetype = 2) +
    geom_point(size = 5) +
    theme_bw() +
    theme(legend.position = "top",
            axis.text = element_text(size = 18),
            axis.title = element_text(size = 18, face = "bold"),
            legend.text = element_text(size = 10, face = "bold"),
            legend.title = element_text(size = 18, face = "bold")) +
    ylab("Species Count") +
    xlab("Time (minutes)")

#Video 2
pS2 <- ggplot(data = Station2, aes(x = Time, y = Count)) +
    geom_line(size = 1, linetype = 2) +
    geom_point(size = 5) +
    theme_bw() +
    theme(legend.position = "top",
            axis.text = element_text(size = 18),
            axis.title = element_text(size = 18, face = "bold"),
            legend.text = element_text(size = 10, face = "bold"),
            legend.title = element_text(size = 18, face = "bold")) +
    ylab("Species Count") +
    xlab("Time (minutes)")

#Video 3
pS3 <- ggplot(data = Station3, aes(x = Time, y = Count)) +
    geom_line(size = 1, linetype = 2) +
    geom_point(size = 5) +
    theme_bw() +
    theme(legend.position = "top",
            axis.text = element_text(size = 18),
            axis.title = element_text(size = 18, face = "bold"),
            legend.text = element_text(size = 10, face = "bold"),
            legend.title = element_text(size = 18, face = "bold")) +
    ylab("Species Count") +
    xlab("Time (minutes)")


plot_grid(pS1, pS2, pS3, labels = c("S1", "S2", "S3"), ncol = 1)
