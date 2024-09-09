<style>
    .bg-img-gradient {
        background: url("$BackgroundImageLink");
        background-repeat: no-repeat;
        background-position: center;
        background-size: cover;
    }
</style>
<section style="min-height: 435px" class="bg-img-gradient d-flex flex-column justify-content-center p-3 p-md-10 mb-2">
    <% if $TrainingsSection %>
        <% include TrainingsHeroSection %>
    <% end_if %>
    <% if $PageSection %>
        <% include PageHeroSection %>
    <% end_if %>
    <% if $TrainingSection %>
        <% include TrainingHeroSection %>
    <% end_if %>
    <% if $MeetingSection %>
        <% include MeetingHeroSection %>
    <% end_if %>
</section>
