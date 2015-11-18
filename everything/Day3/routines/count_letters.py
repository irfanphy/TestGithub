def count(string):
    cap_txt = string.lower()
    #sft = Symbol/space/numbers Free text
    sft = ''.join(e for e in cap_txt if e.isalpha())
    count = len(sft)
    return count, sft
