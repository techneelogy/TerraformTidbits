# References

<https://developer.hashicorp.com/terraform/language/expressions/for>

# Show information about a local variable:
    local.websites

# Construct a new, identical map based on an existing map:
    { for ws_key, ws_val in local.websites : ws_key => ws_val }

# Filter a local variable:
    { for ws_key, ws_val in local.websites : ws_key => ws_val if ws_val.public-facing == true }
    Set this to a new local variable - internal-websites

# Filter a local variable - again:
    { for ws_key, ws_val in local.websites : ws_key => ws_val if ws_val.public-facing == false }

# Construct a new, limited map based on a previous map:
    { for ws_key, ws_val in local.websites : ws_key => { url = ws_val.url } }

# Construct a set of strings based on a previous map:
    This will error, because we're not returning a set:
    [ for ws_key, ws_val in local.websites : ws_val.url ]

# Combining filtering with sets:
    [ for ws_key, ws_val in local.websites : ws_val.url if ws_val.public-facing == false ]

# Creating resources based off of filters