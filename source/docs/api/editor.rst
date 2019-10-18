Editor
------

blur
~~~~

Removes focus from the editor.

**Methods**

.. code:: javascript

   blur()

**Examples**

.. code:: javascript

   quill.blur();

disable
~~~~~~~

Shorthand for ```enable(false)`` <#enable>`__.

enable
~~~~~~

Set ability for user to edit, via input devices like the mouse or
keyboard. Does not affect capabilities of API calls, when the ``source``
is ``"api"`` or \`“silent”.

**Methods**

.. code:: javascript

   enable(enabled: boolean = true)

**Examples**

.. code:: javascript

   quill.enable();
   quill.enable(false);   // Disables user input

focus
~~~~~

Focuses the editor and restores its last range.

**Methods**

.. code:: javascript

   focus()

**Examples**

.. code:: javascript

   quill.focus();

hasFocus
~~~~~~~~

Checks if editor has focus. Note focus on toolbar, tooltips, does not
count as the editor.

**Methods**

.. code:: javascript

   hasFocus(): Boolean

**Examples**

.. code:: javascript

   quill.hasFocus();

update
~~~~~~

Synchronously check editor for user updates and fires events, if changes
have occurred. Useful for collaborative use cases during conflict
resolution requiring the latest up to date state.
`Source </docs/api/#events>`__ may be ``"user"``, ``"api"``, or
``"silent"``.

**Methods**

.. code:: javascript

   update(source: String = 'user')

**Examples**

.. code:: javascript

   quill.update();
