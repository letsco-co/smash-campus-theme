<% with $Meeting %>
    <% include HeroSection BackgroundImageLink=$Image.Link, MeetingSection=true %>
    <div class="d-flex flex-column flex-md-row me-0 px-5 px-md-9 justify-content-between">
        <aside class="col-sm-12 col-md-4 col-xl-3 order-md-2 bg-white my-5 sticky-md-top p-4" style="height:fit-content;top: 120px;">
            <h2>Inscription</h2>
            <div>
            </div>
        </aside>
        <section class="col-sm-12 col-md-7 order-md-1">
            <% if $Description %>
                <% include WhiteBlock Title="Présantation", Data=$Description %>
            <% end_if %>
            <% if $Programs %>
                <% include WhiteBlock Title="Programme", ShouldLoop=true, Data=$Programs %>
            <% end_if %>
        </section>
    </div>
<% end_with %>
