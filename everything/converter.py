"""Module for converting energy scales"""
e = 1.6e-19
def J_to_eV(energy, string=True):
    energy_in_eV = energy / e
    
    if string:
        return str(energy_in_eV) + "eV"
    else:
        return energy_in_eV
def eV_to_J(energy, string=True):
    energy_in_J = energy * e
    
    if string:
        return str(energy_in_J) + "J"
    else:
        return energy_in_J
