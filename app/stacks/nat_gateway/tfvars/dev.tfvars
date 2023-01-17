# Required variables:
# tags                       = [...] # map(any)
connectivity_type          = "private"
private_nat_gw_subnet_id   = <%= output('vpc.subnet_id') %>
# allocation_id            = <%= output('vpc.subnet_id') %>
# public_nat_gw_subnet_id  = <%= output('vpc.subnet_id') %>

