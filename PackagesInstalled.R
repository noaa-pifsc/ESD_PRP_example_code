### Prior to updating R

# Option 1: Record which version of which packages you have and where they live
CurrentPackages <- installed.packages()
write.csv(CurrentPackages, "CurrentPackages.csv")

# Option 2: Use the pacman package (https://github.com/trinker/pacman)
install.packages("pacman")
library(pacman)
CurrentPackages <- p_lib()
saveRDS(CurrentPackages, "CurrentPackages.rds")


### After updating R

# Option 1: install these packages manually, either using R or via your file 
# directory (assuming the update doesn't include deleting your old version's 
# library)

# Option 2: Use the pacman package
CurrentPackages <- readRDS("CurrentPackages.rds")
install.packages(CurrentPackages)
