import converter
def test_J_to_eV():
    assert (converter.J_to_eV(1) == "6.25e+18eV")