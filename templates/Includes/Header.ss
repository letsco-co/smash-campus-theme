<header>
    <nav class="navbar navbar-expand-lg bg-white py-3 px-lg-5">
        <div class="container-fluid ">
            <a class="navbar-brand" href="$BaseHref">
                <img src="$resourceURL('themes/smash-campus/images/logo.png')" alt="SMASH Campus">
            </a>
            <button class="navbar-toggler border-white" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <% loop $Menu(1) %>
                        <li class="nav-item mx-2">
                            <a class="<% if $LinkingMode == "current" %>active<% end_if %> <% if $FirstLast == "last" %>bg-primary rounded-1 text-black bg-primary-hover<% end_if %> px-2 nav-link"href="$Link" title="$Title.XML">$MenuTitle.XML</a>
                        </li>
                    <% end_loop %>
                </ul>
            </div>
        </div>
    </nav>
</header>
