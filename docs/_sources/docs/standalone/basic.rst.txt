basic
========

.. raw:: html

   <!-- head -->

.. raw:: html

   <style>
     body {
       padding: 25px;
     }
     #toolbar-container {
       border-top: 1px solid #ccc;
       border-left: 1px solid #ccc;
       border-right: 1px solid #ccc;
       padding: 10px;
     }
     #editor-container {
       border: 1px solid #ccc;
       height: 250px;
     }
   </style>

.. raw:: html

   <!-- head -->

.. container::
   :name: toolbar-container

   Sans Serif Serif Monospace Small Normal Large Huge White Black Red
   Orange Yellow Green Blue Purple White Black Red Orange Yellow Green
   Blue Purple Left Center Right Justify Bold Italic Under Strike Link
   Image Bullet List

.. container::
   :name: editor-container

.. raw:: html

   <!-- script -->

.. raw:: html

   <script src="{{site.cdn}}{{site.version}}/{{site.quill}}"></script>

.. raw:: html

   <script>
     var quill = new Quill('#editor-container', {
       debug: 'info',
       modules: {
         toolbar: '#toolbar-container'
       }
     });
   </script>

.. raw:: html

   <!-- script -->
