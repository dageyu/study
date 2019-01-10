/* wangEditor Code Mode Plugin - v0.3.0 - 2018/8/8
 * by Leaf 
 * QQ 182397814
 * http://www.aitlu.com
 */

此插件适用于wangEditor3，使用方法很简单啦，步骤如下：
1.在wangEditor.js之后引入wangEditor-codeMode-plugin.min.js就行啦。
例如：
<script src="js/wangEditor.js"></script>
<script src="js/wangEditor-codeMode-plugin.min.js"></script>
2.在editor.create();之后初始化HTML模式：E.codeMode.init("#editor");
例如：
var E = window.wangEditor;
var editor = new E("#editor");
editor.create();
E.codeMode.init("#editor");

wangEditor，感觉还不错，非常感谢作者对源码的贡献，而且易于上手，有兴趣的朋友都可以研究。