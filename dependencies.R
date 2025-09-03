package_install <- function(x){
  for (i in x) {
    # Check if package is installed
    if (!require(i, character.only = TRUE)){
      # If the package could not be loaded then install it
      install.packages(i)
    }
  }
}

packages <- c("shiny", "qqman", "data.table", "CMplot", "plotly")

package_install(packages)

install.packages('/home/workspace/files/gwas-app/manhattanly_0.3.0.tar.gz', repos=NULL, type="source")