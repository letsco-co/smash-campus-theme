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
            <div class="bg-white py-4 ps-4 pe-5 my-5 training-info-card">
                <h2>Intervenants</h2>
                <div class="pe-5 mt-5">
                    <div id="glideSpeakers" class="glide px-5 px-md-9 py-4">
                        <div class="glide__track" data-glide-el="track">
                            <ul class="glide__slides">
                                <% loop $Speakers %>
                                    <li class="my-2 p-3 speaker-card d-flex flex-column justify-content-evenly align-items-center gap-3" style="list-style: none; width: 220px">
                                        $Image
                                        <p class="mb-0">$Title.UpperCase</p>
                                        <p class="mb-0">$Function</p>
                                    </li>
                                <% end_loop %>
                            </ul>
                        </div>
                        <div class="glide__bullets" data-glide-el="controls[nav]">
                            <% loop $Speakers %>
                                <button class="glide__bullet" data-glide-dir="=$Pos"></button>
                            <% end_loop %>
                        </div>
                        <div class="glide__arrows" data-glide-el="controls">
                            <button class="glide__arrow glide__arrow--left bg-secondary bg-primary-hover text-dark border-0" data-glide-dir="<"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-left" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8"/>
                            </svg></button>
                            <button class="glide__arrow glide__arrow--right bg-secondary bg-primary-hover text-dark border-0" data-glide-dir=">"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8"/>
                            </svg></button>
                        </div>
                    </div>
                </div>
                <span class="horizontal-ornement"></span>
            </div>
            <% if $Documents %>
                <% include LinkWhiteBlock Title="Document", ShouldLoop=true, Data=$Documents %>
            <% end_if %>

        </section>
    </div>
    <div id="glideImages" class="glide px-5 px-md-9 py-4">
        <div class="glide__track" data-glide-el="track">
            <ul class="glide__slides">
                <% loop $Images %>
                    <li class="glide__slide">$Me
                <% end_loop %>
            </ul>
        </div>
        <div class="glide__bullets" data-glide-el="controls[nav]">
            <% loop $Images %>
            <button class="glide__bullet" data-glide-dir="=$Pos"></button>
            <% end_loop %>
        </div>
        <div class="glide__arrows" data-glide-el="controls">
            <button class="glide__arrow glide__arrow--left bg-secondary bg-primary-hover text-dark border-0" data-glide-dir="<"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-left" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8"/>
            </svg></button>
            <button class="glide__arrow glide__arrow--right bg-secondary bg-primary-hover text-dark border-0" data-glide-dir=">"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8"/>
            </svg></button>
        </div>

    </div>
<% end_with %>
