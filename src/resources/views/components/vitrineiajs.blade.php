<script type="text/javascript">
    const public_key = '{{ config('vitrineia.PUB_KEY') }}';

    // Here You can type your custom JavaScript
    window.vitrineia = {
        'pubkey': public_key,
        'api_url': "//{{ config('vitrineia.API_URL') }}"
    }

    var url = "//{{ config('vitrineia.JS_SCRIPT') }}";

    var hf1 = document.createElement('script');
    hf1.type = 'text/javascript';
    hf1.async = true;
    hf1.id = 'hintifyLoader';
    hf1.src = url;

    document.getElementsByTagName('head')[0].appendChild(hf1);
</script>
