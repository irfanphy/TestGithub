"""Module for converting energy scales"""

e = 1e-19

def J_to_eV(energy, string=True):
    """Function to convert energy from Joules to eV.
    
    This function returns a number or a string with units, depending on
    the value of `string`
    
    Parameter
    ---------
    energy : energy in units of J
    string : if True, then a string with unit is returned, else just the number
    
    Returns
    -------
    energy in units of eV, either as a string with units (if string=True) or 
    as a number.
    """
 
    energy_in_eV = energy / e
    
    if string:
        return str(energy_in_eV) + " eV"
    else:
        return energy_in_eV

def eV_to_J(energy, string=True):
    energy_in_J = energy * e
    
    if string:
        return str(energy_in_J) + " J"
    else:
        return energy_in_J
