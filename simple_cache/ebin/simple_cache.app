{application,simple_cache,[
	{description,"A simple caching system"},
	{vsn,"0.1.0"},
	{modules,[sc_sup,sc_app]},
	{registered,[sc_sup]},
	{applications,[kernel,stdlib]},
	{mod,{sc_app,[]}}
]}.