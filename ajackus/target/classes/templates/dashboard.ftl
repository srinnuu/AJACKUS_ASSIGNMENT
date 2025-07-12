<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Employee Directory Dashboard</title>
    <link rel="stylesheet" href="/static/css/styles.css">
</head>
<body>
    <div class="container">
        <h1>Employee Directory</h1>
        <div class="employee-grid">
            <#list employees as emp>
                <div class="employee-card">
                    <div><strong>ID:</strong> ${emp.id}</div>
                    <div><strong>Name:</strong> ${emp.firstName} ${emp.lastName}</div>
                    <div><strong>Email:</strong> ${emp.email}</div>
                    <div><strong>Department:</strong> ${emp.department}</div>
                    <div><strong>Role:</strong> ${emp.role}</div>
                    <div class="actions">
                        <button class="edit-btn" onclick="editEmployee('${emp.id}')">Edit</button>
                        <button class="delete-btn" onclick="deleteEmployee('${emp.id}')">Delete</button>
                    </div>
                </div>
            </#list>
        </div>
    </div>
    <script src="/static/js/dashboard.js"></script>
</body>
</html>