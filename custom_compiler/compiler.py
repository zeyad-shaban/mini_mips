instruction_path = "./instructions.mips"
memo_path = "./memo.txt"


def generate_r_type(func, rs, rt, rd, shamt="00000"):
    opcode = "000000"
    return f"{opcode}{rs:05b}{rt:05b}{rd:05b}{shamt}{func}"


def generate_i_type(opcode, rs, rt, immediate):
    return f"{opcode}{rs:05b}{rt:05b}{immediate:016b}"


def generate_j_type(opcode, address):
    return f"{opcode}{address:026b}"


def clean_register(reg):
    # Remove 'r' and strip any commas and spaces
    return int(reg[1:].strip(',').strip())


def compile_instruction(instruction):
    parts = instruction.strip().split()
    opcode = parts[0].upper()

    if opcode == "ADD":  # ADD rd, rs, rt
        rd = clean_register(parts[1])
        rs = clean_register(parts[2])
        rt = clean_register(parts[3])
        return generate_r_type("000010", rs, rt, rd)
    elif opcode == "SUB":  # SUB rd, rs, rt
        rd = clean_register(parts[1])
        rs = clean_register(parts[2])
        rt = clean_register(parts[3])
        return generate_r_type("000011", rs, rt, rd)
    elif opcode == "XOR":  # XOR rd, rs, rt
        rd = clean_register(parts[1])
        rs = clean_register(parts[2])
        rt = clean_register(parts[3])
        return generate_r_type("000001", rs, rt, rd)
    elif opcode == "ASL":  # ASL rd, rt, shamt
        rd = clean_register(parts[1])
        rt = clean_register(parts[2])
        shamt = int(parts[3])
        return generate_r_type("000100", 0, rt, rd, f"{shamt:05b}")
    elif opcode == "ASR":  # ASR rd, rt, shamt
        rd = clean_register(parts[1])
        rt = clean_register(parts[2])
        shamt = int(parts[3])
        return generate_r_type("000101", 0, rt, rd, f"{shamt:05b}")
    elif opcode == "LSL":  # LSL rd, rt, shamt
        rd = clean_register(parts[1])
        rt = clean_register(parts[2])
        shamt = int(parts[3])
        return generate_r_type("000110", 0, rt, rd, f"{shamt:05b}")
    elif opcode == "LSR":  # LSR rd, rt, shamt
        rd = clean_register(parts[1])
        rt = clean_register(parts[2])
        shamt = int(parts[3])
        return generate_r_type("000111", 0, rt, rd, f"{shamt:05b}")
    elif opcode == "ROL":  # ROL rd, rt, shamt
        rd = clean_register(parts[1])
        rt = clean_register(parts[2])
        shamt = int(parts[3])
        return generate_r_type("001000", 0, rt, rd, f"{shamt:05b}")
    elif opcode == "ROR":  # ROR rd, rt, shamt
        rd = clean_register(parts[1])
        rt = clean_register(parts[2])
        shamt = int(parts[3])
        return generate_r_type("001001", 0, rt, rd, f"{shamt:05b}")
    elif opcode == "ADDI":  # ADDI rt, rs, immediate
        rt = clean_register(parts[1])
        rs = clean_register(parts[2])
        imm = int(parts[3])
        return generate_i_type("000100", rs, rt, imm)
    elif opcode == "SUBI":  # SUBI rt, rs, immediate
        rt = clean_register(parts[1])
        rs = clean_register(parts[2])
        imm = int(parts[3])
        return generate_i_type("000101", rs, rt, imm)
    elif opcode == "XORI":  # XORI rt, rs, immediate
        rt = clean_register(parts[1])
        rs = clean_register(parts[2])
        imm = int(parts[3])
        return generate_i_type("000011", rs, rt, imm)
    elif opcode == "LH" or opcode == "INP":  # LH rt, immediate
        rt = clean_register(parts[1])
        imm = int(parts[2])
        return generate_i_type("000001", 0, rt, imm)
    elif opcode == "INP":  # INP rt, immediate
        rt = clean_register(parts[1])
        imm = int(parts[2])
        return generate_i_type("000110", 0, rt, imm)
    elif opcode == "OUT":  # OUT rd
        rd = clean_register(parts[1])
        return generate_r_type("000010", 0, 0, rd)
    elif opcode == "BUN" or opcode == "J":  # BUN address
        address = int(parts[1])
        return generate_j_type("111111", address)
    elif opcode == "NOP":  # NOP
        return "0" * 32
    else:
        raise ValueError(f"Unknown instruction: {instruction}")


def main():
    with open(instruction_path, 'r') as f:
        instructions = f.readlines()

    with open(memo_path, 'w') as f:
        f.write("SIGNAL memory : memory_array := (\n")
        index = 1  # Start memory index from 1
        for line_num, inst in enumerate(instructions, start=1):
            # Remove comments and trim whitespace
            inst = inst.split('#')[0].strip()
            if not inst:  # Skip empty lines or lines with only comments
                continue

            # Compile valid instruction
            try:
                binary = compile_instruction(inst)
                f.write(f'    {index} => "{binary}", -- {inst}\n')
                index += 1
            except ValueError as e:
                print(f"Error: {e} (line {line_num}: {inst})")
        f.write('    OTHERS => (OTHERS => \'0\')\n);\n')



if __name__ == "__main__":
    main()
