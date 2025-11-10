# PhD thesis template for Computer Science Faculty of the University of Namur

<br><img src="figures/cs_faculty_logo.png" height="200px" alt="UNamur Computer Science Faculty">

## Description

This repository contains a proposed template intended for PhD students writing their doctoral thesis in the Computer 
Science Faculty at the University of Namur.
This template is designed to be plug-and-play.
You only need to follow the instructions and write your content text.
All layout aspects are already set up, but you are free to adapt them.
The template is also well-commented to make its handling and understanding easy.
Finally, the template is accompanied by several examples (e.g., tables, listings, algorithms, SVG images, 
enumeration styles, glossary entry styles, hyphenations, etc.).

[👀 See what it looks like with the PDF preview](Preview.pdf)

## Disclaimer

Keep in mind that this version is a proposal.
This is not an official template that has to be used.
You can use your own template.
Or, you can also adapt this one (see [License](#license)).

## Getting started

Basically, you have two main options.

### Overleaf  

1. Download the zip file of the source code: green button at the top **Code** > **Download ZIP** 
2. Login on [Overleaf](https://www.overleaf.com/)
3. Use **New project** > **Upload project** and drop the ZIP you downloaded

### Local

1. Download the source code and set up your own LaTeX environment on your local host: `git clone https://github.com/UNamurCSFaculty/ThesisTemplate.git`
2. Make sure the dependencies are installed, generally you need `pdflatex`, `make` and a TeX distribution (`texlive-full`
contains all the dependencies needed for this project)
3. Compile with `make`, this creates the file `main.pdf` and other temporary files 
4. Clean with `make clean` (this also removes `main.pdf`)


Once in the template source code, you can locate and follow the `% TODO` for replacing them with your content.

### Using git submodules for including this template in your own thesis repository

If you are using Git for version control of your thesis, it might be useful to use Git submodules to include this template repository inside your own thesis repository.
git submodules allow you to include the template repository inside your own thesis repository and keep it up to date when changes are made to the template.
To add this template as a submodule to your own thesis repository, run the following command in the root of your thesis repository:

```bash
git submodule add https://github.com/UNamurCSFaculty/ThesisTemplate.git
```

This will create a new directory called `ThesisTemplate` in your thesis repository containing the template files.

copy the following files and folders from the `ThesisTemplate` submodule to your thesis repository root:
* `figures/`
* `chapters/`
* `main.tex`

In your `main.tex`, apply the following changes to refers to the template files, now in submodule:

<details>
  <summary>View changes to make</summary>


### 1. Document Class Path
* **Location:** At the **top** of your `main.tex` file (first 2 lines).
* **Action:** Find the two lines beginning with `\documentclass`. You need to add `ThesisTemplate/` before `style/umemoir` in both lines.

    * **Change:** `style/umemoir`
    * **To:** `ThesisTemplate/style/umemoir`

### 2. Index Style Path
* **Location:** In the "CONFIGURATION" section.
* **Action:** Update the path for the index style sheet (`.ist`) inside the `\makeindex` command.

    * **Before:**
        ```latex
        \makeindex[columns=2, options= -s style/index.ist, intoc]
        ```
    * **After:**
        ```latex
        \makeindex[columns=2, options= -s ThesisTemplate/style/index.ist, intoc]
        ```


### 3. PUN Resource Path
* **Location:** In the "PUN" section.
* **Action:** Update the path for the `\input` command.

    * **Before:**
        ```latex
        \input{resources/presse_universitaire_namur}
        ```
    * **After:**
        ```latex
        \input{ThesisTemplate/resources/presse_universitaire_namur}
        ```
</details>

You can now update your `main.tex` file and write your thesis content in the `chapters/` folder as usual.

When you want to update the template to the latest version, run the following commands in your thesis repository:

```bash
git submodule update --remote --merge ThesisTemplate
```

## Contribute

Contributions are welcome (e.g., bug reports, bug fixes, refactoring, examples, documentation, interesting package 
imports, etc.).

Please use the issues and pull requests mechanisms.

## Frequently Asked Questions

* *Once I've finished my thesis, what should I do?*

  * Once your `thesis_v42_PromoterOK_JuryCheck_AliceBobCorrect_FinalVersion_GoFinal_Done_FINAL_THIS_TIME.pdf` ready, 
    you can contact [Presses Universitaires de Namur (edition.pun@unamur.be)](mailto:edition.pun@unamur.be) by 
    e-mail and explain that you would like to publish your thesis. The entire procedure will then be explained to 
    you in reply to this e-mail. [More information](https://terranostra.unamur.be/pun/Auteur/publications/).
  * At the same time, you will be asked to complete [this form for the BUMP deposit](https://unamur.be/bump/depot-these).
    You can use [this form for extracting the list of your publications](https://terranostra.unamur.be/adre/procedures-pure/creer-liste-publis-FNRS) 
    for helping you in completing the "Article" section asking you to reference the list of your publications that are 
    eventually in your thesis.
  
* *What do I need to pay attention to during final proofreading before printing?*

  * During final proofreading, in addition to checking content and spelling, pay attention to layout and colors. 
    Check that no content exceeds the defined margins or is misplaced. Also, check that black and white pages do not 
    contain small colored symbols or stylistic elements. Don't forget that a color page costs around six times 
    as much as a black-and-white page. Please note that it is important to check these elements before sending the PDF
	version to the printer for print proofing. Once the print proof has been launched, no modifications are permitted on the PDF
	(not even the correction of a spelling error, a symbol change, a color change, etc.).
	Any modification will require a new proof, which may take longer.

* *How to select only colored pages to optimize printing costs?*
  
  * To optimize the printing price, it's a good idea to specify the pages to be printed only in black & white and the ones in color.
    In fact, printing all in color by default would be an unnecessary waste of money, as pages filled only with black text would be printed
    under the color tarif package. Since the budget for printing is limited, this would considerably reduce the number of copies that can
    be printed. As a reminder, the price of a color page is six times higher than the price of a black & white page. To facilitate this task
    of selecting color pages only and avoid manual counting (with the risk of making mistakes), a script has been coded to perform this page
    selection work automatically. All you have to do is submit the PDF and the script will return, in the correct format, the selection of
    colored pages (e.g. 1, 5, 12, 14-19, 25-26, 79, ...). The script is located at `/utils/return_color_pages.py`. Instructions for executing
    it are detailed there.
  
* *Do I have to create my own cover page?*

  * No, the cover page follows a template managed by Presses Universitaires de Namur. The only elements you can 
    define are the title, the abstract, a cover photo, a photo of yourself, etc. You will receive exact instructions 
    after contacting them. Pay particular attention to the cover image if you want it to fit perfectly around the 
    edges of the area provided. This area is not a perfect rectangle and looks like a page in an open book, as 
    depicted in the UNamur logo. A wrong image, badly proportioned, badly calibrated, badly centered, badly laid out,
    etc. could lead to poor rendering, illegible, shifted, with undesirable margins, etc. Make sure you choose a 
    suitable image and ask for a print preview to Presses Universitaires de Namur.

## License
                                                                                       
You are free to:                                                                       
   * Share — copy and redistribute the material in any medium or format                
   * Adapt — remix, transform, and build upon the material                             
   * The licensor cannot revoke these freedoms as long as you follow the license       
     terms.                                                                            
                                                                                       
Under the following terms:                                                             
   * Attribution — You must give appropriate credit, provide a link to the license,    
     and indicate if changes were made. You may do so in any reasonable manner, but    
     not in any way that suggests the licensor endorses you or your use.               
   * NonCommercial — You may not use the material for commercial purposes.             
   * ShareAlike — If you remix, transform, or build upon the material, you must        
     distribute your contributions under the same license as the original.             
   * No additional restrictions — You may not apply legal terms or technological       
     measures that legally restrict others from doing anything the license permits.    
                                                                                       
More details: http://creativecommons.org/licenses/by-nc-sa/4.0/                        
                                                                                       
Authors:                                                                               
   * [Fabian Gilson](https://researchportal.unamur.be/fr/persons/fgilson)                                                                 
   * [Nicolas Genon](https://researchportal.unamur.be/fr/persons/nicolas-genon)

Contributors:
   * [Xavier Devroey](https://researchportal.unamur.be/fr/persons/xdevroey)
   * [Tony Leclercq](https://researchportal.unamur.be/fr/persons/tolecler)
   * [Maxime Cauz](https://researchportal.unamur.be/fr/persons/mcauz)
   * [Maxime André](https://researchportal.unamur.be/fr/persons/maxime-andr%C3%A9)
   * [Valentin Delchevalerie](https://researchportal.unamur.be/fr/persons/vdelchev)
   * [Jérôme Fink](https://researchportal.unamur.be/fr/persons/jfink)
   * [Jules Dejaeghere](https://researchportal.unamur.be/fr/persons/jdejaegh)
   * [Yasmine Akaichi](https://researchportal.unamur.be/fr/persons/yakaichi)
   * ...
