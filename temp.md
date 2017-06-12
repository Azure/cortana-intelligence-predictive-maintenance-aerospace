<!DOCTYPE html>
<html>
  <head>
      <meta charset="utf-8" />
      <title>Markdown to HTML</title>
      <style>.markdown-preview:not([data-use-github-style]) { padding: 2em; font-size: 1.2em; color: rgb(171, 178, 191); overflow: auto; background-color: rgb(40, 44, 52); }
.markdown-preview:not([data-use-github-style]) > :first-child { margin-top: 0px; }
.markdown-preview:not([data-use-github-style]) h1, .markdown-preview:not([data-use-github-style]) h2, .markdown-preview:not([data-use-github-style]) h3, .markdown-preview:not([data-use-github-style]) h4, .markdown-preview:not([data-use-github-style]) h5, .markdown-preview:not([data-use-github-style]) h6 { line-height: 1.2; margin-top: 1.5em; margin-bottom: 0.5em; color: rgb(255, 255, 255); }
.markdown-preview:not([data-use-github-style]) h1 { font-size: 2.4em; font-weight: 300; }
.markdown-preview:not([data-use-github-style]) h2 { font-size: 1.8em; font-weight: 400; }
.markdown-preview:not([data-use-github-style]) h3 { font-size: 1.5em; font-weight: 500; }
.markdown-preview:not([data-use-github-style]) h4 { font-size: 1.2em; font-weight: 600; }
.markdown-preview:not([data-use-github-style]) h5 { font-size: 1.1em; font-weight: 600; }
.markdown-preview:not([data-use-github-style]) h6 { font-size: 1em; font-weight: 600; }
.markdown-preview:not([data-use-github-style]) strong { color: rgb(255, 255, 255); }
.markdown-preview:not([data-use-github-style]) del { color: rgb(124, 135, 156); }
.markdown-preview:not([data-use-github-style]) a, .markdown-preview:not([data-use-github-style]) a code { color: rgb(82, 139, 255); }
.markdown-preview:not([data-use-github-style]) img { max-width: 100%; }
.markdown-preview:not([data-use-github-style]) > p { margin-top: 0px; margin-bottom: 1.5em; }
.markdown-preview:not([data-use-github-style]) > ul, .markdown-preview:not([data-use-github-style]) > ol { margin-bottom: 1.5em; }
.markdown-preview:not([data-use-github-style]) blockquote { margin: 1.5em 0px; font-size: inherit; color: rgb(124, 135, 156); border-color: rgb(75, 83, 98); border-width: 4px; }
.markdown-preview:not([data-use-github-style]) hr { margin: 3em 0px; border-top: 2px dashed rgb(75, 83, 98); background: none; }
.markdown-preview:not([data-use-github-style]) table { margin: 1.5em 0px; }
.markdown-preview:not([data-use-github-style]) th { color: rgb(255, 255, 255); }
.markdown-preview:not([data-use-github-style]) th, .markdown-preview:not([data-use-github-style]) td { padding: 0.66em 1em; border: 1px solid rgb(75, 83, 98); }
.markdown-preview:not([data-use-github-style]) code { color: rgb(255, 255, 255); background-color: rgb(58, 63, 75); }
.markdown-preview:not([data-use-github-style]) pre.editor-colors { margin: 1.5em 0px; padding: 1em; font-size: 0.92em; border-radius: 3px; background-color: rgb(49, 54, 63); }
.markdown-preview:not([data-use-github-style]) kbd { color: rgb(255, 255, 255); border-width: 1px 1px 2px; border-style: solid; border-color: rgb(75, 83, 98) rgb(75, 83, 98) rgb(62, 68, 81); background-color: rgb(58, 63, 75); }
.markdown-preview[data-use-github-style] { font-family: "Helvetica Neue", Helvetica, "Segoe UI", Arial, freesans, sans-serif; line-height: 1.6; word-wrap: break-word; padding: 30px; font-size: 16px; color: rgb(51, 51, 51); overflow: scroll; background-color: rgb(255, 255, 255); }
.markdown-preview[data-use-github-style] > :first-child { margin-top: 0px !important; }
.markdown-preview[data-use-github-style] > :last-child { margin-bottom: 0px !important; }
.markdown-preview[data-use-github-style] a:not([href]) { color: inherit; text-decoration: none; }
.markdown-preview[data-use-github-style] .absent { color: rgb(204, 0, 0); }
.markdown-preview[data-use-github-style] .anchor { position: absolute; top: 0px; left: 0px; display: block; padding-right: 6px; padding-left: 30px; margin-left: -30px; }
.markdown-preview[data-use-github-style] .anchor:focus { outline: none; }
.markdown-preview[data-use-github-style] h1, .markdown-preview[data-use-github-style] h2, .markdown-preview[data-use-github-style] h3, .markdown-preview[data-use-github-style] h4, .markdown-preview[data-use-github-style] h5, .markdown-preview[data-use-github-style] h6 { position: relative; margin-top: 1em; margin-bottom: 16px; font-weight: bold; line-height: 1.4; }
.markdown-preview[data-use-github-style] h1 .octicon-link, .markdown-preview[data-use-github-style] h2 .octicon-link, .markdown-preview[data-use-github-style] h3 .octicon-link, .markdown-preview[data-use-github-style] h4 .octicon-link, .markdown-preview[data-use-github-style] h5 .octicon-link, .markdown-preview[data-use-github-style] h6 .octicon-link { display: none; color: rgb(0, 0, 0); vertical-align: middle; }
.markdown-preview[data-use-github-style] h1:hover .anchor, .markdown-preview[data-use-github-style] h2:hover .anchor, .markdown-preview[data-use-github-style] h3:hover .anchor, .markdown-preview[data-use-github-style] h4:hover .anchor, .markdown-preview[data-use-github-style] h5:hover .anchor, .markdown-preview[data-use-github-style] h6:hover .anchor { padding-left: 8px; margin-left: -30px; text-decoration: none; }
.markdown-preview[data-use-github-style] h1:hover .anchor .octicon-link, .markdown-preview[data-use-github-style] h2:hover .anchor .octicon-link, .markdown-preview[data-use-github-style] h3:hover .anchor .octicon-link, .markdown-preview[data-use-github-style] h4:hover .anchor .octicon-link, .markdown-preview[data-use-github-style] h5:hover .anchor .octicon-link, .markdown-preview[data-use-github-style] h6:hover .anchor .octicon-link { display: inline-block; }
.markdown-preview[data-use-github-style] h1 tt, .markdown-preview[data-use-github-style] h2 tt, .markdown-preview[data-use-github-style] h3 tt, .markdown-preview[data-use-github-style] h4 tt, .markdown-preview[data-use-github-style] h5 tt, .markdown-preview[data-use-github-style] h6 tt, .markdown-preview[data-use-github-style] h1 code, .markdown-preview[data-use-github-style] h2 code, .markdown-preview[data-use-github-style] h3 code, .markdown-preview[data-use-github-style] h4 code, .markdown-preview[data-use-github-style] h5 code, .markdown-preview[data-use-github-style] h6 code { font-size: inherit; }
.markdown-preview[data-use-github-style] h1 { padding-bottom: 0.3em; font-size: 2.25em; line-height: 1.2; border-bottom: 1px solid rgb(238, 238, 238); }
.markdown-preview[data-use-github-style] h1 .anchor { line-height: 1; }
.markdown-preview[data-use-github-style] h2 { padding-bottom: 0.3em; font-size: 1.75em; line-height: 1.225; border-bottom: 1px solid rgb(238, 238, 238); }
.markdown-preview[data-use-github-style] h2 .anchor { line-height: 1; }
.markdown-preview[data-use-github-style] h3 { font-size: 1.5em; line-height: 1.43; }
.markdown-preview[data-use-github-style] h3 .anchor { line-height: 1.2; }
.markdown-preview[data-use-github-style] h4 { font-size: 1.25em; }
.markdown-preview[data-use-github-style] h4 .anchor { line-height: 1.2; }
.markdown-preview[data-use-github-style] h5 { font-size: 1em; }
.markdown-preview[data-use-github-style] h5 .anchor { line-height: 1.1; }
.markdown-preview[data-use-github-style] h6 { font-size: 1em; color: rgb(119, 119, 119); }
.markdown-preview[data-use-github-style] h6 .anchor { line-height: 1.1; }
.markdown-preview[data-use-github-style] p, .markdown-preview[data-use-github-style] blockquote, .markdown-preview[data-use-github-style] ul, .markdown-preview[data-use-github-style] ol, .markdown-preview[data-use-github-style] dl, .markdown-preview[data-use-github-style] table, .markdown-preview[data-use-github-style] pre { margin-top: 0px; margin-bottom: 16px; }
.markdown-preview[data-use-github-style] hr { height: 4px; padding: 0px; margin: 16px 0px; border: 0px none; background-color: rgb(231, 231, 231); }
.markdown-preview[data-use-github-style] ul, .markdown-preview[data-use-github-style] ol { padding-left: 2em; }
.markdown-preview[data-use-github-style] ul.no-list, .markdown-preview[data-use-github-style] ol.no-list { padding: 0px; list-style-type: none; }
.markdown-preview[data-use-github-style] ul ul, .markdown-preview[data-use-github-style] ul ol, .markdown-preview[data-use-github-style] ol ol, .markdown-preview[data-use-github-style] ol ul { margin-top: 0px; margin-bottom: 0px; }
.markdown-preview[data-use-github-style] li > p { margin-top: 16px; }
.markdown-preview[data-use-github-style] dl { padding: 0px; }
.markdown-preview[data-use-github-style] dl dt { padding: 0px; margin-top: 16px; font-size: 1em; font-style: italic; font-weight: bold; }
.markdown-preview[data-use-github-style] dl dd { padding: 0px 16px; margin-bottom: 16px; }
.markdown-preview[data-use-github-style] blockquote { padding: 0px 15px; color: rgb(119, 119, 119); border-left: 4px solid rgb(221, 221, 221); }
.markdown-preview[data-use-github-style] blockquote > :first-child { margin-top: 0px; }
.markdown-preview[data-use-github-style] blockquote > :last-child { margin-bottom: 0px; }
.markdown-preview[data-use-github-style] table { display: block; width: 100%; overflow: auto; word-break: keep-all; }
.markdown-preview[data-use-github-style] table th { font-weight: bold; }
.markdown-preview[data-use-github-style] table th, .markdown-preview[data-use-github-style] table td { padding: 6px 13px; border: 1px solid rgb(221, 221, 221); }
.markdown-preview[data-use-github-style] table tr { border-top: 1px solid rgb(204, 204, 204); background-color: rgb(255, 255, 255); }
.markdown-preview[data-use-github-style] table tr:nth-child(2n) { background-color: rgb(248, 248, 248); }
.markdown-preview[data-use-github-style] img { max-width: 100%; box-sizing: border-box; }
.markdown-preview[data-use-github-style] .emoji { max-width: none; }
.markdown-preview[data-use-github-style] span.frame { display: block; overflow: hidden; }
.markdown-preview[data-use-github-style] span.frame > span { display: block; float: left; width: auto; padding: 7px; margin: 13px 0px 0px; overflow: hidden; border: 1px solid rgb(221, 221, 221); }
.markdown-preview[data-use-github-style] span.frame span img { display: block; float: left; }
.markdown-preview[data-use-github-style] span.frame span span { display: block; padding: 5px 0px 0px; clear: both; color: rgb(51, 51, 51); }
.markdown-preview[data-use-github-style] span.align-center { display: block; overflow: hidden; clear: both; }
.markdown-preview[data-use-github-style] span.align-center > span { display: block; margin: 13px auto 0px; overflow: hidden; text-align: center; }
.markdown-preview[data-use-github-style] span.align-center span img { margin: 0px auto; text-align: center; }
.markdown-preview[data-use-github-style] span.align-right { display: block; overflow: hidden; clear: both; }
.markdown-preview[data-use-github-style] span.align-right > span { display: block; margin: 13px 0px 0px; overflow: hidden; text-align: right; }
.markdown-preview[data-use-github-style] span.align-right span img { margin: 0px; text-align: right; }
.markdown-preview[data-use-github-style] span.float-left { display: block; float: left; margin-right: 13px; overflow: hidden; }
.markdown-preview[data-use-github-style] span.float-left span { margin: 13px 0px 0px; }
.markdown-preview[data-use-github-style] span.float-right { display: block; float: right; margin-left: 13px; overflow: hidden; }
.markdown-preview[data-use-github-style] span.float-right > span { display: block; margin: 13px auto 0px; overflow: hidden; text-align: right; }
.markdown-preview[data-use-github-style] code, .markdown-preview[data-use-github-style] tt { padding: 0.2em 0px; margin: 0px; font-size: 85%; border-radius: 3px; background-color: rgba(0, 0, 0, 0.0392157); }
.markdown-preview[data-use-github-style] code::before, .markdown-preview[data-use-github-style] tt::before, .markdown-preview[data-use-github-style] code::after, .markdown-preview[data-use-github-style] tt::after { letter-spacing: -0.2em; content: " "; }
.markdown-preview[data-use-github-style] code br, .markdown-preview[data-use-github-style] tt br { display: none; }
.markdown-preview[data-use-github-style] del code { text-decoration: inherit; }
.markdown-preview[data-use-github-style] pre > code { padding: 0px; margin: 0px; font-size: 100%; word-break: normal; white-space: pre; border: 0px; background: transparent; }
.markdown-preview[data-use-github-style] .highlight { margin-bottom: 16px; }
.markdown-preview[data-use-github-style] .highlight pre, .markdown-preview[data-use-github-style] pre { padding: 16px; overflow: auto; font-size: 85%; line-height: 1.45; border-radius: 3px; background-color: rgb(247, 247, 247); }
.markdown-preview[data-use-github-style] .highlight pre { margin-bottom: 0px; word-break: normal; }
.markdown-preview[data-use-github-style] pre { word-wrap: normal; }
.markdown-preview[data-use-github-style] pre code, .markdown-preview[data-use-github-style] pre tt { display: inline; max-width: initial; padding: 0px; margin: 0px; overflow: initial; line-height: inherit; word-wrap: normal; border: 0px; background-color: transparent; }
.markdown-preview[data-use-github-style] pre code::before, .markdown-preview[data-use-github-style] pre tt::before, .markdown-preview[data-use-github-style] pre code::after, .markdown-preview[data-use-github-style] pre tt::after { content: normal; }
.markdown-preview[data-use-github-style] kbd { display: inline-block; padding: 3px 5px; font-size: 11px; line-height: 10px; color: rgb(85, 85, 85); vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(204, 204, 204) rgb(204, 204, 204) rgb(187, 187, 187); border-radius: 3px; box-shadow: rgb(187, 187, 187) 0px -1px 0px inset; background-color: rgb(252, 252, 252); }
.markdown-preview[data-use-github-style] a { color: rgb(51, 122, 183); }
.markdown-preview[data-use-github-style] code { color: inherit; }
.markdown-preview[data-use-github-style] pre.editor-colors { padding: 0.8em 1em; margin-bottom: 1em; font-size: 0.85em; border-radius: 4px; overflow: auto; }
.scrollbars-visible-always .markdown-preview pre.editor-colors .vertical-scrollbar, .scrollbars-visible-always .markdown-preview pre.editor-colors .horizontal-scrollbar { visibility: hidden; }
.scrollbars-visible-always .markdown-preview pre.editor-colors:hover .vertical-scrollbar, .scrollbars-visible-always .markdown-preview pre.editor-colors:hover .horizontal-scrollbar { visibility: visible; }
.markdown-preview .task-list-item-checkbox { position: absolute; margin: 0.25em 0px 0px -1.4em; }
.bracket-matcher .region {
  border-bottom: 1px dotted lime;
  position: absolute;
}

