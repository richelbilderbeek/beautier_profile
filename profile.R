library(beautier)

filename <- tempfile()

utils::Rprof(filename)
check_inference_model(create_test_inference_model())
utils::Rprof(NULL)
print(utils::summaryRprof(filename))


