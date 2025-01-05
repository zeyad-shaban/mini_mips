instruction_path = "./custom_compiler/instructions.mips"
memo_path = "./Memory.vhd"


def generate_r_type(func, rs, rt, rd, shamt="00000"):
    opcode = "000000"
    return f"{opcode}{rs:05b}{rt:05b}{rd:05b}{shamt}{func}"


def generate_i_type(opcode, rs, rt, immediate):
    return f"{opcode}{rs:05b}{rt:05b}{immediate:016b}"


def generate_j_type(opcode, address):
    return f"{opcode}{address:026b}"


def clean_register(reg):
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
        rs = 0
        immediate = 0
        return generate_i_type("000010", rs, rd, immediate)
    elif opcode == "BUN" or opcode == "J":  # BUN address
        address = int(parts[1])
        return generate_j_type("111111", address)
    elif opcode == "MOV":  # MOV rd, rs
        rd = clean_register(parts[1])
        rs = clean_register(parts[2])
        imm = 0
        return generate_i_type("000110", rs, rd, imm)

    elif opcode == "NOP":
        return "0" * 32
    else:
        raise ValueError(f"Unknown instruction: {instruction}")


def main():
    with open(memo_path, 'r') as f:
        vhdl_lines = f.readlines()

    start_marker = "-- PY_START_EDITING"
    end_marker = "-- PY_END_EDITING"

    start_index = next((i for i, line in enumerate(
        vhdl_lines) if start_marker in line), None)
    end_index = next((i for i, line in enumerate(
        vhdl_lines) if end_marker in line), None)

    if start_index is None or end_index is None:
        raise ValueError(
            f"Markers {start_marker} or {end_marker} not found in the VHDL file.")

    new_memory_lines = ["    SIGNAL memory : memory_array := (\n"]
    with open(instruction_path, 'r') as f:
        instructions = f.readlines()

    index = 0
    for line_num, inst in enumerate(instructions, start=1):
        inst = inst.split('#')[0].strip()
        if not inst:
            continue
        try:
            binary = compile_instruction(inst)
            new_memory_lines.append(f'    {index} => "{binary}", -- {inst}\n')
            index += 1
        except ValueError as e:
            print(f"Error: {e} (line {line_num}: {inst})")

    new_memory_lines.append("    OTHERS => (OTHERS => '0')\n")
    new_memory_lines.append("    );\n")

    vhdl_lines[start_index + 1:end_index] = new_memory_lines

    with open(memo_path, 'w') as f:
        f.writelines(vhdl_lines)


if __name__ == "__main__":
    main()
