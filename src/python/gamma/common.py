from preamble.preamble import *
from graph.graph import Node, Edge
# Tool to import and export problem to a compatible format for the NPP

PARAMETERS = config.gamma_common(__name__)
logger = config.log(**PARAMETERS['logger'])
def set_of_frozenset(iterable):
    return { frozenset(x) for x in iterable }
    
    
## Tested
def npp_from_json(input_file):
    # Pont entre le code de Ming Bui et la transformation
    
    # Verify if the file exist
    if not os.path.isfile(input_file):
        print(f"Error: The specified file does not exist: {input_file}")
        return
        
    with open(input_file, 'r') as json_file:
        loaded_data = json.load(json_file)

    json_problem = loaded_data['problem'] 
    
    # create node
    node_dict = {i : Node(i) for i in range(1, json_problem['V']+1)}
    nodes = node_dict.values()
    
    # create edge
    edges = []         
    for i, edge in enumerate(json_problem['A'], start=1):
        edge['src'] = node_dict[edge['src']]
        edge['dst'] = node_dict[edge['dst']]
        edges.append(Edge(**edge, label=i))

    # convert problem
    problems = []
    for k in json_problem['K']:
        k['orig'] = node_dict[k['orig']]
        k['dest'] = node_dict[k['dest']]
        problems.append(k)
        
    return nodes, edges, problems

## Tested
def to_json(
    json_dict:dict,
    directory:str,
    filename:str,
    indent: int=2
    ):
    
    # Check if directory is specified
    if directory is None:
        logger.warning("The directory parameter is not specified")
        return

    # Check if filename is specified
    if filename is None:
        logger.warning("The filename parameter is not specified")
        return
        
    # Verify the extension
    elif filename.endswith('.json'):
        logger.warning("The filename parameter ends with the extension .json")
        return
        
    # Check if directory is a directory or a file
    if not os.path.isdir(directory):
        logger.warning("The directory parameter is not a directory")
        return
    
    # Use the specified directory and filename
    output_file = os.path.join(directory, f"{filename}.json")
        
    # Check if the file already exists
    if os.path.isfile(output_file):
        logger.warning(f"The specified file already exists: {output_file}")
        
    
    # Write the dictionary to the file
    with open(output_file, 'w') as json_file:
        json.dump(json_dict, json_file, indent=indent)
        logger.info(f'NPP JSON file created : {output_file}')
        
    if os.stat(output_file).st_size == 0:
        logger.warning(f"The exported file is empty: {output_file}")
    
    return output_file
        
    
def import_partition(input_file:str):
    with open('file.pkl', 'rb') as f:
        data = pickle.load(f)
    return data






def json_compression(id_problem_lt:list, output_file:str):
    # output_file : path/to/output.pkl
    # Write the JSON string to a file
    with open(output_file, "wb") as f:
        pickle.dump(id_problem_lt, f)
        

# Information tools
def print_columns(*lists, headers=None):
    if headers is not None:
        if len(headers) != len(lists):
            raise ValueError("Number of headers must match the number of lists.")

    # Find the maximum length of each element in the lists or headers
    max_lengths = [
        max(len(str(val)) for val in lst) if lst else 0  # Handle empty lists
        for lst in lists
    ]

    # Use the maximum length for each column as the column width
    column_widths = [max(length, len(header)) for length, header in zip(max_lengths, headers)]

    # Print headers if provided
    if headers is not None:
        print(" | ".join(f"{header:>{width}}" for header, width in zip(headers, column_widths)))
        print("-" * (sum(column_widths) + len(column_widths) * 3 - 1))  # Separator line
    
    max_list_lenght = max(list(map(len,lists)))

    for lst in lists:
        while len(lst) != max_list_lenght:
            lst.append('')
        
    # Iterate over the zipped lists and print in columns
    for row in zip(*lists):
        print(" | ".join(f"{val:>{width}}" for val, width in zip(row, column_widths)))
