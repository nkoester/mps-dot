The Dot Language

* [x] graph 	: 	[ strict ] (graph | digraph) [ ID ] '{' stmt_list '}'
* [x] stmt_list 	: 	[ stmt [ ';' ] stmt_list ]
* [x] stmt 	: 	node_stmt
* 	| 	edge_stmt
* 	| 	attr_stmt
* 	| 	ID '=' ID
* 	| 	subgraph
* [x] attr_stmt 	: 	(graph | node | edge) attr_list
* [x] attr_list 	: 	'[' [ a_list ] ']' [ attr_list ]
* [x] a_list 	: 	ID '=' ID [ (';' | ',') ] [ a_list ]
* [x] edge_stmt 	: 	(node_id | subgraph) edgeRHS [ attr_list ]
* [x] edgeRHS 	: 	edgeop (node_id | subgraph) [ edgeRHS ]
* [x] edgeop : ( -> | -- )
* [x] node_stmt 	: 	node_id [ attr_list ]
* [x] node_id 	: 	ID [ port ]
* [x] port 	: 	':' ID [ ':' compass_pt ]
* 	| 	':' compass_pt
* [x] subgraph 	: 	[ subgraph [ ID ] ] '{' stmt_list '}'
* [x] compass_pt 	: 	(n | ne | e | se | s | sw | w | nw | c | _)

