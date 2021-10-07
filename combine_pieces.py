import os, subprocess
import random, sys

if len(sys.argv) == 1:
    n_boards = 1
else:
    n_boards = int(sys.argv[1])

def demo_board(fname):
    pieces = ["pieces/" + p for p in os.listdir('pieces')]
    pieces.sort()
    print(pieces)
    for row in range(27):
        selection=[]
        for col in range(27):
            selection.append(pieces[row*27 + col])
        cmd=f'convert {" ".join(selection)} +append rows/row{row}.png'
        subprocess.run(cmd, shell=True)
    subprocess.run(f'convert rows/row*.png -append {fname}', shell=True)
    
def gen_board(fname):
    pieces = ["pieces/" + p for p in os.listdir('pieces')]
    print(len(pieces))
    rownum = 0
    while len(pieces) > 0:
        selection = []
        for i in range(27):
            c=random.choice(pieces)
            selection.append(c)
            pieces.remove(c)
        cmd=f'convert {" ".join(selection)} +append rows/row{rownum}.png'
        subprocess.run(cmd, shell=True)
        rownum+=1
        print(f"Finished row {rownum}")
    subprocess.run(f'convert rows/row*.png -append {fname}', shell=True)

for i in range(n_boards):
    gen_board(f"boards/board_{i}.png")


        
    
    
