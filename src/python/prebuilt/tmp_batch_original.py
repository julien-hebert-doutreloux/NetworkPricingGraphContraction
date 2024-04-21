from preamble.preamble import *

def merging_batch()
    
    problems = {}
    transformations = {}
    for root, dirs, files in os.walk(directory_npp):
        for filename in files:
            if filename.endswith("-P.json"):
            
                base_name, ext = os.path.splitext(filename)
                file_problem = os.path.join(root, filename)
                file_transformation = os.path.join(root, filename.replace(f'-P{ext}', f'-T{ext}'))
                
                with open(file_problem, 'r') as f:
                    problems[base_name] = json.load(f)
                    
                with open(file_transformation, 'r') as f:
                    transformations[base_name] = json.load(f)
    
    
    
    
    combined_data = {}
    for file in input_file_list:
    
        with open(file, 'rb') as f:
            data = pickle.load(f)
            combined_data.update(data)
            
        if erease:
            os.remove(file)
            logger.info(f"File has been deleted : {file}")
                      
    output_file = os.path.join(output_directory, output_name)
    with open(output_file, 'wb') as f:
        # save the combined data to a new PKL file
        pickle.dump(combined_data, f)
        logger.info(f"File has been created : {output_file}")
