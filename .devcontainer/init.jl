using Pkg

Pkg.add("Conda")

using Conda

Conda.add("python=3.11")
Conda.add("jupyter")
Conda.add("nbconvert")

Pkg.add(
    Pkg.PackageSpec[
        Pkg.PackageSpec(name="Distributions"),
        Pkg.PackageSpec(name="HiGHS", version="1.12.2"),
        Pkg.PackageSpec(name="IntervalArithmetic", version="0.22.19"),
        Pkg.PackageSpec(name="JuMP"),
        Pkg.PackageSpec(name="LaTeXStrings"),
        Pkg.PackageSpec(name="Plots"),
        Pkg.PackageSpec(name="PyPlot"),
        Pkg.PackageSpec(name="StatsPlots"),
        Pkg.PackageSpec(name="Ipopt", version="1.6.7")
    ]
)

Pkg.precompile()
