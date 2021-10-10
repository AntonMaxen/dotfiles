from functools import reduce
col_names = ['result', 'vaccine', 'cases']
result = reduce(lambda a, b: {**a, b: []}, col_names, {})
second_result = {name: [] for name in col_names}
print(second_result)
print(result)