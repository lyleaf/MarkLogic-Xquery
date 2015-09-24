xquery version "1.0-ml"; 
 
  import module namespace view = "http://marklogic.com/xdmp/view" 
      at "/MarkLogic/views.xqy";
 
  view:schema-create("main", ())

  (: Create a new schema, named 'main', using the default permissions. :)
