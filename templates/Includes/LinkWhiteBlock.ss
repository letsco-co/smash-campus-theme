<div class="bg-white py-4 ps-4 pe-5 my-5 training-info-card">
    <h2 class="toggle-header">
        <% include ToogleTitle ID=$ID, Title=$Title %>
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
