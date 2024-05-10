using JSON, CSV, DataFrames, BenchmarkTools, Distributed, FileIO, Pickle, Unmarshal
using NetPricing, JuMP, Gurobi



file = "./tmp/testing_gen/graphs/j40-07/000000-NPP-j40-07.json"

prob = read_problem(file)
pprobs = preprocess(prob, maxpaths = 1000)
# Create a model
model, forms = custom_std_model(pprobs)
