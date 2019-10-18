��                          B    �  P     C     S     b     y     �     �  \  �  �     �   �     �	  3  �	  �   �
  �   l    ^     m  L  u  I   �  A    6  N  4  �  �  �  .  c  �   �    v     �  �   �  �   �  �   C  }    B  �  �  �     �      �      �      �      !     )!  \  9!  �   �"  �   #     $  3  '$  �   [%  �   �%    �&     �'  L  �'  I   L*  A  �*  6  �+  4  -  �  D.  .  �/  �   1     2     3  �   "3  �   4  �   �4   A complete reference on Parchment, Blots and Attributors can be found on Parchment’s own `README <https://github.com/quilljs/parchment/>`__. For an in-depth walkthrough, take a look at `Cloning Medium with Parchment </guides/cloning-medium-with-parchment/>`__, which starts with Quill understanding just plain text, to adding all of the formats `Medium <https://medium.com/>`__ supports. Most of the time, you will not have to build formats from scratch since most are already implemented in Quill, but it is still useful to understanding how Quill works at this deeper level. A few modules—\ `Clipboard </docs/modules/clipboard/>`__, `Keyboard </docs/modules/keyboard/>`__, and `History </docs/modules/history/>`__—need to be included as core functionality depend on the APIs they provide. For example, even though undo and redo is basic, expected, editor functionality, the native browser behavior handling of this is inconsistent and unpredictable. The History module bridges the gap by implementing its own undo manager and exposing ``undo()`` and ``redo()`` as APIs. Class vs Inline Configurations Content and Formatting Customizing Attributors Customizing Blots Extending Blots Finally, you may want to add functionality not provided by existing modules. In this case, it may be convenient to organize this as a Quill module, which the `Building A Custom Module </guides/building-a-custom-module/>`__ guide covers. Of course, it is certainly valid to just keep this logic separate from Quill, in your application code instead. Formats represented by Blots can also be customized. Here is how you would change the DOM Node used to represent bold formatting. From there you can implement and attach your own UI elements like custom dropdowns or tooltips. The last section of `Cloning Medium with Parchment </guides/cloning-medium-with-parchment/#final-polish>`__ provides an example of this in action. How to customize quill? If you would like to drastically change UI interactions, you can omit the ``theme`` configuration option, which will give you an unstyled Quill editor. You do still need to include a minimal stylesheet that, for example, makes sure spaces render in all browsers and ordered lists are appropriately numbered. In addition to choosing the particular Attributor, you can also customize existing ones. Here is an example of the font whitelist to add additional fonts. In general, common customizations are handled in `configurations <#configurations/>`__, user interfaces by `Themes <#themes>`__ and CSS, functionality by `modules <#modules>`__, and editor contents by `Parchment <#content-and-formatting>`__. Like Quill’s core itself, many `modules </docs/modules/>`__ expose additional configuration options and APIs. Before deciding to replace a module, take a look at its documentation. Often your desired customization is already implemented as a configuration or API call. Modules Nevertheless, staying true to Quill modular design, you can still drastically change the way undo and redo—or any other core functionality—works by implementing your own undo manager to replace the History module. As long as you implement the same API interface, Quill will happily use your replacement module. This is most easily done by inheriting from the existing module, and overwriting the methods you want to change. Take a look at the `modules </docs/modules/>`__ documentation for a very simple example of overwriting the core `Clipboard </docs/modules/clipboard/>`__ module. Note you still need to add styling for these classes into your CSS files. Otherwise, if you would like to drastically change functionality an existing module already covers, you can simply not include it—or explicitly exclude it when a theme includes it by default—and implement the functionality to your liking external to Quill, using the same `API </docs/api/>`__ the default module uses. Quill allows modification and extension of the contents and formats that it understands through its document model `Parchment <https://github.com/quilljs/parchment/>`__. Content and formats are represented in Parchment as either Blots or Attributors, which roughly correspond to Nodes or Attributes in the DOM. Quill favors Code over Configuration™, but for very common needs, especially where the equivalent code would be lengthy or complex, Quill provides `configuration </docs/configuration/>`__ options. This would be a good first place to look to determine if you even need to implement any custom functionality. Quill is designed with a modular architecture composed of a small editing core, surrounded by modules that augment its functionality. Some of this functionality is quite integral to editing, such as the `History </docs/modules/history/>`__ module, which manages undo and redo. Because all modules use the same public `API </docs/api/>`__ exposed to the developer, even interchanging core modules is possible, when necessary. Quill officially supports a standard toolbar theme `Snow </docs/themes/#snow>`__ and a floating tooltip theme `Bubble </docs/themes/#bubble>`__. Since Quill is not confined within an iframe like many legacy editors, many visual modifications can be made with just CSS, using one of the existing themes. Quill uses classes, instead of inline style attributes, when possible, but both are implemented for you to pick and choose. A live example of this is implemented as a `Playground snippet </playground/#class-vs-inline-style>`__. Quill was designed with customization and extension in mind. This is achieved by implementing a small editor core exposed by a granular, well defined `API </docs/api/>`__. The core is augmented by `modules </docs/modules>`__, using the same `APIs </docs/api/>`__ you have access to. Themes Two of the most powerful options is ``modules`` and ``theme``. You can drastically change or expand what Quill can and does do by simply adding or removing individual `modules </docs/modules/>`__ or using a different `theme </docs/themes/>`__. You can also extend existing formats. Here is a quick ES6 implementation of a list item that does not permit formatting its contents. Code blocks are implemented in exactly this way. You can view a list of Blots and Attributors available by calling ``console.log(Quill.imports);``. Direct modification of this object is not supported. Use ```Quill.register`` </docs/api/#register>`__ instead. Project-Id-Version: quilljs-docs 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-10-18 15:05+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 A complete reference on Parchment, Blots and Attributors can be found on Parchment’s own `README <https://github.com/quilljs/parchment/>`__. For an in-depth walkthrough, take a look at `Cloning Medium with Parchment </guides/cloning-medium-with-parchment/>`__, which starts with Quill understanding just plain text, to adding all of the formats `Medium <https://medium.com/>`__ supports. Most of the time, you will not have to build formats from scratch since most are already implemented in Quill, but it is still useful to understanding how Quill works at this deeper level. A few modules—\ `Clipboard </docs/modules/clipboard/>`__, `Keyboard </docs/modules/keyboard/>`__, and `History </docs/modules/history/>`__—need to be included as core functionality depend on the APIs they provide. For example, even though undo and redo is basic, expected, editor functionality, the native browser behavior handling of this is inconsistent and unpredictable. The History module bridges the gap by implementing its own undo manager and exposing ``undo()`` and ``redo()`` as APIs. Class vs Inline Configurations Content and Formatting Customizing Attributors Customizing Blots Extending Blots Finally, you may want to add functionality not provided by existing modules. In this case, it may be convenient to organize this as a Quill module, which the `Building A Custom Module </guides/building-a-custom-module/>`__ guide covers. Of course, it is certainly valid to just keep this logic separate from Quill, in your application code instead. Formats represented by Blots can also be customized. Here is how you would change the DOM Node used to represent bold formatting. From there you can implement and attach your own UI elements like custom dropdowns or tooltips. The last section of `Cloning Medium with Parchment </guides/cloning-medium-with-parchment/#final-polish>`__ provides an example of this in action. 如何自定义鹅毛笔？ If you would like to drastically change UI interactions, you can omit the ``theme`` configuration option, which will give you an unstyled Quill editor. You do still need to include a minimal stylesheet that, for example, makes sure spaces render in all browsers and ordered lists are appropriately numbered. In addition to choosing the particular Attributor, you can also customize existing ones. Here is an example of the font whitelist to add additional fonts. In general, common customizations are handled in `configurations <#configurations/>`__, user interfaces by `Themes <#themes>`__ and CSS, functionality by `modules <#modules>`__, and editor contents by `Parchment <#content-and-formatting>`__. Like Quill’s core itself, many `modules </docs/modules/>`__ expose additional configuration options and APIs. Before deciding to replace a module, take a look at its documentation. Often your desired customization is already implemented as a configuration or API call. Modules Nevertheless, staying true to Quill modular design, you can still drastically change the way undo and redo—or any other core functionality—works by implementing your own undo manager to replace the History module. As long as you implement the same API interface, Quill will happily use your replacement module. This is most easily done by inheriting from the existing module, and overwriting the methods you want to change. Take a look at the `modules </docs/modules/>`__ documentation for a very simple example of overwriting the core `Clipboard </docs/modules/clipboard/>`__ module. Note you still need to add styling for these classes into your CSS files. Otherwise, if you would like to drastically change functionality an existing module already covers, you can simply not include it—or explicitly exclude it when a theme includes it by default—and implement the functionality to your liking external to Quill, using the same `API </docs/api/>`__ the default module uses. Quill allows modification and extension of the contents and formats that it understands through its document model `Parchment <https://github.com/quilljs/parchment/>`__. Content and formats are represented in Parchment as either Blots or Attributors, which roughly correspond to Nodes or Attributes in the DOM. Quill favors Code over Configuration™, but for very common needs, especially where the equivalent code would be lengthy or complex, Quill provides `configuration </docs/configuration/>`__ options. This would be a good first place to look to determine if you even need to implement any custom functionality. Quill is designed with a modular architecture composed of a small editing core, surrounded by modules that augment its functionality. Some of this functionality is quite integral to editing, such as the `History </docs/modules/history/>`__ module, which manages undo and redo. Because all modules use the same public `API </docs/api/>`__ exposed to the developer, even interchanging core modules is possible, when necessary. Quill officially supports a standard toolbar theme `Snow </docs/themes/#snow>`__ and a floating tooltip theme `Bubble </docs/themes/#bubble>`__. Since Quill is not confined within an iframe like many legacy editors, many visual modifications can be made with just CSS, using one of the existing themes. Quill uses classes, instead of inline style attributes, when possible, but both are implemented for you to pick and choose. A live example of this is implemented as a `Playground snippet </playground/#class-vs-inline-style>`__. Quill was designed with customization and extension in mind. This is achieved by implementing a small editor core exposed by a granular, well defined `API </docs/api/>`__. The core is augmented by `modules </docs/modules>`__, using the same `APIs </docs/api/>`__ you have access to. Themes Two of the most powerful options is ``modules`` and ``theme``. You can drastically change or expand what Quill can and does do by simply adding or removing individual `modules </docs/modules/>`__ or using a different `theme </docs/themes/>`__. You can also extend existing formats. Here is a quick ES6 implementation of a list item that does not permit formatting its contents. Code blocks are implemented in exactly this way. You can view a list of Blots and Attributors available by calling ``console.log(Quill.imports);``. Direct modification of this object is not supported. Use ```Quill.register`` </docs/api/#register>`__ instead. 