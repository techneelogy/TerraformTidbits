locals {
    websites = {
        "MarketingSite" = {
            public-facing       = true
            needs-load-balancer = true
            url                 = "example.com"
        },
        "InternalHRPortal" = {
            public-facing       = false
            needs-load-balancer = true
            url                 = "hr.example.com"
        },
        "InternalSecurityTeamSite" = {
            public-facing       = false
            needs-load-balancer = false
            url                 = "example.com/securityteam"
        },
        "PublicAPIDeveloperPortal" = {
            public-facing       = true
            needs-load-balancer = true
            url                 = "api.example.com"
        },
        "InternalDocumentationSite" = {
            public-facing       = false
            needs-load-balancer = false
            url                 = "docs.example.com"
        },
        "InternalITSMTool" = {
            public-facing       = false
            needs-load-balancer = true
            url                 = "example.com/itsm"
        }
    }

    external-websites = { for ws_key, ws_val in local.websites : ws_key => ws_val if ws_val.public-facing == true }
    internal-websites = { for ws_key, ws_val in local.websites : ws_key => ws_val if ws_val.public-facing == false }
    internal-websites-with-lb = { for ws_key, ws_val in local.websites : ws_key => ws_val if ws_val.public-facing == false && ws_val.needs-load-balancer == true }
}

resource "null_resource" "internal-load-balancer" {
    for_each = local.internal-websites-with-lb
}