replicas = ctx.resource_list["functionConfig"]["data"]["replicas"]
for r in ctx.resource_list["items"]:
    if r["apiVersion"] == "apps/v1" and r["kind"] == "Deployment":
        r["spec"]["replicas"] = replicas
