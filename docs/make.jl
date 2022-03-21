using Documenter
using economics

makedocs(
    sitename = "economics",
    format = Documenter.HTML(),
    modules = [economics]
)

# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.
#=deploydocs(
    repo = "<repository url>"
)=#
