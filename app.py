from flask import Flask, render_template, request
import numpy as np
from sklearn.linear_model import LinearRegression
import pickle

with open('model/model.pkl', 'rb') as file:  
    model = pickle.load(file)
    
app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        Country  = request.form['Country']
        Sub_Category= request.form['Sub_Category']
        Segment = request.form['Segment']
        Order_Priority = request.form['Order_Priority']
        Region = request.form['Region']
        Market = request.form['Market']
        Category = request.form['Category']
        Per_Unit_Selling_price = request.form['Per_Unit_Selling_price']
        Quantity = request.form['Quantity']
        Ship_Mode = request.form['Ship_Mode']
        Shipping_Cost = request.form['Shipping_Cost']
        
        pred = model.predict(np.array([int(Country), int(Sub_Category), int(Segment),int(Order_Priority),int(Region),int(Market),int(Category),int(Per_Unit_Selling_price),int(Quantity),int(Ship_Mode),int(Shipping_Cost)]))
        print(pred)
        return render_template('index2.html', pred=str(pred))
    
    return render_template('index2.html')


if __name__ == '__main__':
    app.run( )



  
# #     Get request  
# #     app.get('/', function (req, res)) {
  
# #         Config your database credential
# #         const pool = new pg.Pool({
# #         user: 'postgres',
# #         password: '<postgres123>',
# #         host: 'localhost',
# #         port: 5432,
# #         database: 'final_project_1'
# #     })
  
# #     // Connect to your database
# #     pool.connect(config, function (err) {
  
# #         // Create Request object to preform
# #         // query operation
# #         var request = new pool.Request();
  
# #         // Query to the database and get the records
# #         request.query('select * from products',
# #             function (err, records) {
  
# #                 if (err) console.log(err)
  
# #                 // Send records as a response
# #                 // to browser
# #                 res.send(records);
  
# #             });
# #     });
# # });
  

#      http://127.0.0.1:5500/index1.html