from flask import Flask, render_template, request, redirect, url_for
from bs4 import BeautifulSoup
import requests

application = Flask(__name__)


@application.route("/")
def index():
    return render_template("index.html")


@application.route("/review", methods=["GET", "POST"])
def review():
    if request.method == "POST":
        product_url = request.form["product_url"]

        headers = {
            "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36"}

        response = requests.get(product_url, headers=headers)

        soup = BeautifulSoup(response.content, "html.parser")

        product_info = []

        product_name = soup.find("span", {"class": "B_NuCI"}).text

        # _2sc7ZR _2V5EHH - getting name
        names = soup.find_all("p", {"class": "_2sc7ZR _2V5EHH"})

        # values of names
        names_list = []
        for name in names:
            names_list.append(name.text)

        # _3LWZlK _1BLPMq - getting rating
        ratings = soup.find_all("div", {"class": "_3LWZlK _1BLPMq"})

        # values of ratings
        ratings_list = []
        for rating in ratings:
            ratings_list.append(rating.text)

        # _2-N8zT - getting title
        titles = soup.find_all("p", {"class": "_2-N8zT"})

        # values of title
        titles_list = []
        for title in titles:
            titles_list.append(title.text)

        # t-ZTKy - getting review
        reviews = soup.find_all("div", {"class": "t-ZTKy"})

        # values of review
        reviews_list = []
        for review in reviews:
            reviews_list.append(review.text.replace("READ MORE", ""))

        # sending all values as a list of dictionaries
        for i in range(len(names_list)):
            product_info.append(
                {"id": i + 1, "name": names_list[i], "rating": ratings_list[i], "title": titles_list[i], "review": reviews_list[i]})

        print(product_info)


        return render_template("reviews.html", product_info=product_info, product_name=product_name)


if __name__ == "__main__":
    application.run(debug=True)
