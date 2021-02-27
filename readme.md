# Invoice Maker
### Problem Statement
There are many people that have side jobs or small volume businesses that need to create professional
looking invoices as well as shipping labels. While it is possible to do this with common software such as Microsoft
Office or LibreOffice the documents that people create will look only as good as their individual talent. Additionally,
the process of creating an invoice and shipping label with inexpensive or freely available tools can require many 
individual steps and repeated steps like entering shipping address on the invoice and again on the shipping label. While 
this process is not difficult, it can be made easier. 

Invoice Maker aims to solve this by offering an integrated solution that will allow a user to create an invoice and
automatically create a shipping label using information already stored or entered while creating the invoice. 

### Project Technologies/Techniques 

* Security/Authentication
  * Tomcat's JDBC Realm Authentication
  * Admin role: create/read/update/delete (crud) of all data
  * User role: create invoices, shipping labels and view previously created items. 
* Database
  * MySQL
* ORM Framework
  * Hibernate 5
* Dependency Management
  * Maven
* CSS 
  * Bootstrap
* Data Validation
  * Bootstrap
* Logging
  * Configurable logging using Log4J2. In production, only errors will normally be logged, but logging at a debug level can be turned on to facilitate trouble-shooting. 
* Hosting
  * AWS
* EasyPost API
    * Used to generate shipping labels.
* Unit Testing
  * JUnit tests to achieve 80%+ code coverage 
* IDE: IntelliJ IDEA

## Design
* [User Stories](DesignDocuments/userStories.md)
* [Site Map](DesignDocuments/SiteMap.png)
* [Wireframes](DesignDocuments/Screens.md)
### [Project Plan](projectPlan.md)
### [Time Log](timeLog.md)