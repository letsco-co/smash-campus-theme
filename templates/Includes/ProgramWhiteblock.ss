<div class="bg-white py-4 ps-4 pe-5 my-5 training-info-card">
    <h2 class="toggle-header">
        <% include ToogleTitle ID=$ID, Title=$Title %>
    </h2>
    <div id="$ID" class="pe-5 mt-5 collapse show">
        <ul>
            <% loop $ProgramNice %>
                <li class="my-2 toggle-header-close my-4" style="list-style: none">
                    <% include ToogleTitle ID=$generateURLSegment %>
                </li>
                <% if $Children %>
                    <ul id="$generateURLSegment" class="ms-4 mt-3 collapse">
                        <% loop $Children %>
                        <li class="my-1" style="list-style: none">
                            $Title
                        </li>
                        <% end_loop %>
                    </ul>
                <% end_if %>
            <% end_loop %>
        </ul>
    </div>
    <span class="horizontal-ornement"></span>
</div>
