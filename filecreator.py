import os

save_path = '.'

for i in range(1, 301):
    for j in range(1, 11):
        file = open(os.path.join(save_path, str(i), str(j+i*10)), "w")
        file.write("info")
        file.close()