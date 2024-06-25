<section class="p-3 p-md-10 mb-2">
    <div class="<% if $OnRight %>row<% end_if %> align-items-center justify-content-between">
        <div class="col-12 <% if $OnRight %>col-md-6<% end_if %>">
            <% if $ShowTitle %>
                <h2>$Title</h2>
            <% end_if %>
            $Content
        </div>
        <div class="p-6 col-12 <% if $OnRight %>col-md-5<% end_if %> row gap-3">
            <% loop $Blocks %>
                <div class="bg-white py-4 ps-4 pe-2 my-5 training-info-card col-12 col-md-5 col-xl-3">
                    <% if $Title %>
                        <h2>
                            $Title
                        </h2>
                    <% end_if %>
                    <% if $Content || $Link %>
                        <div class="pe-5 mt-5 d-flex flex-column">
                            <% if $Content %>
                                <p>$Content</p>
                            <% end_if %>
                            <% if $Link %>
                                <a href="$Link.URL" >$Link.Title <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
                                    <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8"/>
                                </svg></a>
                            <% end_if %>
                        </div>
                    <% end_if %>
                    <span class="horizontal-ornement"></span>
                </div>

            <% end_loop %>
        </div>
    </div>
</section>
