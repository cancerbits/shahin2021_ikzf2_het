# Supplementary code repository for: Identification of germline monoallelic mutations in IKZF2 in patients with immune dysregulation

Authors: Tala Shahin,<sup>1-3,* </sup> Daniel Mayr,<sup>1-3,* </sup> Mohamed R. Shoeb,<sup>2</sup> Hye Sun Kuehn,<sup>4</sup> Birgit Hoeger,<sup>1-3</sup> Sarah Giuliani,<sup>1,2</sup> Lisa M. Gawriyski,<sup>5</sup> Özlem Yüce Petronczki,<sup>1-3</sup> Jerome Hadjadj,<sup>6</sup> Sevgi Köstel Bal,<sup>1-3</sup> Samaneh Zoghi,<sup>1-3,7,8</sup> Matthias Haimel,</sup>1-3</sup> Raul Jimenez Heredia,</sup>1-3</sup> David Boutboul,</sup>9</sup> Michael P. Triebwasser,</sup>10,11</sup> Fanny Rialland-Battisti,</sup>12</sup> Nathalie Costedoat Chalumeau,</sup>13</sup> Pierre Quartier,</sup>6,14</sup> Stuart G. Tangye,</sup>15,16</sup> Thomas A. Fleisher,4 Nima Rezaei,</sup>7,8</sup> Neil Romberg,</sup>10,11</sup> Sylvain Latour,</sup>9,†</sup> Markku Varjosalo,</sup>5,†</sup> Florian Halbritter,</sup>2,†</sup> Fred eric Rieux-Laucat,</sup>6,†</sup> Irinka Castanon,</sup>1,2,†</sup> Sergio D. Rosenzweig,</sup>4,* </sup> and Kaan Boztug</sup>1-3,17,*</sup>


Affiliations:

<sup>1</sup>Ludwig Boltzmann Institute for Rare and Undiagnosed Diseases, Vienna, Austria

<sup>2</sup>St Anna Children’s Cancer Research Institute, Vienna, Austria

<sup>3</sup>CeMM Research Center for Molecular Medicine, Austrian Academy of Sciences, Vienna, Austria

<sup>4</sup>Immunology Service, Department of Laboratory Medicine, Clinical Center, National Institutes of Health, Bethesda, MD

<sup>5</sup>Proteomics Unit, Institute of Biotechnology, Helsinki Institute of Life Science, University of Helsinki, Helsinki, Finland

<sup>6</sup>Laboratory of Immunogenetics of Pediatric Autoimmune Diseases, INSERM Unite Mixte de Recherche (UMR) 1163, Institut Imagine, Universite de Paris, Paris, France

<sup>7</sup>Research Center for Immunodeficiencies, Children’s Medical Center, Tehran University of Medical Sciences, Tehran, Iran

<sup>8</sup>Network of Immunity in Infection, Malignancy and Autoimmunity, Universal Scientific Education and Research Network, Tehran, Iran

<sup>9</sup>Laboratory of Lymphocyte Activation and Susceptibility to EBV Infection, INSERM UMR 1163, Institut Imagine, Universite de Paris, Paris, France

<sup>10</sup> Division of Immunology and Allergy, Children’s Hospital of Philadelphia, Philadelphia, PA

<sup>11</sup>Department of Pediatrics, Perelman School of Medicine, University of
Pennsylvania, Philadelphia, PA

<sup>12</sup>Pediatric Onco-Hematology Department, Centre Hospitalier Universitaire de Nantes, Nantes, France

<sup>13</sup>Internal Medicine, Cochin Hospital, Assistance Publique–Hopitaux de Paris (AP-HP) Centre, Universite de Paris, Paris, France

<sup>14</sup>Department of Paediatric Immuno-Haematology and Rheumatology, Reference Center for Rheumatic, AutoImmune and Systemic Diseases in Children, Hopital Necker-Enfants Malades, AP-HP, Paris, France

<sup>15</sup>Garvan Institute of Medical Research, Darlinghurst, NSW, Australia

<sup>16</sup>St Vincent’s Clinical School, Faculty of Medicine, University of New South Wales, Sydney, NSW, Australia

## Abstract:

Helios (encoded by IKZF2) is a member of the Ikaros transcription factor family characterized by 4 highly conserved N-terminal C2H2 zinc finger domains involved in DNA binding and 2 C-terminal C2H2 zinc fingers required to form homodimeric for heterodimeric protein interactions with other family members, such as Ikaros or Aiolos. Helios has been shown to control lymphocyte development and T follicular helper Tfh)– and natural killer (NK)–cell differentiation and maintain the suppressive function of regulatory T Treg) cells and is frequently deleted in hypodiploid B-cell acute lymphoblastic leukemia (B-ALL).

Monoallelic germline mutations in Ikaros (IKZF1) and Aiolos (IKZF3) have been associated with combined immunodeficiency, common variable immunodeficiency, systemic lupus erythematosus (SLE), immune thrombocytopenia (ITP) with incomplete penetrance. Here, we identify patients with germline monoallelic mutations in IKZF2 presenting with features of immune dysregulation, including ITP, SLE, and susceptibility to Epstein-Barr virus-driven complications. We determine the detrimental effects of these mutations on Helios function, illustrating the key role of Helios in maintaining immune homeostasis.

# Repository structure:

* `src` - data analysis code for single-cell RNA-seq

# Analysis workflow:

* Separate scripts are dedicated to each analysis step to faciliate understanding and maintaining the workflow. The analysis pipeline is defined in `src/initialize.Rmd` where scripts are loaded sequentially.  For optimal reproducibility, we used a Docker container `mo-ikzf2-v1.Dockerfile`, which contains R and all dependent libraries preinstalled.

# Data preparation and loading

1. Download and, if needed, preprocess the EGA data into a defined input directory. Metadata table can be found in the Supplemental Information (Supplemental Table 1) accompanying the manuscript.
2. Set the path to the input directory at the top of `src/initialize.Rmd` and use `mo-ikzf2-v1.Dockerfile` to run the analysis workflow.

Input data can be obtained from EGA (link below).

## Links:

* European Genome-Phenome Archive (EGA): <a href="https://ega-archive.org/studies/EGAS00001005675">control samples</a> and <a href="https://ega-archive.org/studies/EGAS00001005874">patient</a>.
* Paper: <a href="https://doi.org/10.1182/bloodadvances.2021006367">https://doi.org/10.1182/bloodadvances.2021006367</a>
