<div class="bg-white py-4 ps-4 pe-5 my-5 training-info-card">
    <h2 class="toggle-header">
        <a class="d-flex align-items-center text-dark link-underline link-underline-opacity-0" data-bs-toggle="collapse" href="#$ID" role="button" aria-expanded="false" aria-controls="$ID" onclick="this.classList.toggle('toggle-style')">
            <img class="me-4" src="$resourceURL('themes/smash-campus/images/list_style.png')">
            $Title
            <img class="ms-4" src="$resourceURL('themes/smash-campus/images/list_style.png')">
        </a>
    </h2>
    <div id="$ID" class="pe-5 mt-5 collapse show">
        <% if $ShouldLoop %>
            <ul>
                <% loop $Data %>
                    <li class="my-2">
                        <a href="$Link" download>
                            $Name
                        </a>
                    </li>
                <% end_loop %>
            </ul>
        <% else %>
            $Data
        <% end_if %>
    </div>
    <span class="horizontal-ornement"></span>
</div>
