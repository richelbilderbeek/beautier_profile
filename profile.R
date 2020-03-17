library(pirouette)

filename <- tempfile()

utils::Rprof(filename)
x <- create_std_pir_paramses(n = 10)
utils::Rprof(NULL)
print(utils::summaryRprof(filename))


