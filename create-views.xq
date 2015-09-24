

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

     