.spell-check-misspelling .region {
  border-bottom: 2px dotted rgba(255, 51, 51, 0.75);
}
.spell-check-corrections {
  width: 25em !important;
}

pre.editor-colors {
  background-color: #282c34;
  color: #abb2bf;
}
pre.editor-colors .line.cursor-line {
  background-color: rgba(153, 187, 255, 0.04);
}
pre.editor-colors .invisible {
  color: #abb2bf;
}
pre.editor-colors .cursor {
  border-left: 2px solid #528bff;
}
pre.editor-colors .selection .region {
  background-color: #3e4451;
}
pre.editor-colors .bracket-matcher .region {
  border-bottom: 1px solid #528bff;
  box-sizing: border-box;
}
pre.editor-colors .invisible-character {
  color: rgba(171, 178, 191, 0.15);
}
pre.editor-colors .indent-guide {
  color: rgba(171, 178, 191, 0.15);
}
pre.editor-colors .wrap-guide {
  background-color: rgba(171, 178, 191, 0.15);
}
pre.editor-colors .find-result .region.region.region,
pre.editor-colors .current-result .region.region.region {
  border-radius: 2px;
  background-color: rgba(82, 139, 255, 0.24);
  transition: border-color 0.4s;
}
pre.editor-colors .find-result .region.region.region {
  border: 2px solid transparent;
}
pre.editor-colors .current-result .region.region.region {
  border: 2px solid #528bff;
  transition-duration: .1s;
}
pre.editor-colors .gutter .line-number {
  color: #636d83;
  -webkit-font-smoothing: antialiased;
}
pre.editor-colors .gutter .line-number.cursor-line {
  color: #abb2bf;
  background-color: #2c313a;
}
pre.editor-colors .gutter .line-number.cursor-line-no-selection {
  background-color: transparent;
}
pre.editor-colors .gutter .line-number .icon-right {
  color: #abb2bf;
}
pre.editor-colors .gutter:not(.git-diff-icon) .line-number.git-line-removed.git-line-removed::before {
  bottom: -3px;
}
pre.editor-colors .gutter:not(.git-diff-icon) .line-number.git-line-removed::after {
  content: "";
  position: absolute;
  left: 0px;
  bottom: 0px;
  width: 25px;
  border-bottom: 1px dotted rgba(224, 82, 82, 0.5);
  pointer-events: none;
}
pre.editor-colors .gutter .line-number.folded,
pre.editor-colors .gutter .line-number:after,
pre.editor-colors .fold-marker:after {
  color: #abb2bf;
}
.syntax--comment {
  color: #5c6370;
  font-style: italic;
}
.syntax--comment .syntax--markup.syntax--link {
  color: #5c6370;
}
.syntax--entity.syntax--name.syntax--type {
  color: #e5c07b;
}
.syntax--entity.syntax--other.syntax--inherited-class {
  color: #98c379;
}
.syntax--keyword {
  color: #c678dd;
}
.syntax--keyword.syntax--control {
  color: #c678dd;
}
.syntax--keyword.syntax--operator {
  color: #abb2bf;
}
.syntax--keyword.syntax--other.syntax--special-method {
  color: #61afef;
}
.syntax--keyword.syntax--other.syntax--unit {
  color: #d19a66;
}
.syntax--storage {
  color: #c678dd;
}
.syntax--storage.syntax--type.syntax--annotation,
.syntax--storage.syntax--type.syntax--primitive {
  color: #c678dd;
}
.syntax--storage.syntax--modifier.syntax--package,
.syntax--storage.syntax--modifier.syntax--import {
  color: #abb2bf;
}
.syntax--constant {
  color: #d19a66;
}
.syntax--constant.syntax--variable {
  color: #d19a66;
}
.syntax--constant.syntax--character.syntax--escape {
  color: #56b6c2;
}
.syntax--constant.syntax--numeric {
  color: #d19a66;
}
.syntax--constant.syntax--other.syntax--color {
  color: #56b6c2;
}
.syntax--constant.syntax--other.syntax--symbol {
  color: #56b6c2;
}
.syntax--variable {
  color: #e06c75;
}
.syntax--variable.syntax--interpolation {
  color: #be5046;
}
.syntax--variable.syntax--parameter {
  color: #abb2bf;
}
.syntax--string {
  color: #98c379;
}
.syntax--string.syntax--regexp {
  color: #56b6c2;
}
.syntax--string.syntax--regexp .syntax--source.syntax--ruby.syntax--embedded {
  color: #e5c07b;
}
.syntax--string.syntax--other.syntax--link {
  color: #e06c75;
}
.syntax--punctuation.syntax--definition.syntax--comment {
  color: #5c6370;
}
.syntax--punctuation.syntax--definition.syntax--method-parameters,
.syntax--punctuation.syntax--definition.syntax--function-parameters,
.syntax--punctuation.syntax--definition.syntax--parameters,
.syntax--punctuation.syntax--definition.syntax--separator,
.syntax--punctuation.syntax--definition.syntax--seperator,
.syntax--punctuation.syntax--definition.syntax--array {
  color: #abb2bf;
}
.syntax--punctuation.syntax--definition.syntax--heading,
.syntax--punctuation.syntax--definition.syntax--identity {
  color: #61afef;
}
.syntax--punctuation.syntax--definition.syntax--bold {
  color: #e5c07b;
  font-weight: bold;
}
.syntax--punctuation.syntax--definition.syntax--italic {
  color: #c678dd;
  font-style: italic;
}
.syntax--punctuation.syntax--section.syntax--embedded {
  color: #be5046;
}
.syntax--punctuation.syntax--section.syntax--method,
.syntax--punctuation.syntax--section.syntax--class,
.syntax--punctuation.syntax--section.syntax--inner-class {
  color: #abb2bf;
}
.syntax--support.syntax--class {
  color: #e5c07b;
}
.syntax--support.syntax--type {
  color: #56b6c2;
}
.syntax--support.syntax--function {
  color: #56b6c2;
}
.syntax--support.syntax--function.syntax--any-method {
  color: #61afef;
}
.syntax--entity.syntax--name.syntax--function {
  color: #61afef;
}
.syntax--entity.syntax--name.syntax--class,
.syntax--entity.syntax--name.syntax--type.syntax--class {
  color: #e5c07b;
}
.syntax--entity.syntax--name.syntax--section {
  color: #61afef;
}
.syntax--entity.syntax--name.syntax--tag {
  color: #e06c75;
}
.syntax--entity.syntax--other.syntax--attribute-name {
  color: #d19a66;
}
.syntax--entity.syntax--other.syntax--attribute-name.syntax--id {
  color: #61afef;
}
.syntax--meta.syntax--class {
  color: #e5c07b;
}
.syntax--meta.syntax--class.syntax--body {
  color: #abb2bf;
}
.syntax--meta.syntax--method-call,
.syntax--meta.syntax--method {
  color: #abb2bf;
}
.syntax--meta.syntax--definition.syntax--variable {
  color: #e06c75;
}
.syntax--meta.syntax--link {
  color: #d19a66;
}
.syntax--meta.syntax--require {
  color: #61afef;
}
.syntax--meta.syntax--selector {
  color: #c678dd;
}
.syntax--meta.syntax--separator {
  background-color: #373b41;
  color: #abb2bf;
}
.syntax--meta.syntax--tag {
  color: #abb2bf;
}
.syntax--underline {
  text-decoration: underline;
}
.syntax--none {
  color: #abb2bf;
}
.syntax--invalid.syntax--deprecated {
  color: #523d14 !important;
  background-color: #e0c285 !important;
}
.syntax--invalid.syntax--illegal {
  color: white !important;
  background-color: #e05252 !important;
}
.syntax--markup.syntax--bold {
  color: #d19a66;
  font-weight: bold;
}
.syntax--markup.syntax--changed {
  color: #c678dd;
}
.syntax--markup.syntax--deleted {
  color: #e06c75;
}
.syntax--markup.syntax--italic {
  color: #c678dd;
  font-style: italic;
}
.syntax--markup.syntax--heading {
  color: #e06c75;
}
.syntax--markup.syntax--heading .syntax--punctuation.syntax--definition.syntax--heading {
  color: #61afef;
}
.syntax--markup.syntax--link {
  color: #56b6c2;
}
.syntax--markup.syntax--inserted {
  color: #98c379;
}
.syntax--markup.syntax--quote {
  color: #d19a66;
}
.syntax--markup.syntax--raw {
  color: #98c379;
}
.syntax--source.syntax--c .syntax--keyword.syntax--operator {
  color: #c678dd;
}
.syntax--source.syntax--cpp .syntax--keyword.syntax--operator {
  color: #c678dd;
}
.syntax--source.syntax--cs .syntax--keyword.syntax--operator {
  color: #c678dd;
}
.syntax--source.syntax--css .syntax--property-name,
.syntax--source.syntax--css .syntax--property-value {
  color: #828997;
}
.syntax--source.syntax--css .syntax--property-name.syntax--support,
.syntax--source.syntax--css .syntax--property-value.syntax--support {
  color: #abb2bf;
}
.syntax--source.syntax--gfm .syntax--markup {
  -webkit-font-smoothing: auto;
}
.syntax--source.syntax--gfm .syntax--link .syntax--entity {
  color: #61afef;
}
.syntax--source.syntax--go .syntax--storage.syntax--type.syntax--string {
  color: #c678dd;
}
.syntax--source.syntax--ini .syntax--keyword.syntax--other.syntax--definition.syntax--ini {
  color: #e06c75;
}
.syntax--source.syntax--java .syntax--storage.syntax--modifier.syntax--import {
  color: #e5c07b;
}
.syntax--source.syntax--java .syntax--storage.syntax--type {
  color: #e5c07b;
}
.syntax--source.syntax--java .syntax--keyword.syntax--operator.syntax--instanceof {
  color: #c678dd;
}
.syntax--source.syntax--java-properties .syntax--meta.syntax--key-pair {
  color: #e06c75;
}
.syntax--source.syntax--java-properties .syntax--meta.syntax--key-pair > .syntax--punctuation {
  color: #abb2bf;
}
.syntax--source.syntax--js .syntax--keyword.syntax--operator {
  color: #56b6c2;
}
.syntax--source.syntax--js .syntax--keyword.syntax--operator.syntax--delete,
.syntax--source.syntax--js .syntax--keyword.syntax--operator.syntax--in,
.syntax--source.syntax--js .syntax--keyword.syntax--operator.syntax--of,
.syntax--source.syntax--js .syntax--keyword.syntax--operator.syntax--instanceof,
.syntax--source.syntax--js .syntax--keyword.syntax--operator.syntax--new,
.syntax--source.syntax--js .syntax--keyword.syntax--operator.syntax--typeof,
.syntax--source.syntax--js .syntax--keyword.syntax--operator.syntax--void {
  color: #c678dd;
}
.syntax--source.syntax--json .syntax--meta.syntax--structure.syntax--dictionary.syntax--json > .syntax--string.syntax--quoted.syntax--json {
  color: #e06c75;
}
.syntax--source.syntax--json .syntax--meta.syntax--structure.syntax--dictionary.syntax--json > .syntax--string.syntax--quoted.syntax--json > .syntax--punctuation.syntax--string {
  color: #e06c75;
}
.syntax--source.syntax--json .syntax--meta.syntax--structure.syntax--dictionary.syntax--json > .syntax--value.syntax--json > .syntax--string.syntax--quoted.syntax--json,
.syntax--source.syntax--json .syntax--meta.syntax--structure.syntax--array.syntax--json > .syntax--value.syntax--json > .syntax--string.syntax--quoted.syntax--json,
.syntax--source.syntax--json .syntax--meta.syntax--structure.syntax--dictionary.syntax--json > .syntax--value.syntax--json > .syntax--string.syntax--quoted.syntax--json > .syntax--punctuation,
.syntax--source.syntax--json .syntax--meta.syntax--structure.syntax--array.syntax--json > .syntax--value.syntax--json > .syntax--string.syntax--quoted.syntax--json > .syntax--punctuation {
  color: #98c379;
}
.syntax--source.syntax--json .syntax--meta.syntax--structure.syntax--dictionary.syntax--json > .syntax--constant.syntax--language.syntax--json,
.syntax--source.syntax--json .syntax--meta.syntax--structure.syntax--array.syntax--json > .syntax--constant.syntax--language.syntax--json {
  color: #56b6c2;
}
.syntax--source.syntax--ruby .syntax--constant.syntax--other.syntax--symbol > .syntax--punctuation {
  color: inherit;
}
.syntax--source.syntax--python .syntax--keyword.syntax--operator.syntax--logical.syntax--python {
  color: #c678dd;
}
.syntax--source.syntax--python .syntax--variable.syntax--parameter {
  color: #d19a66;
}
</style>
  </head>
  <body class='markdown-preview' data-use-github-style><h1 id="predictive-maintenance-for-aerospace-using-cortana-intelligence-suite-technical-guide-for-manual-deployment">Predictive Maintenance for Aerospace Using Cortana Intelligence Suite: Technical Guide for Manual Deployment</h1>
