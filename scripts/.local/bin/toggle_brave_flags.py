new_lines = []
with open('../../../brave/.config/brave-flags.conf', 'r') as f:
    lines = f.readlines()
    if lines[0][0] == '#':
        new_lines = [line[2:] for line in lines]
        print('enabled brave flags')
    else:
        new_lines = ['# ' + line for line in lines]
        print('disabled brave flags')

with open('../../../brave/.config/brave-flags.conf', 'w') as f:
    f.write(''.join(new_lines))
