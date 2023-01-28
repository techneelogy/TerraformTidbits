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
}

# resource "null_resource" "some_resource" { }