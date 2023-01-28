locals {
    websites = {
        "MarketingSite" = {
            public-facing = true
            url = "example.com"
        },
        "InternalHRPortal" = {
            public-facing = false
            url = "hr.example.com"
        },
        "InternalSecurityTeamSite" = {
            public-facing = false
            url = "example.com/securityteam"
        },
        "PublicAPIDeveloperPortal" = {
            public-facing = true
            url = "api.example.com"
        },
        "InternalDocumentationSite" = {
            public-facing = false
            url = "docs.example.com"
        },
        "InternalITSMTool" = {
            public-facing = false
            url = "example.com/itsm"
        }
    }
}