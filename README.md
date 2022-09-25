# IHC-BERT
Natural Language Processing for Automated Extraction of Immunohistochemical Profiles from Histopathology Reports

Follow the steps in order to achieve the same resutls

Datasets are available upon request. They are not attached due to ethical reasons.

'PMIDs.txt' contains the list of PubMed IDs for IHC-related abstracts

1. Run 'get_pmids.ipynb' to download PubMed abstracts using the list of PMIDs from train_pmid.csv, val_pmid.csv. The extracted abstracts are stored in 'data' directory so that you do not need to extract texts yuorself.

2. Run 'run_mlm.sh' to pre-train Base-BERT, 'run_mlm_blue.sh' to pre-train BlueBERT, 'run_mlm_clinical.sh' to pre-train Bio_ClinicalBERT. Eg. To start pre-training run 'bash run_mlm.sh'. Prior to running the pre-training make sure that the required packages are installe. To do that run comand 'pip install -r requirements.txt'. Create three directories before running each script: IHC_BERT, BLUE_IHC_BERT, CLINICAL_IHC_BERT. Create two sub-directories within each new directory:'weights' & 'runs'.

3. Run 'Extract all xml files.ipynb' to extract the annotated reports from zip files exported from INCEpTION

4. Run 'get_ground_truth.ipynb' to extract per-token annotations

5. Run 'fine_tuning.py' to fine-tune 6 models (BERT-BASE, BlueBERT, Bio_ClinicalBERT, IHC-BERT-BASE, IHC-BlueBERT, IHC-Bio_ClinicalBERT). To check execution of the code download 'fine_tuning.ipnb'. It is too long to render on github.

6. Run 'marker_performances.ipynb' to extract by marker performance on test dataset, run 'marker_performances_hl.ipnb' to extract by marker performance on classical Hodgkin Lymphoma dataset, run 'marker_performances_oc.ipynb' to extract by marker performance on Marker Abundances in Metastatic High Grade Serous Ovarian Carcinoma dataset
