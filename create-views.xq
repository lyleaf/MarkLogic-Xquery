

xquery version "1.0-ml"; 
 
  import module namespace view = "http://marklogic.com/xdmp/view" 
      at "/MarkLogic/views.xqy";
 
  view:create(
      "main",
      "employees",
      view:element-view-scope(xs:QName("Employee")),
      ( view:column("employeeid", cts:element-reference(xs:QName("EmployeeID"))), 
        view:column("firstname", cts:element-reference(xs:QName("FirstName"))),
        view:column("lastname", cts:element-reference(xs:QName("LastName")))),
      (),
      () )
