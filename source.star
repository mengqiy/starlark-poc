# set the namespace on all resources
for resource in ctx.resource_list["items"]:
  # mutate the resource
  resource["metadata"]["namespace"] = "prod"
