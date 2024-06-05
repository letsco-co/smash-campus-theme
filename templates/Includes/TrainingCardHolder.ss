<section class="px-lg-5  px-sm-3 mt-5 mb-2">
    <h2>$Heading2</h2>
    <% if $Trainings %>
        <div class="d-flex flex-wrap">
            <% loop $Trainings %>
                <% include TrainingCard %>
            <% end_loop %>
        </div>
    <% end_if %>
</section>
