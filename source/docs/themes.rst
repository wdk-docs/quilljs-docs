themes
============

Themes allow you to easily make your editor look good with minimal
effort. Quill features two offically supported themes: `Snow <#snow>`__
and `Bubble <#bubble>`__.

Usage
~~~~~

.. code:: html

   <!-- Add the theme's stylesheet -->
   <link rel="stylesheet" href="{{site.cdn}}{{site.version}}/quill.bubble.css">

   <script src="{{site.cdn}}{{site.version}}/quill.js"></script>
   <script>
   var quill = new Quill('#editor', {
     theme: 'bubble'   // Specify theme in configuration
   });
   </script>

Bubble
------

Bubble is a simple tooltip based theme.

.. container:: standalone-container

   .. container::
      :name: bubble-container

Standalone

Snow
----

Snow is a clean, flat toolbar theme.

.. container:: standalone-container

   .. container::
      :name: snow-container

Standalone

Customization
~~~~~~~~~~~~~

Themes primarily control the visual look of Quill through its CSS
stylesheet, and many changes can easily be made by overriding these
rules. This is easiest to do, as with any other web application, by
simply using your browser developer console to inspect the elements to
view the rules affecting them.

Many other customizations can be done through the respective modules.
For example, the toolbar is perhaps the most visible user interface, but
much of the customization is done through the `Toolbar
module </docs/modules/toolbar/>`__.

.. raw:: html

   <!-- script -->

.. raw:: html

   <script src="{{site.katex}}/katex.min.js"></script>

.. raw:: html

   <script src="{{site.highlightjs}}/highlight.min.js"></script>

.. raw:: html

   <script src="{{site.cdn}}{{site.version}}/{{site.quill}}"></script>

.. raw:: html

   <script>
     var snowQuill = new Quill('#snow-container', {
       placeholder: 'Compose an epic...',
       modules: {
         toolbar: [
           [{ header: [] }],
           ['bold', 'italic', 'underline', 'link'],
           [{ color: [] }, { background: [] }],
           [{ list: 'ordered' }, { list: 'bullet' }],
           ['clean']
         ]
       },
       theme: 'snow'
     });
     var bubbleQuill = new Quill('#bubble-container', {
       placeholder: 'Compose an epic...',
       theme: 'bubble'
     });
   </script>

.. raw:: html

   <!-- script -->
