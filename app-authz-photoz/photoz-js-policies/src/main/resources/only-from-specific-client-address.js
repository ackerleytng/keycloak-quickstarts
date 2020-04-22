var contextAttributes = $evaluation.getContext().getAttributes();

if (contextAttributes.containsValue('kc.client.network.ip_address', '127.0.0.1')) {
    print(contextAttributes.getValue('kc.client.network.ip_address').asString(0));
    $evaluation.grant();
}
