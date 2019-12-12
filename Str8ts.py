from beautifulscraper import BeautifulScraper
import requests 
from bs4 import BeautifulSoup
import time 
from selenium import webdriver
from selenium.webdriver.firefox.options import Options

import imgkit

options = Options();
options.add_argument("--headless");
browser = webdriver.Firefox(options=options);


url = "https://www.str8ts.de/"
browser.get(url)
html = browser.page_source

#with open("page.html", "w") as out:
#    out.write(req.text)

soup = BeautifulSoup(html, "html.parser")

match = soup.find("table")

with open("page.html", "w") as html_out:
    html_out.write(str(match))

imgkit.from_file('page.html', 'out.jpg')


