# IHC-BERT
Natural Language Processing for Automated Extraction of Immunohistochemical Profiles from Histopathology Reports

Follow the steps in order to achieve the same resutls

Datasets are available upon request. They are not attached due to ethical reasons.

'PMIDs.txt' contains the list of PubMed IDs for IHC-related abstracts

1. Run 'get_pmid.ipnb' to download PubMed abstracts using the list of PMIDs.

2. Run 'run_mlm.sh' to pre-train Base-BERT, 'run_mlm_blue.sh' to pre-train BlueBERT, 'run_mlm_clinical.sh' to pre-train Bio_ClinicalBERT, 

3. Run 'extract_reports.ipnb' to extract the annotated reports from zipped directories

4. Run 'get_ground_truth.ipnb' to extract per-token annotations

5. Run 'named_entity_recognition.ipnb' to fine-tune 6 models (BERT-BASE, BlueBERT, Bio_ClinicalBERT, IHC-BERT-BASE, IHC-BlueBERT, IHC-Bio_ClinicalBERT)

6. Run 'marker_performances.ipnb' to extract by marker performance on test dataset, run 'marker_performances_hl.ipnb' to extract by marker performance on classical Hodgkin Lymphoma dataset, run 'marker_performances_oc.ipnb' to extract by marker performance on Marker Abundances in Metastatic High Grade Serous Ovarian Carcinoma dataset
