# Inventory Manager - Spring MVC CRUD Application

This project is a simple Spring MVC-based inventory management system with CRUD functionality.

---

## 📦 Prerequisites

Make sure you have the following installed:

- Java (JDK 8 or later)
- Maven
- Apache Tomcat (version 8 or compatible)
- Git (optional, for cloning)

---

## 🚀 Steps to Build and Deploy

Open your terminal and run the following commands:

```bash
# 1. Navigate to the project directory
cd /mnt/e/Downloads/InventoryMGRSpringMVCCRUD

# 2. Build the project using Maven
mvn clean package

# 3. Copy the WAR file to the Tomcat webapps directory
sudo cp target/InventoryMGRSpringMVCCRUD-0.0.1-SNAPSHOT.war /opt/tomcat8/webapps/

# 4. Stop the Tomcat server (if running)
sudo /opt/tomcat8/bin/shutdown.sh

# 5. Navigate to the Tomcat bin directory
cd /opt/tomcat8/bin

# 6. Start the Tomcat server
sudo ./startup.sh

Once Deployed , you can access the application in your browser : http://localhost:8080/InventoryMGRSpringMVCCRUD-0.0.1-SNAPSHOT/

🛠 Troubleshooting
Make sure Tomcat has permission to access your WAR file.

Check logs in /opt/tomcat8/logs if the app doesn't load.