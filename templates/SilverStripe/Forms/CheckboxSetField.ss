<div $AttributesHTML>
    <div class="d-flex flex-wrap">
        <% if $Options.Count %>
            <% loop $Options %>
                <div class="form-check me-4 $Class" role="$Role">
                    <input class="form-check-input checkbox" type="checkbox" name="$Name" id="$ID" value="$Value.ATT"<% if $isChecked %> checked="checked"<% end_if %><% if $isDisabled %> disabled="disabled"<% end_if %> >
                    <label class="form-check-label" for="$ID">
                        $Title
                    </label>
                </div>
            <% end_loop %>
        <% else %>
            <li><%t SilverStripe\\Forms\\CheckboxSetField_ss.NOOPTIONSAVAILABLE 'No options available' %></li>
        <% end_if %>
    </div>
</div>
