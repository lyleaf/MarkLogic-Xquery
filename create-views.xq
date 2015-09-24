

xquery version "1.0-ml"; 
 
  import module namespace view = "http://marklogic.com/xdmp/view" 
      at "/MarkLogic/views.xqy";
 
  view:schema-create("main", ())

  (: Create a new schema, named 'main', using the default permissions. :)
  
  view:create(
      "main",
      "EmailView",
      view:element-view-scope(xs:QName("Email")),
      (view:column("Email", cts:element-reference(xs:QName("Email")))),
      (),
      () )
        
        
  (: Create a new view, named 'EmailView', using the default permissions. :)
  
   view:create(
      "main", (: schema name :)
      "hotel", (: view name :)
      view:element-view-scope(xs:QName("SONG")), (: Set the view scope to limit row number :)
      ( view:column("email", cts:element-reference(xs:QName("Email"))), (: Constructs a column, named 'email', over an element range index, named 'Email'. :)
        view:column("url", cts:element-reference(xs:QName("URL"), ("nullable"))),
        view:column("attraction", cts:element-reference(xs:QName("AttractionName"))) ),
      (),
      () )

  (: Creates a view, named 'songs', of the 'main' schema that contains four columns, 
     with a scope on the element, 'SONG'. :)

     
