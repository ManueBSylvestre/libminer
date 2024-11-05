#New window
#build pane... package infrastructure for us.

library(devtools)

usethis::use_git_config(
  user.name = "Manuelle Beaudry-Sylvestre",
  user.email = "manuelle.beaudry-sylvestre@dfo-mpo.gc.ca" )

git_sitrep()

use_git() #initialize as a git repo
#yes can commit and yes can use as initial commit


#automatically gets loaded
usethis::use_devtools() #will open up a R profile
#Some code that gets run every time you start R
#We want to load devtools every time we start R
#copied


###
use_r#takes an argument of file name

use_r("lib-summary") #creates a file named lib summary, this is where wie write the r code

#Then how do you try this fct:
source()#will run all the code in the file
#send function to console...

#Both ways bad!!

#want to do instead:
#source will cause issues because the system will think that the function has two different names & issues with versions
#if loadall is long to run: package probably makes some web calls... an indication of an underlying issue

#When to use load_all as package dev: never put it anywhere... the user is never gonna type load_all
#User will just install your package.

lib_summary()#this gives the output


devtools::load_all()#simulates the user experience.
#
#chontrol
#keyboard shortcut help in tools! helpful

#Restart+loadall: fresh session, loadall, can be helpful
#loading packages in your profile = bad idea


#Git pane: we want to commit this
#Click staged... commit change and then you can close other window

#Workflow: load-all, run code, edit code.
#On


#Automated checks -- to ensure that the package will behave appropriately
check() #within devtools
#See: https://github.com/wch/r-source/blob/97a5806aed3dceb174af8b600457a4d647e60f34/src/library/tools/R/check.R#L314

#non-standard license specification: we have to give it a license

#Are we supposed to be able to see this libminer repository listed in our repositories in Github at this point? Or do we still need to publish at some point. I'm just not following where this is committing to ---> No


#Licenses: broad topic... MIT for our example
use_mit_license() #not as part of the build of the package, but as part of your repo.
#write two files: cran will
#we dont include the repo - the .Rbuildignore is ignored in the package

#But when commit: click all four boxes


#The description file : controle + period (.)
#After: run check() (or can do it from build pane)
#Take a look at description for ggplot2... can give you inspiration


#After break
#Connexion to github: push our local repo to the remote one
use_github() #can use private=T to make it non-public
#If pauses and options: click diff to see what changed
#I agree option -- will push it all out there
#
#Check box is the equivalent to git add


#avoid the pain of copying...

# Set usethis options:
options(
  usethis.description = list(
    "Authors@R" = utils::person(
      "Manuelle", "Beaudry-Sylvestre",
      email = "manuelle.beaudry-sylvestre@dfo-mpo.gc.ca",
      role = c("aut", "cre"),
      comment = c(ORCID = "0000-1111-2222-3333")
    ) ,
    #écrit dans zoom mais pas dans les slides
    Version = '0.0.0.9000',
    License = 'MIT + file LICENSE'

  )
  #usethisoverwrite... pas eu le temps de voirce qu'il a écrit
)

#While at this:
options(
  warnPartialMatchArgs = TRUE,
  warnPartialMatchDollar = TRUE,
  warnPartialMatchAttr = TRUE
)

#DOCUMENTATION
#roxygen2 = doc framework
#knitr = nice docum

#man: .Rd files (R documentation) - never edit them manually
#...

#square brackets... in comments will automatically link...

#Create roxygen comments for libsummary function
#alt control shift R pour acceder
#control shift d = shortcut to run document

check()
load_all()
use_package_doc()
document()


?lib_summary #ok works

check() #Bon ca marche enfin

#control shift b : pour R cmd install
#Good ca fait l'installation, le restarting r session, et le library(libminer)

library(libminer)

#commit, and push

use_readme_md() #selon google - ok cela me crée un readme

##JE M'AJUSTE POUR LE DÉBUT DU DAY 2
load_all()

use_readme_rmd() #Ok oui ca me sort le readme - mais je dois faire knit je crois
build_readme()

check()


# build_readme()
#
# check()


#j'ai une erreur de description file
#Code sur stack overflow:

# I am creating two vectors for each successful and failed description files
load_all()
check()


successful_files <- c()
error_vector <- c()

# Specify the directory you have received from .libPaths()
dir_path <- "C:/Users/beaudrysylvestrem/Desktop/libminer"



desc_files <-
  list.files(
    path = dir_path,
    pattern = "DESCRIPTION",
    recursive = TRUE,
    full.names = TRUE
  )

# Loop through the files
for (file in desc_files) {
  tryCatch({
    # Attempting to read the file
    desc <- read.dcf(file)

    # If successful, add to successful_files vector and show a console message
    successful_files <- c(successful_files, file)
    cli::cli_alert_success(paste0("Successfully loaded ", file))
  }, error = function(e) {
    # If an error occurs, add to error_vector and show a console message
    error_vector <- c(error_vector, file)
    cli::cli_alert_danger(paste0("Failed to loaded ", file))
  })
}





##JOUR 2
use_testthat()



























