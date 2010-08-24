---
layout: nil
---
<?xml version="1.0" encoding="utf-8"?>
<feed xmlns="http://www.w3.org/2005/Atom">
	<title>Scott Tesoriere</title>
	<link href="http://tesoriere.com/atom.xml" rel="self"/>
	<link href="http://tesoriere.com/"/>
	<updated>{{ site.time | date_to_xmlschema }}</updated>
	<id>http://tesoriere.com</id>
	<author>
		<name>Scott Tesoriere</name>
		<email>scott@tesoriere.com</email>
	</author>
	{% for post in site.posts %}
	<entry>
		<title>{{ post.title }}</title>
		<link href="http://tesoriere.com{{ post.url }}"/>
		<updated>{{ post.date | date_to_xmlschema }}</updated>
		<id>http://cartera.me{{ post.id }}</id>
		<content type="html">{{ post.content | xml_escape }}</content>
	</entry>
	{% endfor %}
</feed>