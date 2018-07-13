let editor;
require.config({ paths: { 'vs': 'node_modules/monaco-editor/min/vs' }});
require(['vs/editor/editor.main'], function() {
  editor = monaco.editor.create(document.getElementById('container'), {
    value: [
        '// 入力を受け取り、解答を出力して下さい。',
        '// 入力 const input = codeMountain.getInput()',
        '// 出力 console.log("解答です")',
        '',
        'function answer() {',
        '\treturn "Hello world!";',
        '}',
        'answer()'
    ].join('\n'),
    language: 'javascript',
    // readOnly: true,
    theme: "vs"
  });
});
$('#answer').click(function(){
  const text = editor.getValue()
  console.log(text)
  const output = eval(text)
  console.log(output)
})
// $('button').click(function(){
//   monaco.editor.setTheme("vs-dark");
// });