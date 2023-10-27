# Filepath: helpers/generate_tfvars.py

import os


def generate_tfvars(root_dir):
    """
    Generates an organized aggregate terraform.tfvars in the root directory for each module's variables.tf.

    Parameters:
    - root_dir (str): The root directory path where the modules are located.

    Returns:
    - None
    """
    modules_dir = os.path.join(root_dir, "modules")
    tfvars_file_path = os.path.join(root_dir, "terraform.tfvars")

    # Initialize or clear the terraform.tfvars file
    with open(tfvars_file_path, "w") as f:
        f.write("# Aggregate terraform.tfvars\n\n")

    # Loop through each module directory
    for module_name in os.listdir(modules_dir):
        module_path = os.path.join(modules_dir, module_name)
        variables_file_path = os.path.join(module_path, "variables.tf")

        with open(tfvars_file_path, "a") as f:
            f.write(f"# ======================\n")
            f.write(f"# {module_name.capitalize()} Configuration\n")
            f.write(f"# ======================\n")

        if os.path.exists(variables_file_path):
            with open(variables_file_path, "r") as var_file:
                lines = var_file.readlines()
                var_found = False
                for line in lines:
                    if 'variable "' in line:
                        var_found = True
                        var_name = line.split('"')[1]
                        with open(tfvars_file_path, "a") as f:
                            if "=" in line:
                                f.write(f"# {line.split('=')[1].strip()}\n")
                            f.write(f'{var_name} = ""\n\n')
                if not var_found:
                    with open(tfvars_file_path, "a") as f:
                        f.write("# No variables for this module.\n\n")

    print(f"terraform.tfvars has been generated in {root_dir}!")


if __name__ == "__main__":
    current_directory = os.path.dirname(os.path.abspath(__file__))
    root_directory = os.path.dirname(current_directory)
    generate_tfvars(root_directory)
