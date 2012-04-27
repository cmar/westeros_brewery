Deface::Override.new :virtual_path => "spree/layouts/spree_application",
                     :name => "header_override",
                     :replace_contents => "header",
                     :text => %q{
  <figure id="logo" class="columns alpha six" data-hook>
    <a href="/"><img alt="Westeros Brewery" src="/assets/store/westeros-brewery.png" /></a>
  </figure>

  <nav class="columns alpha omega sixteen">
    <ul id="main-nav-bar" class="inline clearfix" data-hook>
      <li><a href="/">Home</a></li>
      <li><a href="/about">About</a></li>
      <li class="right"><a href="/account">Account</a></li>
      <li class="right"><a href="/cart">Cart</a></li>
    </ul>
  </nav>
}

Deface::Override.new :virtual_path => "spree/layouts/spree_application",
                     :name => "footer_override",
                     :replace_contents => "footer",
                     :text => %q{
  <div id="footer-left" class="alpha" data-hook>
          <p class="disclaimer">The Westeros Brewery is fictional as are the products. This store is to be used as reference material for constructing your own store.</p>
          <p>Powered by <a href="http://spreecommerce.com/"><img src="/assets/store/logo-spree.png"></a></p>
          <p>Design by <a href="http://thebiggerdesign.com/"><img src="/assets/store/logo-tbd.png"></a></p>
          <p>SONG OF ICE AND FIRE by George R. R. Martin</p>
        </div>
  <div id="footer-right" class="columns omega eight" data-hook><nav id="footer-pages"><ul></ul></nav></div>
}