<div class="bg-white py-4 ps-4 pe-5 my-5 training-info-card">
    <h2>
        $Title
    </h2>
    <div id="$ID" class="pe-5 mt-5 collapse show">
        <ul>
            <% loop $ProgramNice %>
                <li class="my-2 my-4" style="list-style: none">
                    $Title
                </li>
                <% if $Children %>
                    <ul class="ms-4 mt-3">
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
</div>
