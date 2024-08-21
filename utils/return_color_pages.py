"""
This script runs through the output of the inkcov device
of Ghostscript to retrieve the list of the color pages of a pdf.

For each page, Ghostscript will return the CMYK code. It means that a "0.0 0.0 0.0 x" entry
corresponds to a black and white page.

/!\ PLEASE ENSURE THAT THE RETURNED RANGE OF COLOR PAGES IS THE RIGHT ONE /!\ 

Usage:
1) stdbuf -o0 gs -o - -sDEVICE=inkcov {pdf_file} >&1 | tee -a CMYK_dump
2) python return_color_pages.py

Author: Valentin Delchevalerie
Creation: 22/07/2024
"""


def get_CMYK():

    with open('./CMYK_dump', 'r') as f:
        lines = f.readlines()
        
    # Remove useless information and typos
    n_lines = len(lines)
    for i, line in enumerate(lines[::-1]):
        if not 'CMYK' in line:
            del lines[n_lines-1-i]
        else:
            lines[n_lines-1-i] = lines[n_lines-1-i].replace('\n', '').replace('  ', ' ')

    # Enumerate the lines and get the color ones
    color_pages = []
    current_page = 1
    for line in lines:
        C, M, Y = line.split(' ')[1:4]
        if float(C) != 0 or float(M) != 0 or float(Y) != 0:
            color_pages.append(current_page)
        current_page += 1

    print(f"Found {len(lines)} pages in the pdf file with {len(color_pages)} pages with colors and {len(lines) - len(color_pages)} in black and white.") 
    print(f"\n Please check that this number is the right one. Otherwise, double check the CMYK_dump file.") 
    
    return color_pages
            
def format_ranges(numbers):
    
    # Sort and remove duplicates
    numbers = sorted(set(numbers))
    ranges = []
    start = numbers[0]
    end = numbers[0]

    for number in numbers[1:]:
        if number == end + 1:
            end = number
        else:
            if start == end:
                ranges.append(f"{start}")
            else:
                ranges.append(f"{start}-{end}")
            start = end = number

    # Add the last range or number
    if start == end:
        ranges.append(f"{start}")
    else:
        ranges.append(f"{start}-{end}")

    return ",".join(ranges)


if __name__ == "__main__":
    print(format_ranges(get_CMYK()))