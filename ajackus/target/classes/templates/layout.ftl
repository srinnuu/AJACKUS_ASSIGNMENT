<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/static/css/styles.css">
    <title>Employee Directory</title>
</head>
<body>
    <header>
        <h1>Employee Directory</h1>
        <nav>
            <ul>
                <li><a href="/dashboard">Dashboard</a></li>
                <li><a href="/add-employee">Add Employee</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <#-- This is where the content of each page will be inserted -->
        <#-- The content will be defined in the specific Freemarker templates -->
        <#-- For example, the dashboard.ftl will be included here -->
        <#-- Example: <#include "dashboard.ftl"> -->
    </main>
    <footer>
        <p>&copy; 2023 Employee Directory. All rights reserved.</p>
    </footer>
    <script src="/static/js/dashboard.js"></script>
</body>
</html>