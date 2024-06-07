<div $AttributesHTML>
    <div class="d-flex">
        <% loop $Options %>
            <div class="form-check me-4 $Class" role="$Role">
                <input class="form-check-input" id="$ID" class="radio" name="$Name" type="radio" value="$Value"<% if $isChecked %> checked<% end_if %><% if $isDisabled %> disabled<% end_if %> <% if $Up.Required %>required<% end_if %>>
                <label class="form-check-label" for="$ID">
                    $Title
                </label>
            </div>
        <% end_loop %>
    </div>
</div>
