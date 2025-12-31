  🎓 Student Registration Web App

A simple Java web application for managing student registrations.  
Built using Java Servlets and JSP, following the MVC pattern, with data stored in a PostgreSQL database.

This project was developed as part of a university assignment to practice Java web development, database connectivity, and MVC architecture.

---

## 🛠 Tech Stack

- **Backend:** Java Servlets (Java 11+)
- **Frontend:** JSP, CSS (Custom Dark Theme)
- **Database:** PostgreSQL (Neon.tech – Cloud)
- **Build Tool:** Maven
- **Server:** Apache Tomcat 9.0

---

## 📂 Project Structure

```text
src/main/java/
├── controller/
│   └── StudentServlet.java     # Handles requests and responses
├── dao/
│   └── StudentDAO.java         # Database connection and SQL logic
└── model/
    └── Student.java            # Student data model

src/main/webapp/
├── index.jsp                   # Registration form
├── show_all.jsp                # Display registered students
└── WEB-INF/
    └── web.xml                 # Servlet configuration
```

✨ Features
----------

*   📝 **Student Registration**
    
    *   Add student name, email, and academic year
        
    *   Server-side validation using Servlets
        
*   📋 **Student Directory**
    
    *   View all registered students
        
    *   Data fetched from PostgreSQL using GET requests
        
*   🌙 **Dark Mode UI**
    
    *   Custom CSS styling
        
    *   Layout built using Flexbox
        

🧠 Notes
---

*   Follows basic **MVC architecture**
    
*   Uses **DAO pattern** for database access
    
*   Designed to stay simple and easy to understand for learning purposes
    
