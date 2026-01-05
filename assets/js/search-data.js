---
---
(function() {
  var docs = [];
  {% assign search_docs = site.posts %}
  {% for collection in site.collections %}
    {% if collection.output == true and collection.label != "posts" %}
      {% assign search_docs = search_docs | concat: collection.docs %}
    {% endif %}
  {% endfor %}
  {% assign doc_index = 0 %}
  {% for doc in search_docs %}
    {% if doc.title and doc.search_exclude != true and doc.url != "/404.html" %}
      docs.push({
        id: {{ doc_index }},
        title: {{ doc.title | jsonify }},
        layout: {{ doc.layout | default: doc.collection | jsonify }},
        content: {{ doc.content | strip_html | strip_newlines | jsonify }},
        link: {{ doc.url | relative_url | jsonify }},
        snippet: {{ doc.description | default: doc.excerpt | default: doc.content | strip_html | strip_newlines | truncate: 180 | jsonify }}
      });
      {% assign doc_index = doc_index | plus: 1 %}
    {% endif %}
  {% endfor %}
  window.siteDocs = docs;
})();
