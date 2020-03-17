library(beautier)

filename <- tempfile()

utils::Rprof(filename)
for (i in seq_len(1000)) {
  check_inference_model(create_test_ns_inference_model())
  check_inference_model(create_test_inference_model())
}
utils::Rprof(NULL)
print(utils::summaryRprof(filename))


