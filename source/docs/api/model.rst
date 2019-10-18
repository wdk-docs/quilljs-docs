Model
-----

find experimental
~~~~~~~~~~~~~~~~~

Static method returning the Quill or
`Blot <https://github.com/quilljs/parchment>`__ instance for the given
DOM node. In the latter case, passing in true for the ``bubble``
parameter will search up the given DOM’s ancestors until it finds a
corresponding `Blot <https://github.com/quilljs/parchment>`__.

**Methods**

.. code:: javascript

   Quill.find(domNode: Node, bubble: boolean = false): Blot | Quill

**Examples**

.. code:: javascript

   var container = document.querySelector("#container");
   var quill = new Quill(container);
   console.log(Quill.find(container) === quill);   // Should be true

   quill.insertText(0, 'Hello', 'link', 'https://world.com');
   var linkNode = document.querySelector('#container a');
   var linkBlot = Quill.find(linkNode);

getIndex experimental
~~~~~~~~~~~~~~~~~~~~~

Returns the distance between the beginning of document to the occurrence
of the given `Blot <https://github.com/quilljs/parchment>`__.

**Methods**

.. code:: javascript

   getIndex(blot: Blot): Number

**Examples**

.. code:: javascript

   let [line, offset] = quill.getLine(10);
   let index = quill.getIndex(line);   // index + offset should == 10

getLeaf experimental
~~~~~~~~~~~~~~~~~~~~

Returns the leaf `Blot <https://github.com/quilljs/parchment>`__ at the
specified index within the document.

**Methods**

.. code:: javascript

   getLeaf(index: Number): Blot

**Examples**

.. code:: javascript

   quill.setText('Hello Good World!');
   quill.formatText(6, 4, "bold", true);

   let [leaf, offset] = quill.getLeaf(7);
   // leaf should be a Text Blot with value "Good"
   // offset should be 1, since the returned leaf started at index 6

getLine experimental
~~~~~~~~~~~~~~~~~~~~

Returns the line `Blot <https://github.com/quilljs/parchment>`__ at the
specified index within the document.

**Methods**

.. code:: javascript

   getLine(index: Number): [Blot, Number]

**Examples**

.. code:: javascript

   quill.setText('Hello\nWorld!');

   let [line, offset] = quill.getLine(7);
   // line should be a Block Blot representing the 2nd "World!" line
   // offset should be 1, since the returned line started at index 6

getLines experimental
~~~~~~~~~~~~~~~~~~~~~

Returns the lines contained within the specified location.

**Methods**

.. code:: javascript

   getLines(index: Number = 0, length: Number = remaining): Blot[]
   getLines(range: Range): Blot[]

**Examples**

.. code:: javascript

   quill.setText('Hello\nGood\nWorld!');
   quill.formatLine(1, 1, 'list', 'bullet');

   let lines = quill.getLines(2, 5);
   // array with a ListItem and Block Blot,
   // representing the first two lines
