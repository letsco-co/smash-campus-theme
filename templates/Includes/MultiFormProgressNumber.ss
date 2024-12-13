<ul class="stepIndicator d-flex ps-0 justify-content-evenly current-$CurrentStep.class" style="list-style: none">
    <% loop $AllStepsLinear %>
        <li class="
        <% if $Completed || $LinkingMode = 'current' %>
            bg-secondary
        <% else %>
            border
        <% end_if %>
        py-1 px-2 d-flex justify-content-center align-items-center rounded-1
        $ClassName
        <% if $LinkingMode %> $LinkingMode<% end_if %>
        <% if $FirstLast %> $FirstLast<% end_if %>
        <% if $ExtraClasses %> $ExtraClasses<% end_if %>"
        style="width: 30px; height: 30px;">
            $Pos
        </li>
    <% end_loop %>
</ul>
