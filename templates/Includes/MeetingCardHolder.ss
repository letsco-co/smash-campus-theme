<section class="px-3 px-md-10 mt-5 mb-2">
    <h2>$Heading2</h2>
    <% if $Meetings %>
        <div class="d-flex flex-wrap">
            <% loop $Meetings %>
                <% include MeetingCard %>
            <% end_loop %>
        </div>
    <% end_if %>
</section>
