��          �               �     �     �     �  �   �  \   �     3     M     [     m     ~     �  �   �  C   �  v   �    C  x   [     �     �     �                               !  }  *     �     �     �  �   �  \   �	     
     8
     F
     X
     i
     |
  �   �
  C   s  v   �    .  x   F     �     �     �     �     �     �                  **Examples** **Methods** API By default all changes, whether originating from user input or programmatically through the API, are treated the same and change be undone or redone by the history module. If ``userOnly`` is set to ``true``, only user changes will be undone or redone. Changes occuring within the ``delay`` number of milliseconds is merged into a single change. Clears the history stack. Configuration Default: ``1000`` Default: ``100`` Default: ``false`` Example For example, with delay set to ``0``, nearly every character is recorded as one change and so undo would undo one character at a time. With delay set to ``1000``, undo would undo all changes that occured within the last 1000 milliseconds. If last change was an undo, redo this undo. Otherwise does nothing. Maximum size of the history’s undo/redo stack. Merged changes with the ``delay`` option counts as a singular change. Normally changes made in short succession (configured by ``delay``) are merged as a single change, so that triggering an undo will undo multiple changes. Using ``cutoff()`` will reset the merger window so that a changes before and after ``cutoff()`` is called will not be merged. The History module is responsible for handling undo and redo for Quill. It can be configured with the following options: Undo last change. clear cutoff experimental delay history maxStack redo undo userOnly Project-Id-Version: quilljs-docs 
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
 **Examples** **Methods** API By default all changes, whether originating from user input or programmatically through the API, are treated the same and change be undone or redone by the history module. If ``userOnly`` is set to ``true``, only user changes will be undone or redone. Changes occuring within the ``delay`` number of milliseconds is merged into a single change. Clears the history stack. Configuration Default: ``1000`` Default: ``100`` Default: ``false`` Example For example, with delay set to ``0``, nearly every character is recorded as one change and so undo would undo one character at a time. With delay set to ``1000``, undo would undo all changes that occured within the last 1000 milliseconds. If last change was an undo, redo this undo. Otherwise does nothing. Maximum size of the history’s undo/redo stack. Merged changes with the ``delay`` option counts as a singular change. Normally changes made in short succession (configured by ``delay``) are merged as a single change, so that triggering an undo will undo multiple changes. Using ``cutoff()`` will reset the merger window so that a changes before and after ``cutoff()`` is called will not be merged. The History module is responsible for handling undo and redo for Quill. It can be configured with the following options: Undo last change. clear cutoff experimental delay 历史 maxStack redo undo userOnly 