<style>
    .bg-img-gradient {
        background: linear-gradient(180deg, rgba(141,220,191,0.85) 0%, rgba(27,173,202,0.85) 100%), url("$BackgroundImageLink");
        background-repeat: no-repeat;
        background-position: center;
        background-size: cover;
    }
</style>
<section style="min-height: 435px" class="bg-img-gradient d-flex flex-column justify-content-center p-3 p-md-10 mb-2">
    <% if $TrainingsSection %>
        <% include TrainingsHeroSection %>
    <% end_if %>
    <% if $DomainSection %>
        <% include DomainHeroSection %>
    <% end_if %>
    <% if $TrainingSection %>
        <% include TrainingHeroSection %>
    <% end_if %>
</section>
