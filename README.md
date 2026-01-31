E-Commerce Sales Insights & Analytics Dashboard

📌 Project Overview

This is a lightweight, high-performance Analytics Dashboard built entirely with Vanilla JavaScript, HTML5, and Tailwind CSS.

It simulates a complete e-commerce data workflow—from generating raw transaction data to processing SQL-like queries and rendering interactive visualizations—all within the browser, requiring no backend and no build steps.

🎯 Key Features

Zero-Dependency Architecture: Runs instantly in any modern browser without npm install or node modules.

Dynamic Data Engine: Generates realistic mock sales data (Dates, Products, Regions, Revenue) on the fly using JavaScript.

SQL Query Simulator: A functional interface to filter data (e.g., SELECT * FROM Sales WHERE Region = 'North') using array prototypes.

Interactive Visualizations: Custom-built SVG charts for Sales Trends and Top Products (no external charting libraries used).

Responsive Design: Fully adaptive UI using Tailwind CSS grid and flexbox systems.

🚀 Live Demo

View Live Dashboard
file:///C:/Users/kolus/Desktop/E-Commerce-Insights-Project_Ref/index.html


🛠️ Technologies Used

Frontend Core: HTML5, CSS3, Vanilla JavaScript (ES6+).

Styling: Tailwind CSS (Loaded via CDN for rapid styling).

Icons: Lucide Icons (Via CDN).

Data Logic: JavaScript map, filter, reduce for aggregation and mock SQL processing.

Visualization: Native SVG manipulation for lightweight charting.

📂 Project Structure

This project is designed to be monolithic for ease of deployment and testing.

├── index.html       # Contains Structure, Styles (Tailwind), and Logic (JS)
├── README.md        # Documentation
└── data.csv         # (Optional) Static export of the dataset for reference


💻 How to Run Locally

Since this version uses standard web technologies without a build process, running it is incredibly simple:

Clone the repository:

git clone [https://github.com/your-username/ecommerce-dashboard.git](https://github.com/your-username/ecommerce-dashboard.git)


Open the file:

Simply double-click index.html to open it in your default browser.

OR (Recommended) Use the "Live Server" extension in VS Code to run it on a local server.

No npm install or setup required!

📊 Analytics Logic Implemented

The application performs real-time calculations directly in the browser:

KPI Calculation:

Total Revenue = Sum(Order Total)

Average Order Value (AOV) = Total Revenue / Count(Orders)

Trend Analysis:

Aggregates data by Month-Year keys to plot line charts.

SQL Simulation:

Translates "WHERE" clauses into JavaScript Array.filter() functions.

Translates "ORDER BY" clauses into Array.sort() functions.

📷 Screenshots

1. Executive Dashboard

Real-time view of revenue trends and top products.
(Add a screenshot of your dashboard here)

2. SQL Data Explorer

Interface for querying raw transaction logs.
(Add a screenshot of the data tab here)

🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

Fork the Project

Create your Feature Branch (git checkout -b feature/AmazingFeature)

Commit your Changes (git commit -m 'Add some AmazingFeature')

Push to the Branch (git push origin feature/AmazingFeature)

Open a Pull Request


This project is licensed under the MIT License - see the LICENSE file for details.

Developed by [Your Name]