<h1 id="table-of-contents">Table of Contents</h1>
<p>Scope</p>
<p>Pre-Requisites</p>
<p>Architecture</p>
<p>Solution Setup</p>
<p>Section 1: Create a new Azure Resource Group</p>
<h3 id="section-2-deploy-azure-storage-account">Section 2: Deploy Azure Storage Account</h3>
<h3 id="section-3-deploy-azure-event-hub">Section 3: Deploy Azure Event Hub</h3>
<h3 id="section-4-deploy-azure-stream-analytics-jobs">Section 4: Deploy Azure Stream Analytics Jobs</h3>
<p>Section 5: Run Application to Generate Data</p>
<p>Section 6: Validate the Data Generation Path</p>
<p>Section 7: Deploy Azure SQL Server and Database</p>
<p>Section 8: Deploy Azure Studio ML Workspace and Experiment</p>
<p>Section 9: Deploy Azure Data Factory</p>
<h3 id="section-10-configure-power-bi-for-visualization">Section 10: Configure Power BI for Visualization</h3>
<h3 id="execute-solution-and-validate">Execute Solution and Validate</h3>
<h3 id="completion-and-clean-up">Completion and Clean up</h3>
<h1 id="scope">Scope</h1>
<p>There are multiple documents on predictive maintenance for aerospace using Cortana Intelligence Suite Solution Template that monitors and predicts the remaining useful life (RUL) of an aircraft engine.</p>
<p>There is an overview <a href="https://blogs.technet.microsoft.com/machinelearning/2016/02/23/predictive-maintenance-for-aerospace-a-cortana-analytics-solution-template/">blog post</a> and a <a href="https://azure.microsoft.com/en-us/documentation/articles/cortana-analytics-technical-guide-predictive-maintenance">technical guide</a> that provide a higher level overview of the <a href="https://gallery.cortanaintelligence.com/Solution/Predictive-Maintenance-for-Aerospace-4">solution template</a>.</p>
<p>The <a href="https://gallery.cortanaintelligence.com/Solution/Predictive-Maintenance-for-Aerospace-4">one-click solution deployment template</a> is useful to understand the concepts behind and technology that went into creating this solution. However, it does not provide the deep systems understanding that implementers need to understand the design in total.</p>
<p>This technical deployment guide explains how to build the solution piece by piece and in many cases, explains why certain decisions were made. The manual process gives an implementer an inside view on how the solution is built and an understanding of each of the components.</p>
<p>It provides a full set of instructions on how to put together and deploy a predictive maintenance solution using the Cortana Intelligence Suite. The <strong>Developer Journey Map</strong> walks through the different components created as part of the end-to-end solution.</p>
<p><strong>For technical problems or questions about deploying this solution, please post in the issues tab of the</strong> <a href="https://github.com/Azure/cortana-intelligence-predictive-maintenance-aerospace">repository</a> <strong>.</strong></p>
<h1 id="pre-requisites">Pre-Requisites</h1>
<p>To implement this demo, you need an active Microsoft Azure subscription [insert link to get subscription].</p>
<p>Following are a list of accounts and software you will need to create this solution.</p>
<p>Following are a list of accounts and software you will need to create this solution.</p>
<ol>
<li><a href="https://github.com/Azure/cortana-intelligence-predictive-maintenance-aerospace">The full contents of Github file repository</a> (download the zipped file).</li>
<li><a href="http://studio.azureml.net">A Studio ML account</a></li>
<li>A <a href="https://login.live.com/">Microsoft Office 365 subscription</a> for Power BI access.</li>
<li><a href="https://msdn.microsoft.com/en-us/library/mt238290.aspx">SQL Server Management Studio</a> or a similar tool to access a SQL server database.</li>
<li><a href="http://storageexplorer.com/">Microsoft Azure Storage Explorer</a></li>
<li><a href="https://powerbi.microsoft.com/en-us/desktop">Power BI Desktop</a></li>
<li>Internet Access</li>
</ol>
<h1 id="architecture">Architecture</h1>
<p>This predictive maintenance solution monitors aircraft and predicts the remaining useful life of aircraft engine components, based on publicly available data. It is an end-to-end solution that brings together several Azure services involving data ingestion, data storage, data processing and advanced analytics — all essential for building a predictive maintenance solution.</p>
<p>The solution architecture is shown in Figure 1.</p>
<p> ![](data:image/<em>;
  <em>*Figure 1: Architecture diagram for predictive maintenance solution for aerospace</em></em></p>
<p>Following is a brief explanation of each component of the solution architecture and the overall workflow:</p>
<ol>
<li>The solution repository provides you a data generator as <strong>data source.</strong> This data source is comprised of or derived from publicly available data from the NASA data repository using the Turbofan Engine Degradation Simulation Data Set. You can run it from your desktop or install in a virtual machine in your Azure account.</li>
<li>This synthetic data feeds into the <strong>Azure Event Hubs</strong> service as data points.</li>
<li><em>Stream Analytics</em> provides real-time insights on engine health and stores that data in long-term storage for more complex, compute-intensive batch analytics. In this template, two <strong>Azure Stream Analytics</strong> jobs analyze the data to provide near real-time analytics on the input stream from the event hub. One of the Stream Analytics jobs archives all raw incoming events to the <strong>Azure Storage</strong> service for later processing by the <strong>Azure Data Factory</strong> service, and the other publishes results onto a <strong>Power BI</strong> dashboard.</li>
<li>The <strong>HDInsight</strong> service is used to run Hive scripts (orchestrated by <strong>Azure Data Factory</strong> ) to provide aggregations at scale on the raw sensor data stored in Azure Storage by the Stream Analytics job.</li>
<li>The Azure <strong>Machine Learning</strong> service is used (orchestrated by <strong>Azure Data Factory</strong> ) to make predictions on the remaining useful life (RUL) of particular aircraft engine based on the inputs received from the <strong>HDInsight</strong></li>
<li><strong>Azure SQL Database</strong> is used (managed by <strong>Azure Data Factory</strong> ) to store the prediction results received from the <strong>Azure Machine Learning</strong> service. These results are then consumed in the <strong>Power BI</strong> dashboard. A stored procedure is deployed in the SQL Database and later invoked in Azure Data Factory pipeline to store the ML prediction results into the scoring result table.</li>
<li><strong>Azure Data Factory</strong> handles orchestration, scheduling, and monitoring of the batch processing pipeline.</li>
<li>Finally, <strong>Power BI</strong> is used for results visualization. A <em>Power BI</em> dashboard can be built on top of the pipeline such that aircraft technicians can monitor the sensor data from an airplane or across the fleet in real time and use visualizations to schedule engine maintenance.</li>
</ol>
<p>While this solution is customized for aircraft monitoring, it can easily be generalized for other predictive maintenance scenarios.</p>
<p>#</p>
<h1 id="solution-setup">Solution Setup</h1>
<p>Unless otherwise stated, to setup this solution provision <strong>all Azure services from</strong> <a href="http://portal.azure.com/">http://portal.azure.com/</a> referred henceforth as <strong>Azure portal</strong>.</p>
<p>Several services, such as Azure Storage, require a unique name for the storage account across a region. Hence to give you a unique identifier, we will use the following naming convention for this solution.</p>
<p><strong>aerodemo[UI][N]</strong></p>
<p>Characters must be entered in lowercase. For example, user Robert Smith will name Azure services he creates as <em>aerodemors05</em></p>
<p>In this guide, for the sake of simplicity we&#39;ll use <em>aerodemo1</em> as the placeholder name for all services.</p>
<p>Now we will walk through the actual provisioning steps.</p>
<p><strong>Section 1:</strong>  <strong>Create a new Azure Resource Group</strong></p>
<p> As there are several services, it is suggested to group these services under a single <a href="https://azure.microsoft.com/en-us/documentation/articles/resource-group-overview/">Azure Resource Group</a>. A resource group is a container that holds related resources for an Azure solution.</p>
<table>
<thead>
<tr>
<th>Add a new resource group</th>
<th>In Azure Portal&#39;s left panel, click on Resource groups icon . In resource group blade, click on &quot;Add&quot;.</th>
</tr>
</thead>
<tbody>
<tr>
<td>Set parameter values</td>
<td>In the form, enter these values <strong>Name:</strong> aerodemo1 <strong>Subscription:</strong> &lt;your Azure subscription name&gt; <strong>Location:</strong> Central US</td>
</tr>
<tr>
<td>Provision</td>
<td>Click the &quot;Create&quot; button.</td>
</tr>
</tbody>
</table>
<h3 id="-section-2-deploy-azure-storage-account-"><strong>Section 2: Deploy Azure Storage Account</strong></h3>
<p>An Azure Storage account is used for storage of incoming aircraft sensor readings through Azure Event Hub and Azure Stream Analytics. The storage account is also used to hold HIVE scripts that will be executed from Azure Data Factory when processing the sensor data to pass into the Azure Machine Learning experiment.</p>
<table>
<thead>
<tr>
<th>Add a new Azure Storage account</th>
<th>In Azure Portal, Click on &quot;+&quot; &gt; &quot;Storage&quot; &gt; &quot;Storage Account (blob, file, table square)&quot;</th>
</tr>
</thead>
<tbody>
<tr>
<td>Set parameter values</td>
<td>In the form, enter these values <strong>Name:</strong> aerodemo1 <strong>Performance:</strong> Standard <strong>Replication:</strong> Location Replication Strategy (LRS) <strong>Subscription:</strong> &lt;your Azure subscription name&gt; <strong>Resource group:</strong> Choose &quot;Use Existing&quot;; specify aerodemo1 <strong>Location:</strong> Central USFor all other parameters use default selections.</td>
</tr>
<tr>
<td>Provision</td>
<td>Click the &quot;Create&quot; button. It takes few minutes to create the storage account</td>
</tr>
</tbody>
</table>
<p>Now that the storage account has been created we need to collect some information about it to be used by other services like the Azure Data Factory.</p>
<p>To retrieve the primary connection string for the Storage account, in the storage account aerodemo1 blade, select &quot;Settings&quot; &gt; Access Keys &gt; Click on the copy button next to &quot;Primary Connection String&quot;.</p>
<p>Record it in table 1 below for future reference.</p>
<p><strong>Table 1: Azure Storage Account</strong></p>
<table>
<thead>
<tr>
<th><strong>Storage Account Name</strong></th>
<th><strong>Primary Connection String</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td>aerodemo1</td>
<td>&lt;copied connection string value&gt;</td>
</tr>
</tbody>
</table>
<h1 id="-add-blob-containers-"><strong>Add Blob Containers</strong></h1>
<p><strong>Pre-requisites:</strong></p>
<ol>
<li>To explore data in Azure storage, download and install the <a href="http://storageexplorer.com/">Microsoft Azure Storage Explorer</a> (or any similar tool)</li>
<li>From Azure Github, download and save the zipped repository or clone it to your local computer. NOTE: The zipped folder name is very long. To avoid errors due to long path name, either rename the folder before you unzip or save it to a folder which has a short path (e.g. C:/Demo).</li>
</ol>
<p>Execute below steps to add two blob containers, namely, <em>maintenancesadata</em> and <em>maintenancesascript.</em></p>
<table>
<thead>
<tr>
<th>Create new Blob Container <em>maintenancesadata</em></th>
<th>In Storage account aerodemo1 blade, select &quot;Overview&quot; &gt; &quot;Blobs&quot; &gt; &quot;+&quot;. Specify blob name as <em>maintenancesadata.</em> Click on the &quot;Create&quot; button.</th>
</tr>
</thead>
<tbody>
<tr>
<td>Create new Blob Container <em>maintenancesascript</em></td>
<td>In Storage account aerodemo1 blade, select &quot;Overview&quot; &gt; &quot;Blobs&quot; &gt; &quot;+&quot;. Specify blob name as <em>maintenancesascript.</em> Click on the &quot;Create&quot; button.</td>
</tr>
<tr>
<td>Upload HIVE queries for data processing</td>
</tr>
</tbody>
</table>
<ol>
<li>Click on the <em>maintenancesascript</em> container. This will bring up a panel on the right. Click the &quot;Upload&quot; button.</li>
<li>Browse to the &quot;Storage Files\script&quot; folder in the repository you downloaded in C:/Demo. This will upload the required HIVE queries that will be used in data processing later in this deployment.
|</li>
</ol>
<h3 id="-section-3-deploy-azure-event-hub-"><strong>Section 3: Deploy Azure Event Hub</strong></h3>
<p>Azure Event Hubs is a highly scalable service that can ingest millions of records per second. In this solution, the event hub will be the ingestion point for the aircraft sensor data.</p>
<table>
<thead>
<tr>
<th>Add Azure Event Hub Namespace</th>
<th>In Azure Portal, click on &quot;+ New&quot; &gt; &quot;Internet of Things&quot; &gt; &quot;Event hub&quot; &gt; &quot;Create&quot;.</th>
</tr>
</thead>
<tbody>
<tr>
<td>Set parameter values</td>
<td>In the form, enter these values <strong>Name:</strong> aerodemo1 <strong>Subscription:</strong> &lt;your Azure subscription name&gt; <strong>Resource group:</strong> Choose &quot;Use Existing&quot;; specify aerodemo1 <strong>Location:</strong> Central US</td>
</tr>
<tr>
<td>Provision Azure Event Hub Namespace</td>
<td>Click the &quot;Create&quot; button. Note: This will create the Event hub namespace. In the top panel of this panel click on &quot;+Event hub&quot; to provision a new event hub.</td>
</tr>
<tr>
<td>Set Event hub parameter values</td>
<td><strong>Name:</strong> aerodemo1_EHFor all other parameters use default value selections.</td>
</tr>
<tr>
<td>Provision Azure Event Hub</td>
<td>Click the &quot;Create&quot; button.</td>
</tr>
</tbody>
</table>
<p>This creates the Azure Event Hub we need to receive aircraft sensor readings. The Event Hub will be consumed by two Azure Stream Analytics jobs. To ensure processing of the hub is successful we need to create <a href="https://azure.microsoft.com/en-us/documentation/articles/event-hubs-programming-guide/#event-consumers">consumer groups</a> on the hub.</p>
<table>
<thead>
<tr>
<th>Create Consumer Group</th>
<th>Click event hubaerodemo1_EH &gt; In the menu panel select &quot;Consumer Group&quot; under Entities.Click &quot;+Consumer Group&quot; to add new consumer group, provide name: blobcg_._Repeat above step to add consumer group, name: pbicg</th>
</tr>
</thead>
<tbody>
<tr>
<td></td>
</tr>
</tbody>
</table>
<p>The connection string and event hub name information will be needed to configure the desktop data generation tool that simulates aircraft sensor readings being sent to the event hub.</p>
<p>| Get Connection String for Event hub namespace |</p>
<ol>
<li><strong>1.</strong> In Event hub namespace &quot;aerodemo1&quot;, select &quot;Overview&quot; &gt; &quot;Connection Strings&quot;.</li>
<li><strong>2.</strong> This brings up the shared access policy window. Click policy &quot;RootManageSharedAccessKey&quot;, and copy the &quot;Connection string–primary key&quot; value.</li>
<li><strong>3.</strong> Record the connection string value in table 2: Azure Event Hub.
|
| --- | --- |</li>
</ol>
<p><strong>Table 2: Azure Event Hub</strong></p>
<table>
<thead>
<tr>
<th><strong>Azure Event Hub Namespace</strong></th>
<th><strong>Primary Connection String</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td></td>
</tr>
</tbody>
</table>
<h3 id="-section-4-deploy-azure-stream-analytics-jobs-"><strong>Section 4: Deploy Azure Stream Analytics Jobs</strong></h3>
<p><a href="https://azure.microsoft.com/en-us/services/stream-analytics/">Azure Stream Analytics</a> (ASA) allows you to create near real-time insights from devices, sensors, infrastructure and applications. For this solution, we will deploy two Azure Stream Analytics jobs, namely, <strong>maintenancesa02asablob</strong> and <strong>maintenancesa02asapbi,</strong> to read sensor data from the Azure Event Hub.</p>
<p><strong>maintenancesa02asablob</strong> simply pipes all the sensor readings into our Azure Storage for later processing.</p>
<p><strong>maintenancesa02asapbi</strong> populates Power BI datasets that will be used on the dashboard. Although we have not set up Power BI yet, we will create both stream jobs now.</p>
<table>
<thead>
<tr>
<th>Add Azure Stream Analytics (ASA) jobs</th>
<th>In Azure Portal, click on &quot;+ New&quot; &gt; &quot;Data + Analytics&quot; &gt; &quot;Stream Analytics job&quot;.</th>
</tr>
</thead>
<tbody>
<tr>
<td>Set parameter values</td>
<td>In the form, enter these values <strong>Name:</strong> maintenancesa02asablob <strong>Subscription:</strong> &lt;your Azure subscription name&gt; <strong>Resource group:</strong> Choose &quot;Use Existing&quot;; specify aerodemo1 <strong>Location:</strong> Central US</td>
</tr>
<tr>
<td>Provision ASA jobs</td>
<td>Click the &quot;Create&quot; button. <strong>NOTE:</strong> This will create stream analytics job maintenancesa02asablob.Repeat above steps to create stream the second job maintenancesa02asapbi.</td>
</tr>
</tbody>
</table>
<p>For each job, we need to configure their respective input, query and output. Configure both jobs with input as same Event hub to receive the sensor data, but with different queries and outputs as shown in the table below.</p>
<table>
<thead>
<tr>
<th>Add Input for (ASA) job</th>
<th>In the ASA blade for maintenancesa02asablob job, select &quot;Job Topology&quot; &gt; &quot;Input&quot; &gt; &quot;+Add&quot;</th>
</tr>
</thead>
<tbody>
<tr>
<td>Set parameter values</td>
<td>In the form, enter these values <strong>Import option:</strong> Provide event hub settings manually <strong>Service bus namespace:</strong> &lt;name of event hub namespace e.g. aerodemo1&gt; <strong>Event hub name:</strong> &lt;name of the event hub e.g. aerodemo1_EH&gt; <strong>Event hub policy name:</strong> RootManageSharedAccessKey <strong>Event hub policy key:</strong> &lt;insert the key you copied in Step-3&gt; <strong>Event hub consumer group:</strong> blobcgClick &quot;Create&quot; button to provision the input. <strong>NOTE:</strong> Repeat above steps to create input for the second job maintenancesa02asapbi, using identical parameter values, <strong>except</strong> for &quot;Event hub consumer group&quot; enter value as &quot;pbicg&quot;</td>
</tr>
</tbody>
</table>
<table>
<thead>
<tr>
<th>Add Query for (ASA) job</th>
<th>In the ASA blade for maintenancesa02asablob job, select &quot;Job Topology&quot; &gt; &quot;Query&quot; &gt; &quot;+Add&quot;</th>
</tr>
</thead>
<tbody>
<tr>
<td>Configure Query</td>
<td>In the query editor box, insert the contents of the file named as &quot;maintenancesa02asablob&quot; in the <strong>Stream Analytics Queries</strong> folder in the repository you downloaded in Step-2. <strong>NOTE:</strong> Repeat above steps to create query for the second job maintenancesa02asapbi.</td>
</tr>
</tbody>
</table>
<table>
<thead>
<tr>
<th>Add Output for (ASA) job maintenancesa02asablob</th>
<th>In maintenancesa02asablob blade, select &quot;Job Topology&quot; &gt; &quot;Output&quot; &gt; &quot;+Add&quot;</th>
</tr>
</thead>
<tbody>
<tr>
<td>Set parameter values</td>
<td>In the form, enter these values <strong>Output Alias:</strong> RawDataBlobSink <strong>Import option:</strong> Provide blob storage settings manually <strong>Storage account:</strong> &lt;name of storage e.g. aerodemo1&gt; <strong>Storage account key:</strong> &lt;insert the key you copied in Step-2&gt; <strong>Container:</strong> maintenancesadata <strong>Path pattern:</strong> rawdata/date={date}/hour={time} <strong>Date format:</strong> YYYY-MM-DD<em>[This defines the format of the path strings in the storage account and is required for the HIVE scripts that will be executed as part of the larger data flow.]</em> <strong>Time format:</strong> HH</td>
</tr>
</tbody>
</table>
<p>Next, configure three outputs, namely, &quot;Aircraftmonitor&quot;, &quot;Aircraftalert&quot;, and &quot;Flightsbyhour&quot; against the maintenancesa02asapbi ASA job.</p>
<table>
<thead>
<tr>
<th>Add Output for (ASA) job maintenancesa02asapbi</th>
<th>In maintenancesa02asapbi blade, select &quot;Job Topology&quot; &gt; &quot;Output&quot; &gt; &quot;+Add&quot;</th>
</tr>
</thead>
<tbody>
<tr>
<td>Set parameter values</td>
<td>In the form for each output, enter the values as shown below: <strong>NOTE:</strong> In the steps below replace &lt;value&gt; with the three output names &quot;Aircraftmonitor&quot;, &quot;Aircraftalert&quot;, and &quot;Flightsbyhour&quot;, as you repeat these steps three times.  <strong>Output Alias:</strong> &lt;value&gt; <strong>Sink:</strong> Power BI Click the <em>Authorize</em> button to link to your Office 365 subscription.  <strong>DataSet Name:</strong> &lt;value&gt; <strong>Table Name:</strong> &lt;value&gt; Click on &#39;Create&#39; button to create the new output.</td>
</tr>
</tbody>
</table>
<p><strong>Section 5: Run Application to Generate Data</strong></p>
<p>In this solution, the event hub received data from a simulator that streams simulated aircraft engine data.</p>
<p>Now that we have the event hub and stream analytics configured we can configure the data generator.</p>
<table>
<thead>
<tr>
<th>Launch application</th>
<th>In the repository, you downloaded in Step 2, open the &quot;Predictive Maintenance Data Generator&quot; folder Start the application &quot;Generator&quot;</th>
</tr>
</thead>
<tbody>
<tr>
<td>Configure application</td>
<td>In the Generator user interface, configure <strong>EventHubName</strong> : &lt;event hub name, e.g.  aerodemo1_EH&gt; <strong>EventHubConnectionString:</strong> &lt;insert the key you copied in Step-3&gt; Click on &quot;Save Configuration Changes&quot; button to save the config.</td>
</tr>
<tr>
<td>Start application</td>
<td>Click on the green &quot;Start&quot; button to start data generation.The status button will change to green and display the text &quot; <strong>Running&quot;</strong> and the <strong>&quot;Events&quot;</strong> counter next to the button will start to increment.</td>
</tr>
</tbody>
</table>
<p><strong>NOTE:</strong>  Data generator can also be run in the cloud, using an Azure  <a href="https://docs.microsoft.com/en-us/azure/virtual-machines/virtual-machines-windows-hero-tutorial">Virtual Machine</a>.</p>
<p><strong>Section 6: Validate the Data Generation Path</strong></p>
<p>The Event hub and the ASA jobs receives data generated by the data generator. So, both the Event Hub and ASA will be now checked to validate the data generation path.</p>
<p><strong>Validate Event Hub</strong></p>
<p>|</p>
<ol>
<li>In the event hub namespace aerodemo1 blade, select Overview.
|
| --- |
|</li>
<li>The overview dashboard will show, with a 15-minute latency, the activity in the event hub. Both the graph and the table will show the event activity in terms of incoming messages, send requests etc.
|</li>
</ol>
<p><strong>Validate Stream Analytics Jobs</strong></p>
<p>To validate ASA jobs, you need to first start executing each of the jobs, <strong>maintenancesa02asablob</strong> and <strong>maintenancesa02asapbi.</strong></p>
<p>|</p>
<ol>
<li>In the blade of each ASA job, select Overview. From the menu at the top of the blade, click on &quot;Start&quot; to begin to execute the jobs.
|
| --- |
|</li>
<li>With a 15-minute latency, both the graph and &quot;Input Event&quot; and &quot;Output Event&quot; counters in the monitoring section of the blade for each job will begin to increase.
|</li>
</ol>
<p>Finally, validate that the files are being created in the storage account by following these steps:</p>
<p>|</p>
<ol>
<li><strong>1.</strong> Open the Microsoft Azure Storage Explorer desktop app
|
| --- |
|</li>
<li><strong>2.</strong> Navigate to the storage account set up previously (aerodemo1)
|
|</li>
<li><strong>3.</strong> Open the blob container &quot;maintenancesadata&quot;
|
|</li>
<li><strong>4.</strong> Note that a sub folder <em>rawdata</em> has been created by the stream analytics job.
|</li>
</ol>
<p><strong>Section 7: Deploy Azure SQL Server and Database</strong></p>
<p>So far we have configured and validated the ingestion path. Next we can start building the data processing paths. In the solution Azure Data Factory is used to process the data, which requires a couple more services, namely, Azure SQL Database and Azure Machine Learning.</p>
<p>In this step, we will configure an Azure SQL Database to hold the remaining useful life (RUL) predictions which results from running the Azure Machine Learning experiment.</p>
<table>
<thead>
<tr>
<th>Add Azure SQL Database</th>
<th>In Azure Portal, click on &quot;+ New&quot; &gt; &quot;Databases&quot; &gt; &quot;SQL Database&quot; &gt; &quot;Create&quot;.</th>
</tr>
</thead>
<tbody>
<tr>
<td>Set parameter values</td>
<td>In the form, enter these values <strong>Database Name:</strong> pmaintenancedb <strong>Subscription:</strong> &lt;your Azure subscription name&gt; <strong>Resource group:</strong> Choose &quot;Use Existing&quot;; specify aerodemo1 <strong>Select Source:</strong> Blank DatabaseServer: Choose &quot;Create new server&quot;. In the new server form configure: <strong>Server name:</strong> aerodemo1 <strong>Server admin login:</strong> &lt;enter username&gt; <strong>Password:</strong> &lt;enter password&gt; <strong>Confirm password:</strong> &lt;re-enter password&gt;  <strong>NOTE:</strong> Write down the server-name, username and password as you will need to refer these later.  <strong>Location:</strong> Central US For all other parameters, it is okay to use the default values.</td>
</tr>
<tr>
<td>Provision Database</td>
<td>Click on &quot;Create&quot; to provision the new database. Wait till this step completes.</td>
</tr>
<tr>
<td>Set firewall to enable access from desktop</td>
<td>In the newly created database pmaintenancedb blade, select Overview &gt; &quot;Set Server Firewall&quot; (from top menu). Create a firewall name using following valuesRule name: OpenStart IP: 0.0.0.0End IP: 255.255.255.255  <strong>NOTE:</strong> This firewall rule is not recommended systems in production, where you want to set this rule to the IP range of your secure system. However, for this demo it is acceptable.</td>
</tr>
<tr>
<td>Get database connection string</td>
<td>In pmaintenancedb blade, &quot;Overview&quot; &gt; &quot;Show database connection strings&quot;. Copy the ADO.NET (SQL authentication) string and store in the table below</td>
</tr>
</tbody>
</table>
<p><strong>NOTE:</strong> To execute further steps, you need to install SQL Server Management Studio (SSMS) or a similar tool.</p>
<table>
<thead>
<tr>
<th>Connect to the SQL database from your desktop</th>
<th>Launch SSMS (or a similar tool) in your desktop, in the dialogue box enter <strong>Server name</strong> : aerodemo1. database.windows.net,1433 (most tools require the full name) <strong>Authentication:</strong> SQL Server Authentication</th>
</tr>
</thead>
<tbody>
<tr>
<td>Create tables for ML experiment and Azure Data factory</td>
</tr>
</tbody>
</table>
<ol>
<li><strong>1.</strong> Click on pmaintenancedb SQL Database</li>
<li><strong>2.</strong> Click &quot;New Query&quot; in the tool bar</li>
<li><strong>3.</strong> From the repository that you downloaded in step 2, copy the file in Storage Files\script\SQL and Execute it here.
This step will create the necessary table for the machine learning experiment and a stored procedure that will be used by Azure Data Factory.  |</li>
</ol>
<p><strong>Table 3: Azure SQL Database Information</strong></p>
<table>
<thead>
<tr>
<th>Server Name</th>
<th></th>
</tr>
</thead>
<tbody>
<tr>
<td>Database</td>
<td></td>
</tr>
<tr>
<td>User Name</td>
<td></td>
</tr>
<tr>
<td>Password</td>
<td></td>
</tr>
<tr>
<td>Connection String</td>
</tr>
</tbody>
</table>
<p><strong>Section 8: Deploy Azure Studio ML Workspace and Experiment</strong></p>
<p>The first thing we need to do is to create the workspace. A workspace is where experiments are created. It is also tied to a storage account for intermediate results during experiment processing.</p>
<table>
<thead>
<tr>
<th>Add Azure ML Workspace</th>
<th>In Azure Portal, click on &quot;+ New&quot; &gt; &quot;Data + Analytics&quot; &gt; &quot;Machine Learning Workspace&quot; &gt; Create</th>
</tr>
</thead>
<tbody>
<tr>
<td>Set parameter values</td>
<td>In the form, enter these values <strong>Workspace Name:</strong> aerodemo1 <strong>Subscription:</strong> &lt;your Azure subscription name&gt; <strong>Resource group:</strong> Choose &quot;Use Existing&quot;; specify aerodemo1 <strong>Location:</strong> Central US <strong>Storage Account:</strong> Choose &quot;Use Existing&quot;; specify aerodemo1 <strong>Pricing tier:</strong> Standard <strong>Web service plan:</strong> Choose &quot;Create New&quot;, enter service plan name For all other parameters, it is okay to use the default values.</td>
</tr>
<tr>
<td>Copy over the required experiment from the Gallery</td>
</tr>
</tbody>
</table>
<ol>
<li><strong>1.</strong> Click <a href="https://gallery.cortanaintelligence.com/Experiment/bcae226bc74a4cbbb0ff700ac97448bf">here</a> to navigate to the experiment.</li>
<li><strong>2.</strong> Click the &quot;Open in Studio&quot; button.</li>
<li><strong>3.</strong> After ML studio launches, in the dialog box &quot;Copy experiment from Gallery&quot;, select:<ul>
<li><strong>oo**</strong> ML Workspace:** aerodemo1</li>
<li><strong>oo**</strong> Location:<strong> Central US
The experiment will now be copied over to aerodemo1 workspace. </strong>NOTE:** This process may take a few minutes. Once copied the experiment will open in the requested workspace. If prompted for upgrade, select OK.  |
| Run ML Experiment | Click &quot;RUN&quot; at the bottom of the page. NOTE: This step will take several minutes to finish and all objects in the graph will have a check box on them to indicate they have run.  |
| Create the Azure Web Service |</li>
</ul>
</li>
<li><strong>1.</strong> Click &quot;DEPLOY WEB SERVICE&quot; at the bottom of the page to create the Azure Web Service associated with the experiment. When completed the browser will redirect to the web service home page.</li>
<li><strong>2.</strong> Copy the &quot;API key&quot; from the web service home page and record it in table 4 below as you will need this information later.</li>
<li><strong>3.</strong> Click the link <strong>BATCH EXECUTION</strong> under the <strong>API HELP PAGE</strong> section. On the BATCH EXECUTION help page, copy the Request URI under the Request section and record it in table 4 below as you will need this information later.
<strong>NOTE:</strong></li>
<li>Copy only the URI part &quot;https:…/jobs&quot; ignoring the URI parameters starting with &quot;?&quot;.</li>
<li>The web service home page can also be found clicking the <strong>WEB SERVICES</strong> button on the left menu of the <strong>studio.azureml.net</strong> page once logged in.
|</li>
</ol>
<p><strong>Table 4: Azure Web Service Parameters</strong></p>
<table>
<thead>
<tr>
<th>API KEY</th>
<th></th>
</tr>
</thead>
<tbody>
<tr>
<td>REQUEST URI</td>
</tr>
</tbody>
</table>
<p><strong>Section 9: Deploy Azure Data Factory</strong></p>
<p>We have now created the necessary components to put the data pipeline together using Azure Data Factory. Data factories are orchestration services that move and process data in a dependency flow pipeline.</p>
<p>The data factory in this solution uses an on-demand <strong>HDInsight</strong> cluster.  HIVE scripts run on this cluster to process raw data streamed from the event hub and ASA, to create the required aggregates and engineered features for the machine learning experiment.</p>
<p>Another <em>HIVE</em> script is executed to feed the machine learning experiment&#39;s batch execution endpoint.</p>
<p>The results of the experiment are put in another blob which is then copied to the Azure SQL Database.</p>
<p>Based on the data, and the flow of data, this data factory will be scheduled to run every 3 hours. This means once the entire flow is configured and enabled, results will not be present until approximately 3.5 hours later.</p>
<table>
<thead>
<tr>
<th>Add Azure Data Factory</th>
<th>In Azure Portal, click on &quot;+ New&quot; &gt; &quot;Data + Analytics&quot; &gt; &quot;Data Factory&quot;.</th>
</tr>
</thead>
<tbody>
<tr>
<td>Set parameter values</td>
<td>In the form, enter these values <strong>Name:</strong> aerodemo1 <strong>Subscription:</strong> &lt;your Azure subscription name&gt; <strong>Resource group:</strong> Choose &quot;Use Existing&quot;; specify aerodemo1 <strong>Location:</strong> Central US</td>
</tr>
<tr>
<td>Provision</td>
<td>Click &quot;Create&quot;. Wait till the data factory is deployed, it may take several minutes.</td>
</tr>
</tbody>
</table>
<p>Next, we will configure the various data factory components which will be used in this solution.</p>
<p><strong>Linked services</strong> define the information for the data factory needed to connect to other services.</p>
<p><strong>Datasets</strong> are named references used for input or output from an activity.</p>
<p><strong>Pipelines</strong> contain one or more activities to be executed.</p>
<h4 id="-deploy-linked-services-"><strong>Deploy Linked Services</strong></h4>
<p>In this solution, we will deploy 5 linked services using scripts already included in the repository you downloaded in step 2.</p>
<p>We will create two types of linked service Store and Compute.</p>
<table>
<thead>
<tr>
<th>Edit scripts for Azure Storage linked services</th>
<th>Replace the Connection String value in the two files &quot;StorageLinkedService_Store.txt&quot; and &quot;HDInsightStorageLinkedService_Store.txt&quot; with the connection string of the storage account aerodemo1 (created in Step 2).</th>
</tr>
</thead>
<tbody>
<tr>
<td>Deploy Azure Store linked services</td>
<td>In Azure data factory aerodemo1 blade, &quot;Author and Deploy&quot; &gt; &quot;New data store&quot; &gt; &quot;Azure storage&quot; will open a draft file. In the editor overwrite the content of the file with that of StorageLinkedService_Store.txt. Click &quot;Deploy&quot;, wait for deployment to complete.Repeat above step for HDInsightStorageLinkedService_Store.txt</td>
</tr>
<tr>
<td>Edit scripts for Azure SQL linked services</td>
<td>Replace the Connection String value in the file AzureSqlLinkedService_Store.txt.with the connection string of the SQL database pmaintenancedb (refer table in Step 6).</td>
</tr>
<tr>
<td>Deploy Azure SQL linked services</td>
<td>In Azure data factory aerodemo1 blade, &quot;Author and Deploy&quot; &gt; &quot;New data store&quot; &gt; &quot;Azure SQL&quot; will open a draft file. In the editor overwrite the content of the file with that of AzureSqlLinkedService_Store.txt. Click &quot;Deploy&quot;, wait for deployment to complete.</td>
</tr>
<tr>
<td>Edit scripts for Azure Compute linked services for machine learning call</td>
<td>Replace the values in mlEndpoint and APLI key in the file AzuremlBatchEndpointBatchLocation_Compute.txtwith Request URI and API Key values from the ML experiment (refer table in Step 7).</td>
</tr>
<tr>
<td>Deploy Azure Compute linked services for machine learning call</td>
<td>In Azure data factory aerodemo1 blade, &quot;Author and Deploy&quot; &gt; &quot;New Compute&quot; &gt; &quot;Azure ML&quot; will open a draft file. In the file editor overwrite the content of the file with that of AzuremlBatchEndpointBatchLocation_Compute.txt. Click &quot;Deploy&quot;, wait for deployment to complete.</td>
</tr>
<tr>
<td>Deploy Azure Compute linked services for on-demand HDInsight cluster</td>
<td>In Azure data factory aerodemo1 blade, &quot;Author and Deploy&quot; &gt; &quot;New Compute&quot; &gt; &quot;HDInsight Cluster&quot; will open a draft file. In the file editor overwrite the content of the file with that of HDInsightLinkedService_Compute.txt. Click &quot;Deploy&quot;, wait for deployment to complete.</td>
</tr>
</tbody>
</table>
<p>The linked services are now complete; we will now move on to creating the data sets.</p>
<table>
<thead>
<tr>
<th></th>
</tr>
</thead>
<tbody>
<tr>
<td></td>
</tr>
</tbody>
</table>
<h4 id="-deploy-datasets-"><strong>Deploy Datasets</strong></h4>
<p>For this solution, we are going to need 6 data sets that are of type Azure Storage blob and Azure SQL tables.</p>
<table>
<thead>
<tr>
<th>Deploy Data Sets</th>
<th>In Azure data factory aerodemo1 blade, click on &quot;Author and Deploy&quot;.At the top of the tab, click &quot;New dataset/Azure blob storage&quot; EXCEPT for the content of SQLScoredResultTable.txt which you will choose &quot;New dataset/Azure SQL&quot;Copy the contents of the file into the editor.Click Deploy</th>
</tr>
</thead>
<tbody>
<tr>
<td></td>
</tr>
</tbody>
</table>
<h4 id="-deploy-pipelines-"><strong>Deploy Pipelines</strong></h4>
<p>For this solution, we are going to need 3 pipelines to process our raw data from stream analytics, send the aggregated values to the machine learning experiment, and then finally move those results to our SQL database.</p>
<p>There are two modifications that the files require.</p>
<ol>
<li>In the MLScoringPipeline and AggregateFlightInfoPipeline files locate the text near the top of the file and replace &lt;accountname&gt; with aerodemo1 (the name of the storage account created in Step 2).</li>
<li>Edit the activity periods for the 3 pipelines. An activity period describes the dates and times that the pipeline should be executed. For a detailed discussion on activity periods click <a href="https://azure.microsoft.com/en-us/documentation/articles/data-factory-create-pipelines/">here</a>.</li>
</ol>
<p>At the bottom of each of the three pipeline scripts there is a section that contains the following settings:</p>
<pre class="editor-colors lang-text"><div class="line"><span class="syntax--text syntax--plain"><span class="syntax--meta syntax--paragraph syntax--text"><span>&amp;quot;start&amp;quot;:&nbsp;&amp;quot;[Start&nbsp;Activity&nbsp;Period&nbsp;UTC]&amp;quot;,</span></span></span></div><div class="line"><span class="syntax--text syntax--plain"><span>&nbsp;</span></span></div><div class="line"><span class="syntax--text syntax--plain"><span class="syntax--meta syntax--paragraph syntax--text"><span>&amp;quot;end&amp;quot;:&nbsp;&amp;quot;[End&nbsp;Activity&nbsp;Period&nbsp;UTC]&amp;quot;,</span></span></span></div></pre><p>These fields identify when the pipeline should be active and are in UTC time. So, if you are in EST and you want to set this active from March 11th from 12:00 PM EST to 5:00 PM EST you would modify these as follows:</p>
<pre class="editor-colors lang-text"><div class="line"><span class="syntax--text syntax--plain"><span class="syntax--meta syntax--paragraph syntax--text"><span>&amp;quot;start&amp;quot;:&nbsp;&amp;quot;2016-03-11T12:00:00Z&amp;quot;,</span></span></span></div><div class="line"><span class="syntax--text syntax--plain"><span>&nbsp;</span></span></div><div class="line"><span class="syntax--text syntax--plain"><span class="syntax--meta syntax--paragraph syntax--text"><span>&amp;quot;end&amp;quot;:&nbsp;&amp;quot;2016-03-11T17:00:00Z&amp;quot;,</span></span></span></div></pre><p>When the pipelines are active you will incur some expense.</p>
<table>
<thead>
<tr>
<th>Deploy Pipelines</th>
<th>In Azure data factory aerodemo1 blade, click on &quot;Author and Deploy&quot;.At the top of the tab, click &quot;More commands&quot; &gt; &quot;New pipeline&quot;Copy the contents of the file into the editor.Click Deploy</th>
</tr>
</thead>
<tbody>
<tr>
<td></td>
</tr>
</tbody>
</table>
<h4 id="-check-data-factory-"><strong>Check Data Factory</strong></h4>
<p>From the data factory blade,</p>
<ol>
<li>To see the layout of the factory, click &quot;Diagram&quot; <strong>.</strong></li>
<li>Click on the &quot;Monitor &amp; Manage&quot; button and validate your credentials again if prompted. If there are errors being reported, navigate back to portal.azure.com to the data factory and click on the datasets to determine where in the pipeline issues have been detected.</li>
</ol>
<h3 id="-section-10-configure-power-bi-for-visualization-"><strong>Section 10: Configure Power BI for Visualization</strong></h3>
<p>This section describes how to set up Power BI dashboard to visualize your real-time data from Azure Stream Analytics (hot path), as well as batch prediction results from Azure machine learning (cold path).</p>
<h1 id="pre-requisites-">Pre-requisites:</h1>
<ol>
<li>Download and install the free software <a href="https://powerbi.microsoft.com/documentation/powerbi-desktop-get-the-desktop/">Power BI desktop</a>. In this solution, Power BI connects to the Azure SQL database (provisioned in Step 6) as its data source, where the prediction results are stored. You must successfully complete Step 6 to proceed in this section.</li>
<li>Access to &quot;PredictiveMaintenanceAerospace.pbix&quot; in the &quot;Power BI template&quot; directory in the downloaded repository. This file contains some seed data so that you may create the Power BI dashboard right away.</li>
<li><p>To setup Power BI dashboard in the hot path, you must have already completed Step 8 and successfully deployed the Datasets in Azure Data factory.</p>
</li>
<li><ol>
<li><strong>Setup Dashboard for Cold path</strong></li>
</ol>
</li>
</ol>
<p>In the cold path data pipeline, the essential goal is to get the predictive RUL (remaining useful life) of each aircraft engine once it finishes a flight (cycle). The prediction result is updated every 3 hours for predicting the aircraft engines that have finished a flight over the past 3 hours.</p>
<p>After you deploy the solution, a real prediction will show up in the database within 3 hours.</p>
<p>Follow the steps below to connect pbix file to the SQL Database (containing prediction results) for visualization.</p>
<ol>
<li>Get the database credentials from SQL database table where you saved the values in Step 6.</li>
</ol>
<p>You&#39;ll need database server name, database name, user name and password before moving to next steps. Update the data source of the cold path report file with Power BI Desktop.</p>
<ol>
<li><p>Double-click the Power BI Template\PredictiveMaintenanceAerospace.pbix file. If you see any warning messages when you open the file, ignore them. On the top of the file, click &#39;Edit Queries&#39;.</p>
<p>![](data:image/*;</p>
</li>
</ol>
<p>1.
4.You&#39;ll see two tables, RemainingUsefulLife and PMResult. Select the first table and click <img src="C:\Users\v-srabha\Documents\Team Danielle\data:image\*;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8\9hAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAG8SURBVDhPpZM9rwFREIZfro8oJKhFfIVIJEgkEon4A3qFVlT8hxsavU6BWqFQED9AKQo9kWiEQiNRYO++s2ex95b3SU52zcw7Zs7M2iKRiIZ\YFfPFy6XC6lUSv0ysNlsSCaT4vuNJUE+n8discB4PEYulxOh3W5HoVDAZDLBbDZDNptV0QYO9RRutxtCoZAI+\0+BoMBHA4H6vU6PB4PgsEgrterijaw3AGFFJXLZWV5o2ka5vM5ms2mshhICxSa5TqdTnFQ8Hw+5fCduN3uV6zJl9\v\2ZfxWIR1WoVlUpFBNPpFLVaDcPhELFYDNFoFOFwGF6vF7pGWjudTqBDj7dyv9+1TCajsT0evSXleXM+n8UnLTwej1e5hCWaI\t8J4wx48mXz+f75uUsl0scDgcZJUUsd7VaIRAIoN1uy3T0ytDr9TAajWRKl8vl7xToLJVKyvJGr1r2oNVqKYuBZZGYgJMwYak8JmyFMZ9YEqTTaZkG\+14PKLT6aDb7cptU8j9SCQSKtrAsokM2m630O8FjUYDm81GbOv1Wsa53+9lfJ\8+Rq5SFzZ3W6nLEbieDwuyT9bIv\8nIEfs07SCSYX4BEAAAAASUVORK5CYII=" alt="">next to &#39;Source&#39; under &#39;APPLIED STEPS&#39; in &#39;Query Settings&#39; panel on the right. Ignore any warning messages that appear.</p>
<ol>
<li>In the pop out window, replace &#39;Server&#39; and &#39;Database&#39; with your own server and database names, and then click &#39;OK&#39;. For server name, make sure you specify the port 1433 (database.windows.net, 1433). Leave the Database field as pmaintenancedb. Ignore the warning messages that appear on the screen.</li>
<li>In the next pop out window, you&#39;ll see two options on the left pane (Windows and Database). Click &#39;Database&#39;, fill in &#39;Username&#39; and &#39;Password&#39; for the SQL Database.</li>
</ol>
<p>If prompted for &quot;<em>level to apply these settings to&quot;</em>, check database level option. Click &#39;Connect&#39;.</p>
<p>1.
7.For the second table PMResult click <img src="C:\Users\v-srabha\Documents\Team Danielle\data:image\*;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8\9hAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAG8SURBVDhPpZM9rwFREIZfro8oJKhFfIVIJEgkEon4A3qFVlT8hxsavU6BWqFQED9AKQo9kWiEQiNRYO++s2ex95b3SU52zcw7Zs7M2iKRiIZ\YFfPFy6XC6lUSv0ysNlsSCaT4vuNJUE+n8discB4PEYulxOh3W5HoVDAZDLBbDZDNptV0QYO9RRutxtCoZAI+\0+BoMBHA4H6vU6PB4PgsEgrterijaw3AGFFJXLZWV5o2ka5vM5ms2mshhICxSa5TqdTnFQ8Hw+5fCduN3uV6zJl9\v\2ZfxWIR1WoVlUpFBNPpFLVaDcPhELFYDNFoFOFwGF6vF7pGWjudTqBDj7dyv9+1TCajsT0evSXleXM+n8UnLTwej1e5hCWaI\t8J4wx48mXz+f75uUsl0scDgcZJUUsd7VaIRAIoN1uy3T0ytDr9TAajWRKl8vl7xToLJVKyvJGr1r2oNVqKYuBZZGYgJMwYak8JmyFMZ9YEqTTaZkG\+14PKLT6aDb7cptU8j9SCQSKtrAsokM2m630O8FjUYDm81GbOv1Wsa53+9lfJ\8+Rq5SFzZ3W6nLEbieDwuyT9bIv\8nIEfs07SCSYX4BEAAAAASUVORK5CYII=" alt="">next to &#39;Source&#39; under &#39;APPLIED STEPS&#39; in &#39;Query Settings&#39; panel on the right, and repeat steps 4 and 5.</p>
<ol>
<li>Once you&#39;re guided back to the previous page, from the top menu select Close &amp; Apply.</li>
<li>Click File &gt; Save button to save the changes.</li>
<li>Visualize Seed Data: The Power BI file has now established connection to the server. If your visualizations are empty, make sure you clear the selections on the visualizations by clicking the eraser icon on the upper right corner of the legends.</li>
</ol>
<p>Use the refresh button to reflect new data on the visualizations. Initially, you will only see the seed data on your visualizations as the data factory is scheduled to refresh every 3 hours. After 3 hours, you will see new predictions reflected in your visualizations when you refresh the data.</p>
<ol>
<li><p>Publish the cold path dashboard online: This step is optional and requires a Power BI online account (or Office 365 account). In the top menu, click &#39;Publish&#39; and few seconds later a message window appears confirming &quot;Publishing to Power BI Success!&quot; with a green check mark. In the message window, click the link &quot;Open PredictiveMaintenanceAerospace.pbix in Power BI&quot;. To find detailed instructions, see <a href="https://powerbi.microsoft.com/en-us/documentation/powerbi-desktop-upload-desktop-files/">Publish from Power BI Desktop.</a></p>
<pre class="editor-colors lang-text"><div class="line"><span class="syntax--text syntax--plain"><span>&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="syntax--meta syntax--paragraph syntax--text"><span>The&nbsp;following&nbsp;steps&nbsp;are&nbsp;to&nbsp;be&nbsp;executed&nbsp;in&nbsp;Power&nbsp;BI&nbsp;online&nbsp;(in&nbsp;My&nbsp;workspace).</span></span></span></div></pre></li>
<li><p>From the left menu panel, Click on &quot;My Workspace&quot; &gt; &quot;Reports&quot;. Select the report you just published.
2.
2.Once you open the report, click <img src="C:\Users\v-srabha\Documents\Team Danielle\data:image\*;base64,iVBORw0KGgoAAAANSUhEUgAAABYAAAAWCAYAAADEtGw7AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAM3SURBVEhLrZSNT1pXAMV\7\EolAICtotonbRu6pal7Sj9kEp0S9Nk2f7dJcsWo3wURGe71amluDhbpqItRT6FB+\tPmUTlDGa7CQ3wLvcH+eeey6SLkSbVFVtveshsUSXJKTWx26SW6\9S6uTy7wmW6jSbD3qpg8E65T2N1n48Xt+WFjhda6C1po5rw8EV3jzKkUWB8rhb4QjK+zkql3hspFp++glrVnmqFjF4rlJKBTAXUqxGE7yRxfnfTvWmlWy6RRb2Qp2twvPjVs8euTHVXpFNPqzcF7uyLwvsK4ds7\1nHBiA9NogNDdceyXrFz13SY042eg8JJo7FlH5l3BRgP\HpoBTa0Qja+heb9kNniLIYf1tGqSjGNokgfB21gPX7AYXSWTPxZHLKbq9fpZj3WNWjnHTnqDl7\vUqiqYm2TisjVNubnq9AdvHbLCVQXtcvvpVlefiGqV6GUL2Id9fPkcZDrTqUT3Cj8SWL+J37J1PB4h3DbTNRKBaTBSe7f\0I4tbS22OB9ZpOnkSUOlGEmfF5cAx6Gh4cYsFsxiV9uA+tUczskw\NsFDwE50JMjbgxi+e62LLJJLdumoC+WSceWyZrvkFo9gG+wSuYxKwsn93FtowlLnvGuBf6ms+deVbiSdLZIrqioLRB85kNopEk+4qPmdmH3LzmwCzLHVBD5w5P4srgGIHQHJ9YD0gsRljP5AXuVGp+j9V4gj1lXDidZvyaXTjtroutENu2C7g\4MddThNZiLGZeY8qGqKYhTNdwjE4ynW3sf1\V9e6NSpv2d7a5qjpxKHukow+JbUrnFsvcVkMrVEzOtn6dnddADfKB\waC7OcKjIx8w3ffftYxHJIIhJnPbVLrqRiczguZHpeZ2DhQC0dsJaI8mynxsT0HPc+G+HqR76TzD8V8Nh8hHTZie9jF2alN\ifuqnFLGtLUVa3a0xNz3J3agSbubVYXJzy222Siec0vX4e3vHhEHn30glYq79jXWx\KV1hMjhHYGpYQM8vbFI7rolOW7Baeh3bqWTDTXVvi\S+LpwaUMNpNzcmLFZbX1BDwnFNb5SPeFeVcLmcWP4ju37V8V\x\wn+ApH7eWxJ+hXHAAAAAElFTkSuQmCC" alt="">to pin all the visualizations to your dashboard. You may need to create new dashboard or select existing dashboard. To find detailed instructions, see <a href="https://powerbi.microsoft.com/en-us/documentation/powerbi-service-pin-a-tile-to-a-dashboard-from-a-report/">Pin a tile to a Power BI dashboard from a report</a>.</p>
</li>
<li>Go to the dashboard page and adjust the size and location of your visualizations and edit their titles. You can find detailed instructions on <a href="https://powerbi.microsoft.com/en-us/documentation/powerbi-service-edit-a-tile-in-a-dashboard/#rename">how to edit your tiles here</a>.</li>
</ol>
<p>Below is an example dashboard with some cold path visualizations pinned to it. Depending on how long you run your data generator, your numbers on the visualizations may be different.</p>
<p> ![](data:image/*;</p>
<p>1.
4.To schedule refresh of the data, hover your mouse over PredictiveMaintenanceAerospace dataset. Click <img src="C:\Users\v-srabha\Documents\Team Danielle\data:image\*;base64,iVBORw0KGgoAAAANSUhEUgAAABoAAAAQCAYAAAF\1l8+AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAABtSURBVDhPY7C1tf2PjJEEYtAF4BwnTBl0TJ4kYYnWkpj\ZXFO\zM90STQMV4H4MKjmqB4ADV5ZtaC6biyJjBd0grhI+PhGBDk4BFqESiJgAoCCN8JnFRAhQKEHwNOMrACAhcejSOyMZ0ssv0PAM3Qzj3jApNzAAAAAElFTkSuQmCC" alt="">and then choose Schedule Refresh.
<strong>Note:</strong> If you see a warning massage, click Edit Credentials and make sure your database credentials are the same as those used in Step 6 of this document.
Expand the Schedule Refresh section. Turn on &quot;keep your data up-to-date&quot;.</p>
<ol>
<li><p>Schedule the refresh based on your needs. To find more information, see <a href="https://powerbi.microsoft.com/en-us/documentation/powerbi-refresh-data/">Data refresh in Power BI</a>.</p>
</li>
<li><ol>
<li><strong>Setup Dashboard for the Hot Path</strong></li>
</ol>
</li>
</ol>
<p>Pre-requisites:</p>
<ul>
<li><strong></strong> A <a href="http://www.powerbi.com/">Power BI online</a> account is required to perform the following steps. If you don&#39;t have an account, you can <a href="https://powerbi.microsoft.com/pricing">create one</a>.</li>
<li><strong></strong> You have already completed Step 8, Deploy Azure Stream Analytics Jobs.</li>
</ul>
<p>Now we need to create tiles to visualize streaming data from the Stream Analytics jobs created in Step 8 of this solution deployment.</p>
<p>In <a href="http://www.powerbi.com/">Power BI online</a>, on the left panel, under &quot;My Workspace&quot; &gt; &quot;Dataset&quot;, the dataset names <em>aircraftmonitor</em>, <em>aircraftalert</em>, and <em>flightsbyhour</em> should appear. The dataset <em>flightsbyhour</em> may not show up at the same time as the other two datasets due to the nature of the SQL query behind it. However, it should show up after an hour.</p>
<p>Make sure the <strong>Visualizations</strong> pane is open on the right side of the screen.</p>
<p>When you start streaming, data using the generator, you&#39;ll see the input and output counters in ASA increment in the Azure portal dashboard. For the outputs linked to power BI, this data will stream into Power BI, and you can start visualizing the streaming data.</p>
<p>Depending on how long you run your data generator, your numbers on the visualizations may differ. You can create other dashboard tiles based on appropriate datasets to visualize the data.</p>
<p>For example, to create a tile with title &quot;Fleet View of Sensor 11 vs. Threshold 48.26&quot; follow the steps as below:</p>
<ol>
<li><strong>1.</strong> On the left panel Dataset section, click on aircraftmonitor.</li>
<li><strong>2.</strong> Select the line chart icon in the visualization panel.</li>
<li><strong>3.</strong> In the Fields pane, check the box against &quot;processed&quot;, verify it gets added under &quot;Axis&quot; in the Visualizations pane.</li>
<li><strong>4.</strong> In the Fields pane, check the boxes against &quot;s11&quot; and &quot;alerts&quot; so that they both appear under &quot;Values&quot;. In the dropdown list against &quot;s11&quot; and &quot;alerts&quot;, change the selection from &quot;Sum&quot; to &quot;Average&quot;.</li>
<li><strong>5.</strong> Click &quot;Save&quot; on the top menu and name the report &quot;aircraftmonitor&quot;. This report will now get listed under the Reports section in the navigator panel.</li>
<li><strong>6.</strong> From the top menu, click on &quot;Pin LIVE Page&quot;. In &quot;Pin to Dashboard&quot; dialog box, either create a new dashboard or select an existing dashboard, then click &quot;Pin Live&quot;.</li>
<li><strong>7.</strong> Go to the dashboard to edit the title to &quot;Fleet View of Sensor 11 vs. Threshold 48.26&quot; and subtitle to &quot;Average across fleet over time&quot;.</li>
</ol>
<h1 id="execute-solution-and-validate">Execute Solution and Validate</h1>
<p>All the components and services that are needed for the demo are now in place. It is time to start up the system to have the data flow through the services and produce results for the Power BI dashboard.</p>
<p>It takes some time for the data to seed blob storage. The data factory, as noted earlier, is scheduled to run every three hours.</p>
<p>This solution template has showed you how to customize the duration for which this runs, and consequently limit the expense to your subscription.</p>
<h2 id="-validate-the-data-generation-path-"><strong>Validate the Data Generation Path</strong></h2>
<p>To validate the data generation path, start the desktop data generator application and follow <strong>the steps in section 6</strong> of this guide to verify that both the event hub and ASA are receiving the streaming data.</p>
<h2 id="-validate-the-data-factory-"><strong>Validate the Data Factory</strong></h2>
<p>The final step is to set an appropriate activity period for the data factory pipelines. Modify each start and end with a time stamp starting at the current time and the end time for 6 hours later.</p>
<p>Refer section 8 (Configuring Pipelines) to update the start and end timestamps for each pipeline.</p>
<p>Again, the activity period indicates how long the data factory will be in service. Limiting the number above to 6 hours will limit the expense to your subscription. However, if you do plan on deploying the generator to an Azure Virtual Machine to have a longer running demo, then adjust the activity period length accordingly.</p>
<h2 id="-verifying-results-"><strong>Verifying Results</strong></h2>
<p>The Power BI dashboard initially has 12 values associated with it. These were placed into the database when we ran the script. Results from the pipeline will start to appear in just over 3 hours after starting the system up. You can ensure that the system is functioning as expected by verifying there are more results in the database table.</p>
<p>However, if the table is not receiving results in approximately 3.5 hours after starting the services, you can take the following steps to see where the issue might be, but also consider that the dashboards for the services update about every 15 minutes.</p>
<ol>
<li>In Azure portal, navigate to the event hub that was created and verify that it is receiving messages by viewing the dashboard.</li>
<li>Navigate to the stream analytics jobs that were created and verify that it is processing messages by viewing the dashboard.</li>
<li>Navigate to the Datasets in the data factory and for each dataset view the Recently updated slices.</li>
<li>In the case of steps 1 and 2 above, consider the operations logs for those services to determine what errors, if any.</li>
<li>For step 3, it is expected that the first run of the pipeline will produce an error as there is no data to process when it is initially started. Later runs should run successfully and if not details of the failure can be determined by digging into the failed time slice.</li>
</ol>
<h1 id="completion-and-clean-up">Completion and Clean up</h1>
<h3 id="after-completing-the-solution-and-evaluating-the-results-to-avoid-further-billing-on-your-subscription-we-recommend-that-you-stop-the-data-generator-asa-jobs-clean-up-any-ml-experiments-and-azure-web-services-from-ml-studio-">After completing the solution and evaluating the results, to avoid further billing on your subscription, we recommend that you stop the data generator, ASA jobs. Clean up any ML experiments and Azure web services from ML Studio.</h3>
<h3 id="finally-delete-the-resource-group-s-you-created-to-deploy-this-solution-template-this-will-remove-all-azure-resources-services-provisioned-under-the-resource-groups-">Finally delete the resource group(s) you created to deploy this solution template. This will remove all Azure resources (services) provisioned under the resource groups.</h3></body>
</html>
