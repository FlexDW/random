import os
import glob

# set path to folder
path = "C:/.."

# obtain full file paths for all the files
file_type = '.jpg'
file_paths = glob.glob(os.path.join(path, '*' + file_type.format('identifier')))

# set prequel if generic text label occurs before the numerical values
prequel = ''
len_prequel = len(prequel)

# set number of digits and leading zeros (e.g. 4 for thousands)
num_digits = 4 
zeros = ''
for i in range(num_digits - 1): zeros += '0'

# rename files (assuming the id occurs at end of file)
for i, file_name in enumerate(file_paths):
    id_start = file_paths[i].find(prequel) + len_prequel
    id_end = file_paths[i].find(file_type)
    id_txt = file_paths[i][id_start:id_end]
    id_txt = zeros[0:num_digits - len(id_txt)] + id_txt
    rename(src=file_paths[i], dst=file_paths[i][:id_start] + id_txt + '.jpg')    
