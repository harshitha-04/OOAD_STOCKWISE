# Inventory Manager - Spring MVC CRUD Application

This is a basic inventory management system built using **Spring MVC**. The application allows you to perform full **CRUD** (Create, Read, Update, Delete) operations on inventory items. It’s packaged as a WAR file and designed to be deployed on an Apache Tomcat server.

---

## 🧰 Requirements

Before running the application, ensure the following tools are installed on your system:

- Java JDK 8 or higher  
- Maven  
- Apache Tomcat (version 8 recommended)  
- Git (optional, for version control)

---

## ⚙️ Setup & Deployment Instructions

Follow these steps to build and deploy the project on your local system:

### 1. Build the Application

Open **WSL** and navigate to the directory where your project is located. Then build the application using Maven:

```bash
mvn clean package
```

This will generate a `.war` file inside the `target/` directory.

### 2. Deploy to Tomcat

Copy the generated WAR file into Tomcat’s `webapps/` directory. Assuming `/opt/tomcat8/` is your Tomcat installation:

```bash
sudo cp target/InventoryMGRSpringMVCCRUD-0.0.1-SNAPSHOT.war /opt/tomcat8/webapps/
```

### 3. Restart Tomcat

To apply changes and redeploy the application:

```bash
sudo /opt/tomcat8/bin/shutdown.sh
cd /opt/tomcat8/bin
sudo ./startup.sh
```

---

## 🌐 Access the Application

Once Tomcat is running and the WAR is deployed, open your browser and navigate to:

```
http://localhost:8080/InventoryMGRSpringMVCCRUD-0.0.1-SNAPSHOT/
```

You should now see the inventory management system’s home page.

---

## 🔧 Troubleshooting Tips

- Ensure that Tomcat has the proper permissions to access and deploy files from `/opt/tomcat8/webapps/`.
- If the application doesn't load, check the Tomcat logs at:

```bash
/opt/tomcat8/logs/
```

Common issues may include incorrect file permissions, missing dependencies, or port conflicts.

---

## 📁 Project Structure

```
InventoryMGRSpringMVCCRUD/
├── src/
├── target/
│   └── InventoryMGRSpringMVCCRUD-0.0.1-SNAPSHOT.war
├── pom.xml
└── README.md
```
