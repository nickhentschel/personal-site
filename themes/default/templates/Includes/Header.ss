<header role="banner">
	<div class="header-links">
		<ul>
			<li class="left"><a href="/">$SiteConfig.Title</a> - $SiteConfig.Tagline</li>
			<% loop getAllHeaderLinks %>
				<li><a href="$Link" title="$LinkTitle" target="$Target">$LinkTitle</a></li>
			<% end_loop %>
		</ul>
	</div>
	<div class="logo">
		<h1 id="headline">NH</h1>
		<nav class="main-nav" role="navigation">
			<ul class="nav-links">
			<% loop Menu(1) %>
				<li>
					<a href="$Link" title="$Title.XML" class="nav-link $LinkingMode">$MenuTitle.XML</a>
				</li>
			<% end_loop %>
			</ul>
		</nav>
	</div>
</header>