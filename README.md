# terraform-vpc

# root module which pulls vpc components from backend module
# it has 2 modules 1 for dev and other for prod
# terrafile basically pulls the specific branch from the repo as mentioned in the terrafile
# terrafile -f env-dev/Terrafile and terrafile -f env-prod/terrafile
