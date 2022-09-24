from bs4 import BeautifulSoup
import requests
import lxml
import pandas as pd


train = pd.read_csv('train_pmid.csv')
val = pd.read_csv('val_pmid.csv')

def retrieve_abstract(pmid):
	url = f'https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=pubmed&id={pmid}&retmode=XML&rettype=abstract'

	r = requests.get(url)
	soup = BeautifulSoup(r.content, 'html.parser')

	return(soup.abstracttext)#.string


train_txt = open('train.txt','w+',encoding="utf-8")

train_txt = open('train.txt','a',encoding="utf-8")
for i,r in train.iterrows():
	
	
	train_txt.write(str(retrieve_abstract(r)))
	train_txt.write('\n')

val_txt = open('val.txt','a',encoding="utf-8")
for i,r in val.iterrows():
	
	
	val_txt.write(str(retrieve_abstract(r)))
	val_txt.write('\n')	
	