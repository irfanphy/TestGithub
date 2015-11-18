import converter

def test_J_to_eV():
    assert converter.J_to_eV(1) == "6.25e+18 eV"
    
def test_J_to_eV_2():
    assert converter.J_to_eV(1, string=False) == 1.0 / converter.e
