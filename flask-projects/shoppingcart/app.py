from flask import Flask, render_template, request

app = Flask(__name__)

cartItems = []


@app.route("/", methods=["GET", "POST"])
def index():
    if request.method == "GET":
        products = [
            {
                "id": 1,
                "product_name": "Laptop",
                "price": 400
            },
            {
                "id": 2,
                "product_name": "Watch",
                "price": 100
            },
            {
                "id": 3,
                "product_name": "Bread",
                "price": 10
            }
        ]
        return render_template("index.html", products=products, cartItems=cartItems)
    elif request.method == "POST":
        id = request.form["id"]
        product_name = request.form["product_name"]
        price = request.form["price"]

        cartItems.append({
            "id": id,
            "product_name": product_name,
            "price": price,
        })

        products = [
            {
                "id": 1,
                "product_name": "Laptop",
                "price": 400
            },
            {
                "id": 2,
                "product_name": "Watch",
                "price": 100
            },
            {
                "id": 3,
                "product_name": "Bread",
                "price": 10
            }
        ]
        return render_template("index.html", products=products, cartItems=cartItems)


@app.route("/cart", methods=["GET", "POST"])
def cart():
    if request.method == "GET":
        # total cost
        total = 0
        for item in cartItems:
            total += int(item["price"])
        return render_template("cart.html", cartItems=cartItems, total=total)
    elif request.method == "POST":
        id = request.form["id"]

        for item in cartItems:
            if item["id"] == id:
                cartItems.remove(item)

        # total cost
        total = 0
        for item in cartItems:
            total += int(item["price"])

        return render_template("cart.html", cartItems=cartItems, total=total)


if __name__ == "__main__":
    app.run()
