var context = $evaluation.context;
var identity = context.identity;
var permission = $evaluation.permission;
var resource = permission.resource;

print(resource.owner);
print(identity.id);

if (resource.owner == identity.id) {
    $evaluation.grant();
}
