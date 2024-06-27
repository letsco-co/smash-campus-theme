<% if $IncludeFormTag %>
    <form $AttributesHTML class="w-50">
<% end_if %>
<% if $Message %>
        <p id="{$FormName}_error" class="message $MessageType">$Message</p>
<% else %>
        <p id="{$FormName}_error" class="message $MessageType" style="display: none"></p>
<% end_if %>
    <div class="d-flex align-items-center">
        <fieldset class="w-100">
            <% if $Legend %><legend>$Legend</legend><% end_if %>
            <% loop $Fields %>
                $FieldHolder
            <% end_loop %>
            <div class="clear"><!-- --></div>
        </fieldset>

        <% if $Actions %>
            <div>
                <% loop $Actions %>
                    $Field
                <% end_loop %>
            </div>
        <% end_if %>
    </div>
<% if $IncludeFormTag %>
    </form>
<% end_if %>
