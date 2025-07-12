// This file contains the JavaScript code for the dashboard page.
// It handles interactions such as the "Edit" and "Delete" button functionalities 
// and any dynamic updates to the employee list.

document.addEventListener('DOMContentLoaded', function() {
    const employeeList = document.getElementById('employee-list');

    // Sample data for demonstration
    const employees = [
        { id: 1, firstName: 'John', lastName: 'Doe', email: 'john.doe@example.com', department: 'HR', role: 'Manager' },
        { id: 2, firstName: 'Jane', lastName: 'Smith', email: 'jane.smith@example.com', department: 'IT', role: 'Developer' },
        // Add more sample employees as needed
    ];
     
    function editEmployee(id) {
    alert('Edit functionality for Employee ID: ' + id + ' is not implemented.');
}

function deleteEmployee(id) {
    if (confirm('Are you sure you want to delete Employee ID: ' + id + '?')) {
        alert('Delete functionality for Employee ID: ' + id + ' is not implemented.');
    }
}

    function renderEmployeeList() {
        employeeList.innerHTML = '';
        employees.forEach(employee => {
            const employeeRow = document.createElement('div');
            employeeRow.className = 'employee-row';
            employeeRow.innerHTML = `
                <div>${employee.id}</div>
                <div>${employee.firstName}</div>
                <div>${employee.lastName}</div>
                <div>${employee.email}</div>
                <div>${employee.department}</div>
                <div>${employee.role}</div>
                <button onclick="editEmployee(${employee.id})">Edit</button>
                <button onclick="deleteEmployee(${employee.id})">Delete</button>
            `;
            employeeList.appendChild(employeeRow);
        });
    }

    window.editEmployee = function(id) {
        // Logic for editing an employee
        alert('Edit employee with ID: ' + id);
    };

    window.deleteEmployee = function(id) {
        // Logic for deleting an employee
        const index = employees.findIndex(emp => emp.id === id);
        if (index > -1) {
            employees.splice(index, 1);
            renderEmployeeList();
        }
    };

    renderEmployeeList();
});